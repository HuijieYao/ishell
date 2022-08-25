<template>
  <div class="world-map">
    <div id="world_map"></div>
  </div>
</template>

<script>
import world from "@/assets/map/world.json";
import { mapZHName } from "@/assets/map/country_name_zh.js";

export default {
  name: "WorldMap",
  data() {
    return {
      myChart: {},
      options: {
        geo: {
          type: 'map',
          map: 'world',
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
        },
        series: [
          {
            type: "map",
            geoIndex: 0,
            data: []
          }
        ],
      },
    };
  },
  methods: {
    // 世界地图中文名映射
    formatWorldMapToZH(data) {
      let zhFeatures = [];
      if (data.features) {
        zhFeatures = data.features.map(item => {
          if (mapZHName[item.properties.name]) {
            item.properties.name = mapZHName[item.properties.name];
          }
          return item;
        })
      }
      data.features = zhFeatures
      return data;
    },
    // 注册地图
    initEchartMap() {
      const that = this;
      that.formatWorldMapToZH(world);
      echarts.registerMap('world', world);
      that.myChart = echarts.init(document.getElementById("world_map"));
      that.myChart.setOption(that.options);
      that.myChart.on('click', function (params) {
        that.$mybus.emit("sendMapInfo", params.name);
      });
    },
  },
  created() {
    this.options.series[0]['data'] = this.dataList;
  },
  mounted() {
    this.$nextTick(() => {
      this.initEchartMap();
    });
  },
  beforeUnmount() {
    this.myChart.dispose();
  },
};
</script>

<style scoped>
#world_map {
  width: 100%;
  height: calc(100vh - 80px);
}
</style>