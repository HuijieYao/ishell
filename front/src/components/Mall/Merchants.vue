<template>
  <div class="merchants">
    <el-table
      :data="merchantsList.filter(data => !search || data.name.toLowerCase().includes(search.toLowerCase()))"
      stripe
      style="width: 100%"
    >
      <el-table-column prop="id" label="编号" width="180" />
      <el-table-column prop="name" label="店名" width="180" />
      <el-table-column prop="address" label="地址" />
      <el-table-column align="right">
        <template #header>
          <el-input v-model="search" placeholder="输入商店名搜索" />
        </template>
        <template #default="scope">
          <el-button @click="handleEdit(scope.$name, scope.row)">编辑</el-button>
          <el-button type="danger" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-drawer v-model="drawer" title="编辑商品信息" direction="ltr" :before-close="handleClose">
      <el-form :model="form" label-width="100px">
        <el-form-item label="商店名">
          <el-input v-model="form.name"></el-input>
        </el-form-item>
        <el-form-item label="地址">
          <el-input v-model="form.address"></el-input>
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
    <el-dialog v-model="dialogVisible" title="添加商店" width="30%" :before-close="handleClose">
      <span>添加商店</span>
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
  name: "Merchants",
  data() {
    return {
      dialogVisible: false,
      drawer: false,
      search: "",
      form: {
        name: '',
        address: '',
      },
      merchantsList: [],
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
    show() {
      this.dialogVisible = true;
    },
    handleEdit(index, row) {
      this.drawer = true;
      this.form.name = row.name;
      this.form.address = row.address;
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
    this.getMerchantsList();
  }
}
</script>

<style scoped>
.add {
  position: absolute;
  left: 50px;
  bottom: 50px;
}
</style>