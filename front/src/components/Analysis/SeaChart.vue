<template>
  <div class="sea-chart">
    <div id="sChart"></div>
  </div>
</template>

<script>
export default {
  name: "SeaChart",
  data() {
    return {
      mychart: null,
      option: {
        title: {
          text: '我国海水产品年度数据（万吨）'
        },
        tooltip: {
          trigger: 'axis',
        },
        dataset: {
          source: [
            ['product', '2001', '2002', '2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019'],
            ['贝类', 936.36, 972.18, 963.77, 965.6, 1008.14, 1046.71, 1068.2, 1072.47, 1120.02, 1170.44, 1212.77, 1264.78, 1327.56, 1371.71, 1413.98, 1476.88, 1481.42, 1486.97, 1480.17],
            ['鱼类', 881.29, 887.9, 893.24, 883.74, 913.94, 892.07, 891.28, 864.34, 880.82, 906.32, 1075.19, 957.3, 972.85, 1042.52, 1078.02, 1063.15, 1115.78, 1091.48, 1060.48],
            ['虾蟹类', 262.76, 269.75, 259.01, 271.39, 281.3, 299.38, 298.94, 288.76, 303.59, 310.44, 321.85, 345.69, 362.57, 382.95, 386.28, 396.09, 370.71, 368.24, 366.18],
            ['藻类', 108.52, 115.81, 122.73, 130.76, 133.94, 137.65, 138.84, 142.26, 148.41, 156.6, 162.91, 179.04, 188.48, 202.89, 211.5, 219.32, 224.78, 236.22, 255.58],
            ['其他', 44.57, 52.81, 94.07, 152.98, 128.57, 133.82, 153.7, 122.12, 131, 142.09, 135.32, 142.8, 140.89, 136.18, 142.52, 145.82, 129.05, 118.52, 120.09]
          ]
        },
        xAxis: { type: 'category' },
        yAxis: { gridIndex: 0 },
        grid: { top: '55%' },
        series: [
          {
            type: 'line',
            smooth: true,
            seriesLayoutBy: 'row',
            emphasis: { focus: 'series' }
          },
          {
            type: 'line',
            smooth: true,
            seriesLayoutBy: 'row',
            emphasis: { focus: 'series' }
          },
          {
            type: 'line',
            smooth: true,
            seriesLayoutBy: 'row',
            emphasis: { focus: 'series' }
          },
          {
            type: 'line',
            smooth: true,
            seriesLayoutBy: 'row',
            emphasis: { focus: 'series' }
          },
          {
            type: 'line',
            smooth: true,
            seriesLayoutBy: 'row',
            emphasis: { focus: 'series' }
          },
          {
            type: 'pie',
            id: 'pie',
            radius: '30%',
            center: ['50%', '25%'],
            emphasis: {
              focus: 'self'
            },
            label: {
              formatter: '{b}: {@2001} ({d}%)'
            },
            encode: {
              itemName: 'product',
              value: '2001',
              tooltip: '2001'
            }
          }
        ]
      },
    }
  },
  methods: {
    initChart() {
      const that = this;
      that.$nextTick(function () {
        that.myChart = echarts.init(document.getElementById("sChart"));
        that.myChart.on("updateAxisPointer", function (event) {
          const xAxisInfo = event.axesInfo[0];
          if (xAxisInfo) {
            const dimension = xAxisInfo.value + 1;
            that.myChart.setOption({
              series: {
                id: 'pie',
                label: {
                  formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                },
                encode: {
                  value: dimension,
                  tooltip: dimension
                }
              }
            });
          }
        });
        that.myChart.setOption(that.option);
      });
    },
  },
  mounted() {
    this.initChart();
  },
  beforeUnmount() {
    this.myChart.dispose();
  },
}
</script>

<style scoped>
#sChart {
  height: 400px;
  width: 100%;
}
</style>