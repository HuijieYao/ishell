<template>
  <div class="user">
    <el-container>
      <el-header>
        <Header />
      </el-header>
      <el-main>
        <router-view />
      </el-main>
    </el-container>
  </div>
</template>

<script>
import Header from "@/components/public/Header";

export default {
  name: "user",
  components: {
    Header
  }
}
</script>

<style scoped>
.el-container,
.el-main {
  padding: 0;
}
</style>