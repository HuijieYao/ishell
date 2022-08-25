<template>
  <div class="goods">
    <el-table
      :data="goodsList.filter(data => !search || data.name.toLowerCase().includes(search.toLowerCase()))"
      stripe
    >
      <el-table-column prop="id" label="编号" width="100" />
      <el-table-column prop="merchant.id" label="商家编号" width="100" />
      <el-table-column prop="name" label="商品名" width="300" />
      <el-table-column prop="price" label="单价" width="100" />
      <el-table-column prop="img" label="图片链接" />
      <el-table-column align="right">
        <template #header>
          <el-input v-model="search" placeholder="输入商品名搜索" />
        </template>
        <template #default="scope">
          <el-button @click="handleEdit(scope.$name, scope.row)">编辑</el-button>
          <el-button type="danger" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-drawer v-model="drawer" title="编辑商品信息" direction="ltr" :before-close="handleClose">
      <el-form :model="form" label-width="100px">
        <el-form-item label="所属商店">
          <el-select v-model="form.merchant" placeholder="请选择">
            <el-option
              v-for="merchant in merchantsList"
              :key="merchant.id"
              :label="merchant.name"
              :value="merchant.id"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="商品名">
          <el-input v-model="form.name"></el-input>
        </el-form-item>
        <el-form-item label="单价">
          <el-input v-model="form.price"></el-input>
        </el-form-item>
        <el-form-item label="图片链接">
          <el-input v-model="form.img"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="onSubmit">确定</el-button>
        </el-form-item>
      </el-form>
    </el-drawer>
    <el-button class="add" type="primary" size="large" circle @click="show">
      <el-icon>
        <circle-plus />
      </el-icon>
    </el-button>
    <el-dialog v-model="dialogVisible" title="添加商品" width="30%" :before-close="handleClose">
      <span>添加商品</span>
      <template #footer>
        <span class="dialog-footer">
          <el-button type="primary" @click="dialogVisible = false">Confirm</el-button>
        </span>
      </template>
    </el-dialog>
  </div>
</template>

<script>
import { postRequest } from "@/utils/api.js";
import { CirclePlus } from "@element-plus/icons-vue";

export default {
  name: "Goods",
  data() {
    return {
      dialogVisible: false,
      drawer: false,
      search: "",
      merchantsList: [],
      form: {
        name: '',
        merchant: '',
        price: '',
        img: '',
      },
      goodsList: [],
    };
  },
  components: {
    CirclePlus,
  },
  methods: {
    getMerchantsList() {
      postRequest("/mall/getMerchantsList").then(resp => {
        this.merchantsList = resp.data;
      });
    },
    getGoodsList() {
      postRequest("/mall/getAllGoods").then(resp => {
        this.goodsList = resp.data;
      });
    },
    show() {
      this.dialogVisible = true;
    },
    handleEdit(index, row) {
      this.drawer = true;
      this.form.name = row.name;
      this.form.merchant = row.merchant.id;
      this.form.price = row.price;
      this.form.img = row.img;
    },
    handleDelete(index, row) {
      console.log(index, row);
    },
    handleClose(done) {
      this.$confirm('确认关闭？')
        .then(_ => {
          done();
        })
        .catch(_ => { });
    },
  },
  mounted() {
    this.getGoodsList();
    this.getMerchantsList();
  },
}
</script>

<style scoped>
.add {
  position: absolute;
  left: 50px;
  bottom: 50px;
}
</style>