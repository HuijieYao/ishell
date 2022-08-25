package com.ishell.service;

import com.ishell.entity.Identify;
import com.ishell.mapper.IdentifyMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.tensorflow.*;
import org.tensorflow.types.UInt8;

import javax.annotation.Resource;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

@Service
public class IdentifyService {
    @Resource
    IdentifyMapper identifyMapper;
    @Resource
    RedisTemplate<String, Object> redisTemplate;

    /**
     * 识别
     *
     * @param path 图片路径
     */
    public Map<String, Object> identify(String path) {
        String SAVE_MODEL_PATH = "E:/Workspace/IDEA/ishell/src/main/resources/model";
//        String SAVE_MODEL_PATH = "/home/springboot/ishell/model";
        SavedModelBundle model = SavedModelBundle.load(SAVE_MODEL_PATH, "serve"); // 加载模型
        byte[] data = readAllBytesOrExit(Paths.get(path)); // 获取图片的byte
        Map<String, Object> map = new HashMap<>();
        Tensor<Float> imageTensor = constructAndExecuteGraphToNormalizeImage(data); // byte转Tensor<Float>
        try {
            Tensor<?> prob = model.session().runner().feed("serving_default_input_1:0", imageTensor).fetch("StatefulPartitionedCall:0").run().get(0);//开始识别
            float[][] detection_classes = new float[1][30];//因为有30个类别
            prob.copyTo(detection_classes);//复制一下结果
            float maxClass = 0;//最可能的那个类
            int maxClassIndex = 0;//最可能的那个类的下标
            for (int i = 0; i < 30; i++) {
                if (maxClass < detection_classes[0][i]) {
                    maxClass = detection_classes[0][i];
                    maxClassIndex = i;
                }
            }
            // 分别是训练模型时的名字
            List<Integer> CLASSList = new ArrayList<>(Arrays.asList(2700, 814, 1563, 4043, 1368, 3988, 9778, 6695, 3814, 5157, 8987, 3947, 1635, 719, 5142, 6601, 4497, 7125, 8274, 2135, 5562, 6775, 9133, 1869, 6586, 8620, 2276, 2571, 9085, 5823));
            map.put("id", CLASSList.get(maxClassIndex));
            map.put("prob", maxClass * 100);
        } catch (Exception e) {
            Logger logger = LoggerFactory.getLogger(IdentifyService.class);
            logger.error(e.toString());
        } finally {
            model.close();
            imageTensor.close();
        }
        return map;//返回学名和相似率
    }

    /**
     * 插入识别历史数据
     */
    public Integer insert_history_identify(Identify identify) {
        return identifyMapper.insert_history_identify(identify);
    }

    public List<String> GetPath(String string) {
        List<Object> redisList = redisTemplate.opsForList().range("Path" + string, 0, -1);
        List<String> pathList = new ArrayList<>();
        assert redisList != null;
        if (redisList.size() == 0) {
            Map<String, String> shellfish = identifyMapper.GetPath(string);
            for (int i = 1; i <= shellfish.size(); i++) {
                String s = shellfish.get(String.valueOf(i));
                if (!s.equals("")) pathList.add(s);
                if (s.equals(string)) break;
            }
            for (String path : pathList) {
                redisTemplate.opsForList().rightPush("Path" + string, path);
            }
        } else {
            for (Object path : redisList) {
                pathList.add((String) path);
            }
        }
        return pathList;
    }

    /**
     * 处理数据
     *
     * @param path
     * @return
     */
    private static byte[] readAllBytesOrExit(Path path) {
        try {
            return Files.readAllBytes(path);
        } catch (IOException e) {
            System.err.println("Failed to read [" + path + "]: " + e.getMessage());
            System.exit(1);
        }
        return null;
    }

    private Tensor<Float> constructAndExecuteGraphToNormalizeImage(byte[] data) {
        try (Graph g = new Graph()) {
            GraphBuilder b = new GraphBuilder(g);
            final int H = 64;
            final int W = 64;
            final float mean = 128f;
            final float scale = 255f;
            final Output<String> input = b.constant("input", data);
            final Output<Float> output = b.div(b.sub(b.resizeBilinear(b.expandDims(b.cast(b.decodeJpeg(input, 3), Float.class), b.constant("make_batch", 0)), b.constant("size", new int[]{H, W})), b.constant("mean", mean)), b.constant("scale", scale));
            try (Session s = new Session(g)) {
                return s.runner().fetch(output.op().name()).run().get(0).expect(Float.class);
            } finally {
                g.close();
            }
        }
    }

    public List<Identify> GetHistory(Integer userId) {
        return identifyMapper.GetHistory(userId);
    }

    static class GraphBuilder {
        GraphBuilder(Graph g) {
            this.g = g;
        }
        Output<Float> div(Output<Float> x, Output<Float> y) {
            return binaryOp("Div", x, y);
        }
        <T> Output<T> sub(Output<T> x, Output<T> y) {
            return binaryOp("Sub", x, y);
        }
        <T> Output<Float> resizeBilinear(Output<T> images, Output<Integer> size) {
            return binaryOp3("ResizeBilinear", images, size);
        }
        <T> Output<T> expandDims(Output<T> input, Output<Integer> dim) {
            return binaryOp3("ExpandDims", input, dim);
        }
        <T, U> Output<U> cast(Output<T> value, Class<U> type) {
            DataType dtype = DataType.fromClass(type);
            return g.opBuilder("Cast", "Cast").addInput(value).setAttr("DstT", dtype).build().<U>output(0);
        }
        Output<UInt8> decodeJpeg(Output<String> contents, long channels) {
            return g.opBuilder("DecodeJpeg", "DecodeJpeg").addInput(contents).setAttr("channels", channels).build().<UInt8>output(0);
        }
        <T> Output<T> constant(String name, Object value, Class<T> type) {
            try (Tensor<T> t = Tensor.<T>create(value, type)) {
                return g.opBuilder("Const", name).setAttr("dtype", DataType.fromClass(type)).setAttr("value", t).build().<T>output(0);
            }
        }

        Output<String> constant(String name, byte[] value) {
            return this.constant(name, value, String.class);
        }

        Output<Integer> constant(String name, int value) {
            return this.constant(name, value, Integer.class);
        }

        Output<Integer> constant(String name, int[] value) {
            return this.constant(name, value, Integer.class);
        }

        Output<Float> constant(String name, float value) {
            return this.constant(name, value, Float.class);
        }

        private <T> Output<T> binaryOp(String type, Output<T> in1, Output<T> in2) {
            return g.opBuilder(type, type).addInput(in1).addInput(in2).build().<T>output(0);
        }

        private <T, U, V> Output<T> binaryOp3(String type, Output<U> in1, Output<V> in2) {
            return g.opBuilder(type, type).addInput(in1).addInput(in2).build().<T>output(0);
        }

        private Graph g;
    }
}
