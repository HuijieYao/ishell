<template>
  <div class="more-settings">
    <el-empty description="安全设置" v-if="isLogin === false"></el-empty>
    <div class="more-settings-card-container">
      <el-card class="more-settings-card-safe" shadow="never" v-if="isLogin === true">
        <!--suppress HtmlUnknownAttribute -->
        <template #header>
          <div class="more-settings-card-safe-header">
            <span>安全设置 </span>
          </div>
        </template>
        <div v-for="o in 4" :key="o" class="text item">
          {{ '列表内容 ' + o }}
        </div>
      </el-card>
      <el-card class="more-settings-card-article" shadow="never" v-if="isLogin === true">
        <!--suppress HtmlUnknownAttribute -->
        <template #header>
          <div class="more-settings-card-article-header">
            <span>创作设置</span>
          </div>
        </template>
        <div class="more-settings-card-article-item">
          <span>启用创作</span>
          <el-switch v-model="enable_creation" active-value="true" inactive-value="false"
                     :loading="articleAccessLoading"
                     :before-change="beforeArticleAccessChange" @change="switchArticleSettings"/>
        </div>
        <div class="more-settings-card-article-item">
          <span>显示统计</span>
          <el-switch v-model="enable_statistics" active-value="true" inactive-value="false"
                     :disabled="!enable_creation"/>
        </div>
      </el-card>
    </div>
  </div>
</template>

<script>
import {reactive, toRefs} from "vue";
import {ElMessage} from "element-plus";

export default {
  name: "MoreSettings",
  setup() {
    const ArticleAccessStatus = reactive({
      articleAccessLoading: false
    });
    const beforeArticleAccessChange = () => {
      ArticleAccessStatus.articleAccessLoading = true;
      return new Promise(resolve => {
        setTimeout(() => {
          ArticleAccessStatus.articleAccessLoading = false;
          ElMessage.success('切换成功');
          return resolve(true);
        }, 1000);
      });
    }
    return {
      ...toRefs(ArticleAccessStatus),
      beforeArticleAccessChange
    }
  },
  beforeMount() {
    if (sessionStorage.getItem("enable_creation") && sessionStorage.getItem("enable_statistics")) {
      this.enable_creation = sessionStorage.getItem("enable_creation");
      this.enable_statistics = sessionStorage.getItem("enable_statistics");
    }
  },
  data() {
    return {
      isLogin: true,
      enable_creation: false,
      enable_statistics: false
    }
  },
  methods: {
    switchArticleSettings() {
      this.contributionAccess = this.enable_creation;
      this.$store.commit("changeArticleAccess", this.enable_creation);
    }
  }
}
</script>

<style scoped>
.more-settings {
  width: 100%;
  position: relative;
  text-align: justify !important;
}

.more-settings-card-container {
  width: 95%;
  position: absolute;
  top: 0;
  left: 50%;
  transform: translate(-50%, -0%);
}

.more-settings-card-safe, .more-settings-card-article {
  margin-top: 20px;
}

.more-settings-card-article-item {
  width: 100%;
  height: 40px;
}

.more-settings-card-article-item span {
  display: inline-block;
  height: 24px;
  margin: 8px 10px 0 0;
}
</style>