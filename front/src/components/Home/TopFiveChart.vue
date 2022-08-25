<template>
  <div class="top-five-chart">
    <div id="chart"></div>
  </div>
</template>

<script>
export default {
  name: "top-five-chart",
  data() {
    return {
      myChart: null,
      datas: [
        [1736809, 153437, 125376, 106191, 50862],
        [1731008, 136617, 105017, 122374, 44348],
        [1637667, 159503, 89894, 95926, 36219],
        [1655243, 235058, 71894, 55868, 30716],
        [1015346, 279660, 53011, 91893, 32325],
        [1072792, 286000, 59606, 81760, 30095],
        [1079478, 269000, 64775, 88069, 52803],
        [1007524, 270000, 63884, 99615, 44839],
        [922879, 317010, 67057, 163119, 43119],
        [878181, 340034, 67213, 200326, 39082],
        [851899, 383364, 60986, 100384, 39388],
        [743489, 415503, 55114, 1098874, 36662],
        [658909, 402677, 48456, 123650, 32003],
      ],
      option: {
        tooltip: {
          trigger: "item",
          formatter: "{b}<br/>总量：{c}",
        },
        xAxis: {
          type: "value",
        },
        yAxis: {
          type: "category",
          data: ["日本", "印度", "菲律宾", "越南", "中国"],
        },
        series: [
          {
            data: [
              {
                value: 50862,
                itemStyle: {
                  color: "#666666"
                }
              },
              {
                value: 106191,
                itemStyle: {
                  color: "#abcdef"
                }
              },
              {
                value: 125376,
                itemStyle: {
                  color: "#123456"
                }
              },
              {
                value: 153437,
                itemStyle: {
                  color: "#444444"
                }
              },
              {
                value: 1736809,
                itemStyle: {
                  color: "#a90000"
                }
              },
            ],
            type: "bar",
          }
        ],
      },
    }
  },
  methods: {
    initChart() {
      this.myChart = echarts.init(document.getElementById("chart"));
      this.myChart.setOption(this.option);
    },
    // 接收年份标识并加载新数据
    getIndex() {
      this.$mybus.on("sendYearIndex", data => {
        const newData = this.datas[data];
        for (let i = 0; i < 5; i++) {
          this.option.series[0].data[4 - i].value = newData[i];
        }
        this.initChart();
      });
    },
  },
  mounted() {
    this.initChart();
    this.getIndex();
  },
  beforeUnmount() {
    this.myChart.dispose();
  },
}
</script>

<style scoped>
.top-five-chart {
  height: 100%;
  width: 100%;
}

#chart {
  height: 600px;
  width: 100%;
}
</style>