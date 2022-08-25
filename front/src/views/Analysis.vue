<template>
  <div class="analysis">
    <el-container>
      <el-header>
        <Header />
      </el-header>
      <el-main>
        <div class="analysis-container">
          <div class="option">
            <el-dropdown>
              <el-button type="primary" size="large" circle>
                <el-icon>
                  <setting />
                </el-icon>
              </el-button>
              <template #dropdown>
                <el-dropdown-menu>
                  <el-dropdown-item @click="changeMap(1)">中国地图</el-dropdown-item>
                  <el-dropdown-item @click="changeMap(2)">世界地图</el-dropdown-item>
                  <el-dropdown-item @click="showCards = !showCards">年度数据</el-dropdown-item>
                  <el-dropdown-item @click="showRes = !showRes">数据展示</el-dropdown-item>
                </el-dropdown-menu>
              </template>
            </el-dropdown>
          </div>
          <div class="analysis-map-container" v-loading="loading" element-loading-text="正在切换地图">
            <ChinaMap v-if="!showWorld" />
            <worldMap v-if="showWorld" />
          </div>
          <el-card v-if="showCards" class="analysis-cards">
            <div class="charts-item">
              <SeaChart />
            </div>
            <div class="charts-item">
              <FreshChart />
            </div>
          </el-card>
          <el-card
            v-if="showRes && showWorld"
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
      </el-main>
    </el-container>
  </div>
</template>

<script>
import Header from "@/components/public/Header";
import ChinaMap from "../components/Analysis/ChinaMap.vue";
import WorldMap from "../components/Analysis/WorldMap.vue";
import SeaChart from "../components/Analysis/SeaChart.vue";
import FreshChart from "../components/Analysis/FreshChart.vue";
import { Setting } from "@element-plus/icons-vue";
import { postRequest } from "../utils/api";

export default {
  name: "Analysis",
  data() {
    return {
      loading: false,
      resLoading: false,
      showCards: false,
      showRes: true,
      showWorld: false,
      info: {
        name: "尚未选择",
        shells: []
      }
    };
  },
  methods: {
    changeMap(index) {
      this.loading = true;
      setTimeout(() => {
        if (index === 1) {
          this.showWorld = false;
          this.info.name = "尚未选择";
        } else {
          this.showWorld = true;
        }
        this.loading = false;
      }, 200);
    },
  },
  created() {
    (function flexible(window, document) {
      let docEl = document.documentElement;
      let dpr = window.devicePixelRatio || 1;
      function setBodyFontSize() {
        if (document.body) {
          document.body.style.fontSize = 12 * dpr + "px";
        } else {
          document.addEventListener("DOMContentLoaded", setBodyFontSize);
        }
      }
      setBodyFontSize();
      function setRemUnit() {
        let rem = docEl.clientWidth / 24;
        docEl.style.fontSize = rem + "px";
      }
      setRemUnit();
      window.addEventListener("resize", setRemUnit);
      window.addEventListener("pageshow", function (e) {
        if (e.persisted) {
          setRemUnit();
        }
      });
      if (dpr >= 2) {
        let fakeBody = document.createElement("body");
        let testElement = document.createElement("div");
        testElement.style.border = ".5px solid transparent";
        fakeBody.appendChild(testElement);
        docEl.appendChild(fakeBody);
        if (testElement.offsetHeight === 1) {
          docEl.classList.add("hairlines");
        }
        docEl.removeChild(fakeBody);
      }
    })(window, document);
  },
  mounted() {
    this.$mybus.on("sendMapInfo", data => {
      this.resLoading = true;
      this.info.name = data;
      if (data.substring(data.length - 1) === "省" || data.substring(data.length - 1) === "市") {
        data = data.slice(0, data.length - 1);
      }
      postRequest("/shellfish/getMapInfo?place=" + data).then(resp => {
        this.info.shells = resp.data;
        this.resLoading = false;
      });
    });
  },
  components: {
    Header,
    ChinaMap,
    WorldMap,
    SeaChart,
    FreshChart,
    Setting,
  }
};
</script>

<style scoped>
.analysis {
  height: calc(100vh - 60px);
}

.el-main {
  padding: 0 20px;
}

.analysis-container {
  width: 100%;
  height: 100%;
  display: flex;
  border-radius: 10px;
  margin-top: 3px;
}

.analysis-map-container {
  flex: 1;
  background-color: #f5f9ff;
}

.option {
  position: absolute;
  top: 90px;
  left: 50px;
  z-index: 999;
}

.analysis-cards {
  position: absolute;
  width: 30%;
  height: calc(100vh - 80px);
  right: 20px;
}

.analysis-result {
  position: absolute;
  left: 40px;
  bottom: 40px;
  width: 40%;
  max-height: 40%;
  background: rgba(0, 0, 0, 0.2);
}

:deep(.el-descriptions__body) {
  background: rgba(0, 0, 0, 0);
}
</style>
