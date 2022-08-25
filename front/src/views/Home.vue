<template>
  <div class="home">
    <el-container>
      <el-header>
        <Header />
      </el-header>
      <el-main>
        <div class="home-page" id="page1">
          <iframe src="static/matrix.html" frameborder="0" scrolling="no" />
          <div class="description-container">
            <el-row>
              <el-col :span="8">
                <el-card class="description-card" shadow="hover">
                  <h1>Ishell--贝友聚集地</h1>
                  <p>致力于满足广大“贝友”各种不同的需求，更是以让更多人认识不同贝类，普及贝类知识，发现贝类之美为平台宗旨，打造一个灵活性高、实用性强、科普性好的多合一平台。</p>
                </el-card>
              </el-col>
              <el-col :span="16">
                <el-card class="description-word" shadow="never">
                  <h1>什么是 ⌜贝壳⌟</h1>
                  <p>贝壳是生活在水边软体动物的外套壳，由软体动物的一种特殊腺细胞的分泌物所形成的保护身体柔软部分的钙化物。自然界中天 然碳酸钙矿物质相比较，贝壳具有独特的多尺度、多级次“砖一泥”组装结构，且因其多级层状结构而具有韧性好、强度高等优良特性。</p>
                  <p>贝壳的形成是一种生物矿化过程，即以少量有机大分子为模板进行分子操作，高度有序地组合形成有机材料的过程，其基本结构主要分为三部分，最外层是由硬质蛋白组成的角质层；中间为方解石或文石晶体组成的棱柱层，主要为贝壳提供硬度和耐溶蚀性；最内层为珍珠层，主要为贝壳提供硬度和韧性。</p>
                </el-card>
              </el-col>
            </el-row>
          </div>
        </div>
        <div class="home-page" id="page2">
          <div class="box"></div>
          <div class="sub-page">
            <Recommendation />
          </div>
          <Waves />
        </div>
        <div class="home-page" id="page3">
          <el-row>
            <el-col :span="8">
              <el-card class="chart-option-box" shadow="hover">
                <template #header>
                  <h1>世界贝类捕捞量前五国家</h1>
                </template>
                <TagCloud />
              </el-card>
            </el-col>
            <el-col :span="16">
              <TopFiveChart />
            </el-col>
          </el-row>
        </div>
      </el-main>
      <el-footer>
        <Footer />
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import Header from "../components/public/Header.vue";
import Recommendation from "@/components/Home/Recommendation";
import Waves from "@/components/Home/Waves";
import TagCloud from "@/components/Home/TagCloud";
import TopFiveChart from "@/components/Home/TopFiveChart"
import Footer from "../components/public/Footer.vue";

export default {
  components: {
    Header,
    Recommendation,
    Waves,
    TagCloud,
    TopFiveChart,
    Footer
  },
}
</script>

<style scoped>
.el-container,
.el-main,
.el-footer {
  padding: 0;
}

#page1 {
  display: flex;
  flex-direction: column;
  padding: 0 20px;
}

#page2 {
  width: 100%;
  padding: 0 0 150px 0;
  background-image: url("http://file.sarom.cn/ishell/public/sea.jpg");
  background-size: 100% 100%;
  font-size: 20px;
}

#page3 {
  text-align: center;
  padding: 80px 20px 0 80px;
  background: linear-gradient(to bottom, #f9fafb, #ffffff);
}

.sub-page {
  width: 70%;
  margin: 0 auto;
}

.box {
  height: 30px;
  width: 100%;
  border-bottom-left-radius: 100%;
  border-bottom-right-radius: 100%;
  margin-bottom: 80px;
  background-color: #ffffff;
  box-shadow: #686868 0 5px 5px;
}

.waves {
  margin-bottom: -160px;
}

iframe {
  height: 450px;
}

.description-container {
  margin-top: 20px;
  z-index: 1;
}

.description-card {
  border: #e3e3e3 2px solid;
  border-radius: 5px;
  background-color: #f5f5f5;
  float: left;
}

.description-card h1 {
  text-align: justify;
  font-size: 1.9em;
  margin-bottom: 35px;
  color: #627e98;
}

.description-word {
  color: #606060;
  border: none;
}

.description-word h1 {
  margin-top: 0;
  text-align: justify;
}

p {
  text-align: justify;
  font-size: larger;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  overflow: hidden;
}

.recommendation-container {
  width: calc(100% - 288px);
  height: 350px;
  position: absolute;
  top: 820px;
  background-color: #e5e5e5;
}

#page3 h1 {
  margin: 0;
}

.chart-option-box {
  min-width: 500px;
}
</style>