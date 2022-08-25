<template>
  <div class="mall-console">
    <el-container>
      <el-header>
        <div>
          <span>贝壳商城后台管理系统</span>
        </div>
        <el-button type="info" @click="goToMall">回到商城</el-button>
      </el-header>
      <el-container>
        <el-aside :width="isCollapse ? '64px' : '200px'">
          <el-menu background-color="#333744" text-color="#fff" active-text-color="#ffd04b">
            <el-menu-item
              :index="menu.id"
              v-for="menu in menulist"
              :key="menu.id"
              @click="changeOption(menu.id)"
            >
              <span>{{ menu.title }}</span>
            </el-menu-item>
          </el-menu>
        </el-aside>
        <el-main>
          <Welcome v-if="showWelcome" />
          <merchants v-if="showMerchants" />
          <Goods v-if="showGoods" />
        </el-main>
      </el-container>
    </el-container>
  </div>
</template>

<script>
import Welcome from "@/components/Mall/Welcome.vue";
import Merchants from "@/components/Mall/Merchants.vue";
import Goods from "@/components/Mall/Goods.vue";

export default {
  data() {
    return {
      showWelcome: true,
      showMerchants: false,
      showGoods: false,
      menulist: [
        {
          id: 1,
          title: '商店管理'
        },
        {
          id: 2,
          title: '商品管理'
        },
      ],
    };
  },
  components: {
    Welcome,
    Merchants,
    Goods,
  },
  methods: {
    // 返回商城
    goToMall() {
      this.$router.push('/mall');
    },
    // 侧边栏跳转
    changeOption(index) {
      if (index === 1) {
        this.showWelcome = false;
        this.showMerchants = true;
        this.showGoods = false;
      } else {
        this.showWelcome = false;
        this.showMerchants = false;
        this.showGoods = true;
      }
    },
  }
}
</script>

<style scoped>
.mall-console {
  height: 100vh;
}

.el-container,
.el-aside,
.el-main,
.el-menu {
  height: 100%;
}

.el-header {
  background-color: #373d41;
  display: flex;
  justify-content: space-between;
  padding-left: 0;
  align-items: center;
  color: #fff;
  font-size: 20px;
}

.el-main {
  background-color: #eaedf1;
}
</style>
