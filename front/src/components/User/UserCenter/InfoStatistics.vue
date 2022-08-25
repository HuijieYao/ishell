<template>
  <div class="info-statistics">
    <div class="info-statistics-info-card">
      <el-card class="info-statistics-info-card-article" shadow="hover">
        <div id="articleChart" style="height:300px;"></div>
      </el-card>
      <el-card class="info-statistics-info-card-tag" shadow="hover">
        <div id="main1" style="height:300px;"></div>
      </el-card>
    </div>
    <el-card class="info-statistics-all" shadow="hover">
      <div id="main2" style="height:300px;"></div>
    </el-card>
  </div>
</template>

<script>
import Highcharts, {Chart} from 'highcharts';

export default {
  name: "InfoStatistics",
  components: {
    highcharts: Chart
  },
  mounted: function () {
    this.$nextTick(function () {
      this.getArticleChart();
      this.moreChart();
      this.getA();
    })
  },
  methods: {
    getArticleChart() {
      Highcharts.chart("articleChart", {
        chart: {
          plotBackgroundColor: null,
          plotBorderWidth: null,
          plotShadow: false,
          type: 'pie'
        },
        title: {
          text: '文章分析统计'
        },
        plotOptions: {
          pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
              enabled: true,
            }
          }
        },
        series: [{
          name: '数量',
          colorByPoint: true,
          data: [{
            name: '浏览',
            y: 84
          }, {
            name: '评论',
            y: 55
          }, {
            name: '点赞',
            y: 45
          }]
        }],
        credits: {
          enabled: false
        },
        exporting: {
          enabled: false
        }
      });
    },
    getA() {
      Highcharts.chart("main1", {
        title: {
          text: "贡献占比",
          align: 'center',
          verticalAlign: 'middle',
          y: 100
        },
        tooltip: {
          headerFormat: '{series.name}<br>',
          pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
          pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
              enabled: true,
            },
            startAngle: -90, // 圆环的开始角度
            endAngle: 90,    // 圆环的结束角度
            center: ['50%', '75%']
          }
        },
        series: [{
          type: 'pie',
          name: "贡献占比",
          innerSize: '50%',
          data: [
            ["科普", 45],
            ["创意", 10],
            ["历史", 12],
            ["人文", 20]
          ]
        }],
        credits: {
          enabled: false
        },
        exporting: {
          enabled: false
        }
      });
    },
    moreChart() {
      if (this.chart) {
        this.chart.destroy();
      }
      // 初始化 Highcharts 图表
      this.chart = new Highcharts.Chart("main2", {
        title: {
          text: "读者分析"
        },
        xAxis: {
          title: {
            text: "月份"
          }
        },
        yAxis: {
          title: {
            text: "阅读人数"
          }
        },
        legend: {
          layout: "vertical",
          align: "right",
          verticalAlign: "middle"
        },
        plotOptions: {
          series: {
            label: {
              connectorAllowed: false
            },
            pointStart: 1
          }
        },
        series: [
          {
            name: "科普",
            data: [2, 22, 5, 16, 8, 11, 20, 10, 20, 10, 22, 13]
          },
          {
            name: "创意",
            data: [10, 20, 12, 30, 25, 10, 19, 10, 22, 5, 16, 8]
          },
          {
            name: "历史",
            data: [20, 10, 22, 13, 27, 30, 33, 5, 30, 25, 10, 19]
          },
          {
            name: "人文",
            data: [30, 40, 33, 24, 0, 20, 10, 15, 22, 13, 27, 30]
          }
        ],
        responsive: {
          rules: [
            {
              condition: {
                maxWidth: 500
              },
              chartOptions: {
                legend: {
                  layout: "horizontal",
                  align: "center",
                  verticalAlign: "bottom"
                }
              }
            }
          ]
        },
        credits: {
          enabled: false
        },
        exporting: {
          enabled: false
        }
      });
    }
  }
}
</script>

<style scoped>
.info-statistics {
  padding: 20px;
}

.info-statistics-info-card {
  height: 340px;
}

.info-statistics-info-card-article, .info-statistics-info-card-tag {
  width: 49%;
}

.info-statistics-info-card-article {
  float: left;
}

.info-statistics-info-card-tag {
  float: right;
}

.info-statistics-all {
  width: 100%;
  height: 340px;
  margin: 20px 0;
}
</style>