<template>
  <div class="user-center">
    <el-container class="center-container">
      <!-- 侧边栏 -->
      <el-aside class="center-aside">
        <el-menu
          active-text-color="#ffd04b"
          background-color="#545c64"
          text-color="#fff"
          default-active="2"
        >
          <el-menu-item index="1" @click="goto('/mall')" style="background-color: #409EFF;">
            <el-icon>
              <arrow-left-bold />
            </el-icon>
            <span>返回商城</span>
          </el-menu-item>
          <el-menu-item index="2" @click="change(2)">
            <el-icon>
              <coin />
            </el-icon>
            <span>基本信息</span>
          </el-menu-item>
          <el-menu-item index="3" @click="change(3)">
            <el-icon>
              <tickets />
            </el-icon>
            <span>订单详情</span>
          </el-menu-item>
          <el-menu-item index="4" @click="change(4)">
            <el-icon>
              <timer />
            </el-icon>
            <span>历史记录</span>
          </el-menu-item>
        </el-menu>
      </el-aside>
      <!-- 主界面 -->
      <el-main class="center-main">
        <BasicInfo v-if="showInfo" />
        <Order v-if="showOrder" />
        <History v-if="showHistory" />
      </el-main>
    </el-container>
  </div>
</template>

<script>
import BasicInfo from "@/components/User/UserCenter/BasicInfo.vue";
import Order from "@/components/User/UserCenter/Order.vue";
import History from "@/components/User/UserCenter/History.vue";
import { ArrowLeftBold, Coin, Tickets, Timer } from "@element-plus/icons-vue";

export default {
  name: 'UserCenter',
  data() {
    return {
      showInfo: true,
      showOrder: false,
      showHistory: false,
    }
  },
  components: {
    BasicInfo,
    Order,
    History,
    ArrowLeftBold,
    Coin,
    Tickets,
    Timer,
  },
  methods: {
    goto(path) {
      this.$router.push(path);
    },
    change(index) {
      if (index === 2) {
        this.showInfo = true;
        this.showOrder = false;
        this.showHistory = false;
      } else if (index === 3) {
        this.showInfo = false;
        this.showOrder = true;
        this.showHistory = false;
      } else {
        this.showInfo = false;
        this.showOrder = false;
        this.showHistory = true;
      }
    }
  }
}
</script>

<style scoped>
.el-container {
  height: 100vh;
}

.el-main {
  padding: 0;
}

.el-menu {
  height: 100%;
}
</style>