<template>
  <div class="map_body">
    <div class="map_checkBox">
      <div class="shellDataBox">
        <div class="searchBox">
          <h3>选择想要查询的贝类</h3>
          <el-autocomplete
            v-model="searchText"
            placeholder="请输入贝类中文名或学名"
            :fetch-suggestions="querySearch"
          >
            <template #append>
              <el-button :icon="null" @click="searchShell()"></el-button>
            </template>
          </el-autocomplete>
        </div>
        <el-scrollbar class="scrollbar">
          <div>
            <el-checkbox
              v-for="item in showShellData"
              v-model="item.check"
              :key="item.id"
              :label="item.id"
              @change="CheckShellData(item)"
              :disabled="disable"
              border
              class="shellData"
              size="large"
            >{{ item.name }}</el-checkbox>
          </div>
        </el-scrollbar>
        <el-pagination
          v-model:currentPage="currentPage"
          :page-size="pageSize"
          pager-count="4"
          small
          background
          layout="prev, pager, next, jumper"
          :total="maxShellDataLen"
          class="page"
        ></el-pagination>
      </div>
      <div class="checkDataBox">
        <div class="searchBox">
          <h3>已选择的贝类</h3>
          <h3 style="margin-bottom: 0;">({{ checkShellData.length }}/9条)</h3>
        </div>
        <div class="checkData">
          <el-checkbox
            v-for="item in checkShellData"
            v-model="item.check"
            :key="item.id"
            :label="item.id"
            @change="CheckShellData(item)"
            border
            class="shellData"
            size="large"
          >{{ item.name }}</el-checkbox>
        </div>
        <el-button class="primaryButton" type="primary" @click="SubmitCheckData()">提交</el-button>
      </div>
    </div>
    <div class="map">
      <div id="china_map"></div>
      <!--图例-->
      <div class="legendBox">
        <div class="legend" v-for="item in showMapPlace" :key="item.id">
          <div class="legend-icon" :style="{'background-color':item.color}"></div>
          <div>{{ item.name }}</div>
        </div>
      </div>
      <!--地区数据展示-->
      <el-card
        v-if="info.name!=='暂无数据'"
        class="analysis-result"
        shadow="hover"
        v-loading="resLoading"
      >
        <template #header>
          <span>{{ info.name }}</span>
        </template>
        <p v-if="info.shells.length === 0">暂无数据</p>
        <el-scrollbar height="400px">
          <el-descriptions :column="1" v-for="shell in info.shells" :key="shell">
            <el-descriptions-item label="名称">{{ shell.name }} {{ shell.sname }}</el-descriptions-item>
            <el-descriptions-item label="主要分布地区">{{ shell.place }}</el-descriptions-item>
          </el-descriptions>
        </el-scrollbar>
      </el-card>
    </div>
  </div>
</template>

<script>
import quanguo from "@/assets/map/quanguo.json";
import { postRequest } from "@/utils/api";
import { getRequest } from "@/utils/api";

echarts.registerMap('quanguo', quanguo)

export default {
  name: "ChinaMap",
  data() {
    return {
      resLoading: false,
      info: {
        name: "尚未选择",
        shells: []
      },
      //当前要有颜色的地图位置
      showMapPlace: [],
      isSearch: false,
      callback: [],
      //已选中的项
      checkShellData: [],
      //有多少种贝类
      maxShellDataLen: 0,
      pageSize: 44,
      currentPage: 1,
      disable: false,
      //{id:,name:}
      showShellData: [],
      searchText: "",
      myChart: {},
      options: {
        tooltip: {
          alwaysShowContent: true,
          triggerOn: "mousemove",//鼠标移动时显示
          enterable: true,
          confine: true,
          position: [0, 0],//提示框显示位置，相对于地图显示容器
          backgroundColor: "rgba(38,173,226,0.59)",//提示框底色
          borderColor: "#030303",//提示框边框颜色
          padding: 5,//提示框内边距
          textStyle: {
            color: "#19191a",
            fontStyle: "oblique",//字体显示风格
            fontSize: 20,//字体大小
            textShadowColor: "#292a2b",
            textShadowBlur: 1,
          },
          formatter: ((params) => {
            let placeName = params.name;//鼠标选择的地域名字
            let result = '<div><p style="left: 0;color:#1348e8;font-size: 30px">' + placeName + '</p>' + '<p>所拥有的贝类:</p>';
            //查询地域所拥有的贝类Id
            for (let i = 0; i < this.showMapPlace.length; i++) {
              for (let j = 0; j < this.showMapPlace[i].place.length; j++) {
                if (this.showMapPlace[i].place[j] === placeName) {
                  result += '<p style="margin: 0;font-size: 17px;">' + this.showMapPlace[i].name + '</p>';
                  break;
                }
              }
            }
            result += '</div>'
            return result;
          })
        },
        series: [
          {
            type: "map",
            map: 'quanguo',
            zoom: 1.2,
            roam: true,
            lable: {
              show: true,
              fontSize: "14",
              color: "rgba(0,0,0,0.7)",
            },
            itemStyle: {
              shadowBlur: 5,
              shadowColor: 'rgba(0, 0, 0, 0.2)',
              borderColor: "rgba(0, 0, 0, 0.2)",
            },
            emphasis: {
              itemStyle: {
                areaColor: "#f2d5ad",
                shadowOffsetX: 0,
                shadowOffsetY: 0,
                borderWidth: 0,
              }
            },
            data: []
          }
        ],
      },
      provinces: [
        {
          name: "北京市",
        },
        {
          name: "天津市",
        },
        {
          name: "上海市",
        },
        {
          name: "重庆市",
        },
        {
          name: "河北省",
        },
        {
          name: "河南省",
        },
        {
          name: "云南省",
        },
        {
          name: "辽宁省",
        },
        {
          name: "黑龙江省",
        },
        {
          name: "湖南省",
        },
        {
          name: "安徽省",
        },
        {
          name: "山东省",
        },
        {
          name: "新疆维吾尔自治区",
        },
        {
          name: "江苏省",
        },
        {
          name: "浙江省",
        },
        {
          name: "江西省",
        },
        {
          name: "湖北省",
        },
        {
          name: "广西壮族自治区",
        },
        {
          name: "甘肃省",
        },
        {
          name: "山西省",
        },
        {
          name: "内蒙古自治区",
        },
        {
          name: "陕西省",
        },
        {
          name: "吉林省",
        },
        {
          name: "福建省",
        },
        {
          name: "贵州省",
        },
        {
          name: '广东省',
        },
        {
          name: "青海省",
        },
        {
          name: "西藏自治区",
        },
        {
          name: "四川省",
        },
        {
          name: "宁夏省",
        },
        {
          name: "海南省",
        },
        {
          name: "台湾省",
        },
        {
          name: "香港特别行政区",
        },
        {
          name: "澳门特别行政区",
        }]
    };
  },
  watch: {
    currentPage(newPage) {
      //在这里发送后端获取下一页所需要的数据
      this.showShellData.length = 0;
      this.GetShellData(newPage);
    }
  },
  methods: {
    test() {
      const that = this;
      echarts.registerMap('quanguo', quanguo);
      that.myChart = echarts.init(document.getElementById("china_map"));
      that.myChart.setOption(that.options);
      that.myChart.on('click', function (params) {
        that.sendMapInfo(params.name);
      });
    },
    sendMapInfo(data) {
      this.resLoading = true;
      this.info.name = data;
      if (data.substring(data.length - 1) === "省" || data.substring(data.length - 1) === "市") {
        data = data.slice(0, data.length - 1);
      }
      postRequest("/shellfish/getMapInfo?place=" + data).then(resp => {
        this.info.shells = resp.data;
        this.resLoading = false;
      });
    },
    //获取第几页的贝类数据
    GetShellData(page) {
      getRequest("/shellfish/mapShell?page=" + page).then(response => {
        //如果这页中的数据有些已经被选中了，那么标记为true
        for (let i = 0; i < response.data.length; i++) {
          if (this.checkList(response.data[i].id, this.checkShellData) !== -1) {
            response.data[i].check = true;
          }
        }
        //赋值
        this.showShellData = response.data;
      })
    },
    //获取贝类条数
    GetMaxShellDataLen() {
      getRequest("/shellfish/count").then(response => {
        this.maxShellDataLen = response.data;
      })
    },
    //提交已选择的数据之后，返回地理位置，然后显示到地图上
    SubmitCheckData() {
      postRequest("/shellfish/getPlace", this.checkShellData).then((response) => {
        //获得地理位置
        this.showMapPlace = response.data;//[id:,name:,color:,place:[]]
        //显示到地图上
        this.ShowInMap();
        //初始化地图
        this.initEchartMap();
      })
    },
    //在地图上显示
    ShowInMap() {
      //清空provinces中的颜色设置
      for (let i = 0; i < this.provinces.length; i++) {
        this.provinces[i].itemStyle = {};
      }
      //统计需要高亮的省份，并且构造颜色[{placeName:,color:[]}]
      let map = new Map();
      for (let i = 0; i < this.showMapPlace.length; i++) {
        for (let j = 0; j < this.showMapPlace[i].place.length; j++) {
          if (map.has(this.showMapPlace[i].place[j])) {//如果已经有这个城市了,就加入这个贝类的颜色
            let arr = map.get(this.showMapPlace[i].place[j]);
            arr.push(this.showMapPlace[i].color);
            map.set(this.showMapPlace[i].place[j], arr);
          } else {//没有这个城市就加入这个颜色
            map.set(this.showMapPlace[i].place[j], [this.showMapPlace[i].color]);
          }
        }
      }
      //使用map更新provinces,然后显示到地图上
      for (let i = 0; i < this.provinces.length; i++) {
        if (map.has(this.provinces[i].name)) {//这个省份需要高亮显示
          let colors = map.get(this.provinces[i].name);
          let colorStops = [];
          for (let j = 0; j < colors.length; j++) {//构造颜色序列
            colorStops.push({ offset: j * (1 / colors.length), color: colors[j] });
          }
          //更新provinces省份颜色
          this.provinces[i].itemStyle = {};
          this.provinces[i].itemStyle.areaColor = {};
          this.provinces[i].itemStyle.areaColor.colorStops = [];
          this.provinces[i].itemStyle.areaColor.colorStops = colorStops;
        }
      }
    },
    //更新多选框选中区中的值
    CheckShellData(shellData) {
      //如果check是true 加入到列表中,否则就去除
      if (shellData.check === true) {
        this.checkShellData.push(shellData);
      } else {
        this.checkShellData = this.deleteList(shellData.id, this.checkShellData);
        //如果showShellData中有这么个id，则将其check设为false
        let index = this.checkList(shellData.id, this.showShellData);
        if (index !== -1) {
          this.showShellData[index].check = false;
        }
      }
      this.disable = this.checkShellData.length === 9;
    },
    //搜索贝类
    searchShell() {
      console.log(this.searchText);
      if (this.searchText !== "")
        getRequest("/shellfish/search?string=" + this.searchText).then(response => {
          let res = [];
          //如果数据超过22条，则只显示22条
          for (let i = 0; i < response.data.length && i < 22; i++) {
            if (this.checkList(response.data[i].id, this.checkShellData) !== -1) {
              response.data[i].check = true;
            }
            res.push(response.data[i]);
          }
          //赋值
          this.showShellData = res;
        })
    },
    querySearch(queryString, callback) {
      //如果在上次获得记录后没进行过搜索操作，则直接返回上次获得的记录
      if (!this.isSearch) {
        //发送请求查询后端浏览记录
        let userId = sessionStorage.getItem("UserID");
        if (userId === undefined || userId === null)
          userId = -1;
        getRequest("/shellfish/getS_History?userId=" + userId).then(resp => {
          this.callback = [];
          for (let i = 0; i < resp.data.length; i++) {
            this.callback.push({ value: resp.data[i] });
          }
          this.isSearch = true;
          callback(this.callback);
        })
      } else {
        callback(this.callback);
      }
    },
    initEchartMap() {
      this.setEchartOption();
      this.myChart = echarts.init(document.getElementById("china_map"));
      this.myChart.setOption(this.options);
    },
    //加载省份
    setEchartOption() {
      this.options.series[0]["data"] = this.provinces;
    },
    deleteList(id, list) {//通过id删除数组中一条数据
      for (let index = list.length - 1; index >= 0; index--) {
        if (list[index] && list[index].id === id) {
          list.splice(index, 1)
        }
      }
      return list
    },
    checkList(id, list) {//查看id是否再列表中
      for (let index = list.length - 1; index >= 0; index--) {
        if (list[index] && list[index].id === id) {
          return index;
        }
      }
      return -1;
    }
  },
  created() {
    //获取总共有多少条贝类数据
    this.GetMaxShellDataLen();
    //获取第一页的贝类数据
    this.GetShellData(1);
    //等待容器准备好了，再初始化地图
    setTimeout(() => {
      this.initEchartMap();
    }, 1000)
  },
  mounted() {
    this.$nextTick(() => {
      this.test();
    });
  },
  beforeUnmount() {
    this.myChart.dispose();
  },
};
</script>

<style scoped>
.analysis-result {
  position: absolute;
  right: 40px;
  bottom: 40px;
  width: 50%;
  max-height: 40%;
  background: rgba(0, 0, 0, 0.2);
}

h3 {
  text-shadow: 1px 1px 2px #000;
  color: rgba(40, 160, 220, 0.74);
  font-size: 17px;
}

.legendBox {
  position: absolute;
  height: 32%;
  bottom: 0;
}

.legend-icon {
  width: 15px;
  height: 10px;
  border-radius: 50px;
}

.legend {
  display: flex;
  align-items: center;
  font-size: 20px;
}

.primaryButton {
  font-size: 20px;
  width: 70%;
  height: 30px;
}

.checkData {
  width: 100%;
  height: 84%;
  border-bottom: 1px solid rgba(7, 28, 71, 0.85);
}

.checkDataBox {
  height: 100%;
  width: 40%;
  position: relative;
}

.page {
  justify-content: center;
}

.shellData {
  margin-left: 5px;
  margin-right: 5px;
  margin-top: 10px;
}

.scrollbar {
  height: 84%;
  max-height: 84%;
  border-bottom: 1px solid rgba(7, 28, 71, 0.85);
}

.searchBox {
  width: 100%;
  height: 10%;
  border-bottom: 1px solid black;
}

.shellDataBox {
  height: 100%;
  width: 60%;
  position: relative;
  border-right: 1px solid black;
}

.map_checkBox {
  display: flex;
  width: 48%;
  position: relative;
  border: 1px solid black;
}

.map_body {
  background-repeat: round;
  text-align: center;
  position: relative;
  display: flex;
  height: calc(100vh - 80px);
}

.map {
  width: 52%;
  min-height: 820px;
  border-top-right-radius: 20px;
  border-bottom-right-radius: 20px;
  position: relative;
}

#china_map {
  width: 100%;
  height: 100%;
}
</style>