<template>
  <div class="fresh-chart">
    <div id="fChart"></div>
  </div>
</template>

<script>
export default {
  name: "FreshChart",
  data() {
    return {
      mychart: null,
      option: {
        title: {
          text: '我国淡水产品年度数据（万吨）'
        },
        tooltip: {
          trigger: 'axis',
        },
        dataset: {
          source: [
            ['product', '2001', '2002', '2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019'],
            ['贝类', 39.45, 40.78, 46.67, 52.53, 51.63, 51.45, 52.8, 53.96, 53.88, 53.8, 51.96, 50.09, 50.5, 50.92, 46.29, 46.15, 46.74, 49, 45.41],
            ['鱼类', 2686.42, 2691.36, 2702.55, 2653.77, 2571.93, 2470.67, 2366.54, 2235.91, 2343.65, 2225.64, 2109.9, 1998.46, 1908.49, 1822.47, 1737.21, 1634.44, 1551.02, 1476.79, 1406.5],
            ['虾蟹类', 416.53, 369.67, 320.79, 316.11, 300.16, 288.74, 277, 268.69, 248.84, 248.13, 228.83, 210.06, 202.07, 167.81, 140.28, 132.41, 119.92, 105.68, 87.02],
            ['其他', 55.47, 54.42, 53.58, 55.81, 54.94, 54.8, 55.52, 53.97, 48.79, 47.89, 44.16, 38.7, 35.5, 32.78, 30.19, 29.1, 26.52, 24.93, 23.49]
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
        that.myChart = echarts.init(document.getElementById("fChart"));
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
#fChart {
  height: 400px;
  width: 100%;
}
</style>