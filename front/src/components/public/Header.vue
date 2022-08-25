<template>
  <div class="header">
    <el-menu class="topNavMenu" mode="horizontal">
      <el-image src="http://file.sarom.cn/ishell/public/logo.png"></el-image>
      <router-link to="/">
        <el-menu-item index="1">首页</el-menu-item>
      </router-link>
      <router-link to="/identify">
        <el-menu-item index="2">识贝</el-menu-item>
      </router-link>
      <router-link to="/analysis">
        <el-menu-item index="3">视界</el-menu-item>
      </router-link>
      <router-link to="/mall">
        <el-menu-item index="4">好物</el-menu-item>
      </router-link>
    </el-menu>
  </div>
</template>

<script>
export default {
  name: "Header",
}
</script>

<style scoped>
.el-menu {
  justify-content: flex-end;
}

.el-image {
  height: 40px;
  min-width: 150px;
  margin-top: 10px;
  margin-right: auto;
}

a {
  color: #4e5864;
  font-weight: bold;
  text-decoration: none;
}
</style>