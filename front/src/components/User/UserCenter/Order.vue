<template>
  <div class="Order">
    <div class="orderTable">
      <!--所有订单栏 一页放十个-->
      <div class="order" v-for="order in orders" :key="order.id">
        <!--订单头-->
        <div class="orderHeader" @click="HiddenGoods(order)">
          <table style="width: 100%;text-align: center;">
            <tr>
              <td v-if="order.buyDate" style="width: 25%;">购买时间：{{ order.buyDate }}</td>
              <td style="width: 20%;">订单编号：{{ order.id }}</td>
              <td style="width: 20%;">商家名：{{ order.merchant.name }}</td>
              <td v-if="!order.buyDate" style="width: 10%;">
                <button @click="Pay(order)">立即支付</button>
              </td>
              <td v-else-if="order.getDate" style="width: 10%;">已收货</td>
              <td v-else-if="order.sendDate">
                <button @click="OverOrder(order)">确认收货</button>
              </td>
              <td v-else>未发货</td>
              <td>
                <p v-if="order.getDate">发货时间：{{ order.sendDate }}</p>
                <p v-if="order.getDate">收货时间：{{ order.getDate }}</p>
                <p v-else-if="order.sendDate">发货时间：{{ order.sendDate }}</p>
              </td>
            </tr>
          </table>
        </div>
        <div v-if="!order.hidden" class="orderBox" style="display: flex;">
          <!--订单买了哪些商品-->
          <div style="width: 80%;">
            <!--表头-->
            <div>
              <table style="text-align: center;width: 99%;">
                <tr>
                  <td style="vertical-align: top;width: 40%;">宝贝</td>
                  <td style="width: 20%;">单价</td>
                  <td style="width: 20%;">数量</td>
                  <td style="width: 20%;">实付款</td>
                </tr>
              </table>
            </div>
            <!--商品信息-->
            <div class="aGoods" v-for="(aGoods,i) in order.goods" :key="i">
              <table style="text-align: center;width: 100%;">
                <tr>
                  <td v-if="aGoods.img">
                    <img style="float: left;" :src="aGoods.img" alt height="80" width="80" />
                  </td>
                  <td v-else>
                    <img
                      style="float: left;"
                      src="http://file.sarom.cn/ishell/public/noImg.png"
                      alt
                      height="80"
                      width="80"
                    />
                  </td>
                  <td style="text-align: left;vertical-align: top;width: 30%;">
                    <p style="margin: 0;">{{ aGoods.name }}</p>
                    <p style="margin: 0;">{{ aGoods.describe }}</p>
                  </td>
                  <td style="width: 20%;">{{ aGoods.price }}</td>
                  <td style="width: 20%;">{{ aGoods.num }}</td>
                  <td style="width: 20%;">{{ aGoods.pay }}</td>
                </tr>
              </table>
            </div>
          </div>
          <!--收货人信息-->
          <div class="consignee">
            <table style="height: 100%;">
              <tr>
                <td>姓名：{{ order.consigneeName }}</td>
              </tr>
              <tr>
                <td>电话：{{ order.consigneePhone }}</td>
              </tr>
              <tr>
                <td>地址：{{ order.consigneeAddress }}</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div>
        <el-pagination
          v-model:currentPage="currentPage"
          :page-size="10"
          :background="background"
          layout="total, prev, pager, next, jumper"
          :total="total"
          style="justify-content: center;"
        ></el-pagination>
      </div>
    </div>
  </div>
</template>

<script>
import { postRequest } from "@/utils/api";
import { getRequest } from "@/utils/api";

export default {
  name: "Order",
  components: {},
  data() {
    return {
      total: 0,
      currentPage: 1,
      background: "lightblue",
      //订单信息 一页放十个
      orders: []
    }
  },
  watch: {
    currentPage(newPage) {
      //在这里发送后端获取下一页所需要的数据
      this.orders.length = 0;
      this.GetOrders(newPage);
    }
  },
  mounted() {
    this.GetTotal();
    this.GetOrders(1);
  },
  methods: {
    Pay(order) {
      let yy = new Date().getFullYear();
      let mm = new Date().getMonth() + 1 < 10 ? '0' + (new Date().getMonth() + 1) : (new Date().getMonth()) + 1;
      let dd = new Date().getDate() < 10 ? '0' + new Date().getDate() : new Date().getDate();
      let hh = new Date().getHours();
      let mf = new Date().getMinutes() < 10 ? '0' + new Date().getMinutes() : new Date().getMinutes();
      let ss = new Date().getSeconds() < 10 ? '0' + new Date().getSeconds() : new Date().getSeconds();
      let buyDate = yy + '-' + mm + '-' + dd + ' ' + hh + ':' + mf + ':' + ss;//设置支付时间
      //发送收货请求
      postRequest("/mall/pay?orderId=" + order.id + "&buyDate=" + buyDate).then(response => {
        if (response.data === "Success") {
          order.buyDate = buyDate;
        } else {
          console.log("收货失败");
        }
      })
      event.stopPropagation();//避免点击隐藏
    },
    HiddenGoods(order) {
      order.hidden = ~order.hidden;
    },
    //发送收货请求
    OverOrder(order) {
      let yy = new Date().getFullYear();
      let mm = new Date().getMonth() + 1 < 10 ? '0' + (new Date().getMonth() + 1) : (new Date().getMonth()) + 1;
      let dd = new Date().getDate() < 10 ? '0' + new Date().getDate() : new Date().getDate();
      let hh = new Date().getHours();
      let mf = new Date().getMinutes() < 10 ? '0' + new Date().getMinutes() : new Date().getMinutes();
      let ss = new Date().getSeconds() < 10 ? '0' + new Date().getSeconds() : new Date().getSeconds();
      let getDate = yy + '-' + mm + '-' + dd + ' ' + hh + ':' + mf + ':' + ss;//设置收货时间
      //发送收货请求
      postRequest("/mall/overOrder?orderId=" + order.id + "&getDate=" + getDate).then(response => {
        if (response.data === "Success") {
          order.getDate = getDate;
        } else {
          console.log("收货失败");
        }
      })
      event.stopPropagation();//避免点击隐藏
    },
    //获取当前账号总订单数
    GetTotal() {
      let userId = sessionStorage.getItem("UserID");
      getRequest("/mall/getTotalOrders?userId=" + userId).then(response => {
        this.total = response.data;
      })
    },
    //获取当前账号的第几页的订单
    GetOrders(page) {
      let userId = sessionStorage.getItem("UserID");
      getRequest("/mall/getOrders?userId=" + userId + "&page=" + page).then(response => {
        this.orders = response.data;
      })
    }
  }
}
</script>

<style scoped>
.consignee {
  width: 20%;
  border-left: 1px solid black;
}

.aGoods {
  display: flex;
  padding: 10px 10px 0 0;
  border-top: 1px solid black;
}

.orderHeader:hover {
  cursor: pointer;
  background-color: #ffffff;
}

.orderHeader {
  border-radius: 10px;
  display: flex;
  background-color: #eaf8ff;
  line-height: 1px;
  height: 42px;
  overflow: hidden;
  border-bottom: 1px solid black;
}

.orderTable {
  position: relative;
  width: 80%;
  margin: auto;
  left: 0;
  right: 0;
  top: 100px;
}

.order {
  border-radius: 10px;
  font-size: 12px;
  border: 1px solid black;
  margin-bottom: 10px;
  background-color: #f1f1f1;
}

.Order {
  min-width: 972px;
  width: 100%;
  height: 100%;
  position: relative;
  background: linear-gradient(
      rgba(255, 255, 255, 0.9),
      rgba(255, 255, 255, 0.9)
    ),
    url("http://file.sarom.cn/ishell/public/wave.png") no-repeat;
  background-size: cover;
}
</style>