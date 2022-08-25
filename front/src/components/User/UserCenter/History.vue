<template>
  <div class="history">
    <el-table :data="shells" :default-sort="{prop:'date',order: 'descending'}"  stripe style="width: 100%">
      <el-table-column prop="name" label="识别结果" />
      <el-table-column prop="sname" label="学名" />
      <el-table-column prop="prob" label="相似度" />
      <el-table-column prop="date" label="日期" sortable/>
    </el-table>
  </div>
</template>

<script>
import {getRequest} from "@/utils/api";
export default {
  name: "History",
  data(){
    return{
      shells:[]
    }
  },
  components: {

  },
  methods: {
    GetHistory(){
      let userId=sessionStorage.getItem("UserID")
      getRequest("/identify/getHistory?userId="+userId).then(response=>{
        this.shells=response.data;
      })
    }
  },
  mounted() {
    this.GetHistory();
  },
}
</script>

<style scoped>
</style>