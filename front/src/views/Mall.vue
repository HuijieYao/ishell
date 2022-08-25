<template>
  <div class="mall">
    <el-container>
      <el-header>
        <Header />
      </el-header>
      <el-main>
        <el-container>
          <el-header class="mall-header">
            <el-menu class="mall-header-menu" mode="horizontal">
              <span class="mall-header-logo">贝壳商城</span>
              <span class="mall-header-option" @click="goto('/user/login')" v-if="!isLogin">登录</span>
              <span v-if="!isLogin">&ensp;|&ensp;</span>
              <span class="mall-header-option" @click="goto('/user/logon')" v-if="!isLogin">注册</span>
              <span class="mall-header-option" @click="goto('userCenter')" v-if="isLogin">用户中心</span>
            </el-menu>
          </el-header>
          <el-main class="mall-container">
            <div v-for="item in goods" :key="item">
              <div class="card-header">
                <span>{{ item.title }}</span>
                <el-button class="card-option" @click="refresh(item.refresh)">
                  <el-icon>
                    <refresh />
                  </el-icon>
                </el-button>
              </div>
              <el-card class="box-card" shadow="never">
                <el-card class="goods-card" v-for="good in item.list" :key="good" shadow="never">
                  <el-image :src="good.img" :preview-src-list="[good.img]" fit="scale-down" />
                  <div class="card-bottom">
                    <div>{{ good.name }}</div>
                    <div class="goods-option">
                      <el-button type="text" @click="showDetails(good)">&emsp;详情&ensp;>></el-button>
                    </div>
                  </div>
                </el-card>
              </el-card>
            </div>
            <el-dialog v-model="showDialog" title="商品详情" width="50%" top="25vh">
              <el-descriptions :column="2" border>
                <template #title>
                  <span>{{ details.name }}</span>
                </template>
                <template #extra>
                  <button @click="UpdateNum(-1)">-</button>
                  <span>{{details.num}}</span>
                  <button @click="UpdateNum(1)">+</button>
                  <el-button type="primary" @click="PrimaryOrder(details)">加入订单</el-button>
                </template>
                <el-descriptions-item>
                  <template #label>商家</template>
                  {{ details.merchant.name }}
                </el-descriptions-item>
                <el-descriptions-item>
                  <template #label>单价</template>
                  {{ details.price }}
                </el-descriptions-item>
                <el-descriptions-item>
                  <template #label>描述</template>
                  {{ details.describe }}
                </el-descriptions-item>
              </el-descriptions>
            </el-dialog>
          </el-main>
        </el-container>
      </el-main>
      <el-footer>
        <Footer />
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import Header from "../components/public/Header.vue";
import Footer from "../components/public/Footer.vue";
import { Refresh } from "@element-plus/icons-vue";
import { postRequest } from "@/utils/api.js";
import { ElMessage } from 'element-plus';

export default {
  name: "mall",
  components: {
    Header,
    Footer,
    Refresh,
  },
  data() {
    return {
      isLogin: false,
      showDialog: false,
      details: "",
      goods: [
        { title: "食用贝壳", refresh: 1, list: [] },
        { title: "观赏贝壳", refresh: 2, list: [] },
        { title: "为您推荐", refresh: 3, list: [] },
      ],
    };
  },
  methods: {
    //提交订单
    PrimaryOrder(goods) {
      let order = {
        userId: sessionStorage.getItem("UserID"),
        merchantId: goods.merchant.id,
        goods: [{
          goodsId: goods.id,
          name: goods.name,
          num: goods.num,
          price: goods.price,
          pay: goods.num * goods.price,
          img: goods.img,
          describe: goods.describe
        }]
      }
      postRequest("/mall/creatOrder", order).then(response => {
        if (response.data === "Success")
          alert("提交成功");
        else
          alert("创建订单失败");
      })
    },
    UpdateNum(num) {
      this.details.num += num;
      if (this.details.num < 0) {
        this.details.num = 0;
      }
    },
    // 获取食用贝壳
    getList1() {
      postRequest("/mall/getGoodsList?type=1").then(resp => {
        this.goods[0].list = resp.data;
      });
    },
    // 获取观赏贝壳
    getList2() {
      postRequest("/mall/getGoodsList?type=2").then(resp => {
        this.goods[1].list = resp.data;
      });
    },
    // 获取推荐
    getRecommendation() {
      postRequest("/mall/getRecommendation").then(resp => {
        this.goods[2].list = resp.data;
      });
    },
    // 展示商品详情
    showDetails(good) {
      this.details = good;
      this.details.num = 0;
      this.showDialog = true;
    },
    // 刷新
    refresh(index) {
      if (index === 1) {
        this.getList1();
      } else if (index === 2) {
        this.getList2();
      } else {
        this.getRecommendation();
      }
    },
    // 商品加入订单
    addToOrder(good) {
      if (sessionStorage.getItem("Authorization") !== "") {
        // TODO
      } else {
        ElMessage.warning("请登录后操作");
      }
    },
    // 路由跳转
    goto(path) {
      this.$router.push(path);
    }
  },
  created() {
    if (sessionStorage.getItem("Authorization")) {
      this.isLogin = true;
    } else {
      this.isLogin = false;
    }
  },
  mounted() {
    this.getList1();
    this.getList2();
    this.getRecommendation();
  },
}
</script>

<style scoped>
.el-main,
.el-footer {
  padding: 0;
}

.mall-header {
  line-height: 60px;
}

.el-menu--horizontal {
  border: none;
  background-color: #4db0e4;
  padding: 0 20px;
}

.mall-header-menu span {
  color: #f0f8ff;
  font-weight: bold;
}

.mall-header-logo {
  font-size: 1.5em;
  margin-right: auto;
}

.mall-header-logo:hover,
.mall-header-option:hover {
  cursor: pointer;
}

.mall-container {
  padding: 0 100px;
}

.box-card {
  column-count: 3;
  column-gap: 20px;
  border: none;
}

.card-header {
  color: #ffffff;
  background-color: #3487b8;
  height: 20px;
  padding: 10px;
  margin: 20px 0;
  border-radius: 5px;
}

.goods-card {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  break-inside: avoid;
  vertical-align: middle;
  width: 100%;
  margin: 20px 0;
}

.card-option {
  float: right;
  margin: -5px 0;
}

.card-bottom {
  text-align: justify;
  display: flex;
  margin-top: 20px;
}

.goods-option {
  margin-left: auto;
}
</style>