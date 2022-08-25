<template>
  <div class="identify">
    <el-container>
      <el-header>
        <Header />
      </el-header>
      <el-main>
        <div class="upload-box">
          <el-upload
            class="imgUpload"
            drag
            ref="upload"
            :data="{userId: this.userId}"
            :action="uploadUrl"
            accept="image/*"
            :limit="1"
            :on-error="uploadFail"
            :before-upload="beforeUpload"
            :on-success="uploadSuccess"
            clearFiles
            name="file"
          >
            <el-icon class="el-icon--upload">
              <upload-filled />
            </el-icon>
            <div class="el-upload__text">
              将文件
              <em>拖到此处</em>，或
              <em>点击上传</em>
            </div>
            <template #tip>
              <div class="el-upload__tip">只能上传 jpg/png 文件，且不超过 1M</div>
            </template>
          </el-upload>
          <div class="upload-description">
            <h1>识别操作：</h1>
            <p>拖动图片到上面的上传栏中，或者点击上传栏，选中你想要上传的图片，上传成功即可开始识别。</p>
            <p>等待识别结束后，返回结果将显示在右侧的结果框中。</p>
          </div>
        </div>
        <div class="identify_result">
          <!--搜索框-->
          <div class="search" ref="search">
            <div class="search2">
              <div class="changeSearch">
                <el-dropdown size="large" split-button type="primary">
                  {{ nowSearch }}
                  <template #dropdown>
                    <el-dropdown-menu>
                      <el-dropdown-item @click="ChangeSearch('具体贝类')">具体贝类</el-dropdown-item>
                      <el-dropdown-item @click="ChangeSearch('分类')">分类</el-dropdown-item>
                    </el-dropdown-menu>
                  </template>
                </el-dropdown>
              </div>
              <el-autocomplete
                size="large"
                v-model="input.string"
                placeholder="请输入贝类中文名或学名"
                :fetch-suggestions="querySearch"
              />
              <el-button class="searchButton" size="large" type="primary" @click="search">搜索</el-button>
            </div>
          </div>
          <!--数据展示-->
          <div class="show_shell" ref="show_shell">
            <!--路径-->
            <div class="hearder">
              <p style="float: left;">当前路径:</p>
              <div v-for="item of path.length" :key="item" style="display: inline-block;">
                <div style="display:flex;">
                  <p @click="go(path[item-1])" class="path">{{ path[item - 1].name }}</p>
                  <p>//</p>
                </div>
              </div>
            </div>
            <div class="show">
              <!--显示贝类框-->
              <div v-for="item of show_shell_data.length" :key="item" class="shell-box">
                <div
                  class="shell"
                  :style="{backgroundImage: 'url(' + (show_shell_data[item-1].img ? show_shell_data[item-1].img : baseImg) + ')'}"
                  @click="go(show_shell_data[item-1])"
                >
                  <div
                    class="text"
                    v-if="show_shell_data[item-1].name.length!==0"
                  >{{ show_shell_data[item - 1].name }}</div>
                  <div
                    class="text"
                    v-else-if="show_shell_data[item-1].sname"
                  >{{ show_shell_data[item - 1].sname }}</div>
                </div>
              </div>
            </div>
            <!--页数框-->
            <div class="footer">
              <div style="position: absolute;bottom: 0;right: 0;">
                <el-pagination
                  background
                  layout="prev, pager, next, jumper"
                  v-model:page-count="all_page"
                  :current-page="currentPage"
                  @current-change="handleCurrentChange"
                />
              </div>
              <div class="page">共{{ all_shell_data.length }}条数据</div>
            </div>
          </div>
        </div>
        <div class="sub-page" v-show="noHidden">
          <Recommendation :shellData="shellData" @CloseRecommendation="CloseRecommendation" />
        </div>
      </el-main>
    </el-container>
  </div>
</template>

<script>
import Header from "@/components/public/Header";
import Recommendation from "@/components/Home/Recommendation";
import { UploadFilled } from "@element-plus/icons-vue";
import { getRequest } from "@/utils/api";
import { ElLoading } from 'element-plus'
import { ElMessage } from 'element-plus/lib/components';

export default {
  name: "Identify",
  components: {
    Header,
    Recommendation,
    UploadFilled,
  },
  data() {
    return {
      userId: sessionStorage.getItem('UserID'),
      shellData: {},
      nowSearch: "具体贝类",
      baseImg: "http://file.sarom.cn/ishell/public/base.png",
      uploadUrl: "http://127.0.0.1:8087/identify/one",
      noHidden: false,
      file: [],
      input: { string: "" },//搜索框存放的查询文本
      show_shell_data: [], //正在显示的数据
      all_shell_data: [{ 'name': '软体动物门' }],  //所有的数据
      all_page: 1,  //总页数
      path: [{ name: '源' }],//显示当前的路径
      currentPage: 1,
      isSearch: false,
      callback: []
    }
  },
  mounted() {
    this.show();
  },
  methods: {
    //关闭贝类详情页
    CloseRecommendation() {
      this.noHidden = false;
    },
    //改变搜索方式
    ChangeSearch(str) {
      this.nowSearch = str;
    },
    //获取当前账号搜索历史
    querySearch(queryString, callback) {
      //如果在上次获得记录后没进行过搜索操作，则直接返回上次获得的记录
      if (!this.isSearch) {
        //发送请求查询后端浏览记录
        let userId = sessionStorage.getItem("UserID");
        if (userId === undefined || userId === null)
          userId = -1;
        getRequest("/shellfish/getS_History?userId=" + userId).then(resp => {
          this.callback = [];
          for (let i = 0; i < resp.data.length; i++) {
            this.callback.push({ value: resp.data[i] });
          }
          this.isSearch = true;
          callback(this.callback);
        })
      } else {
        callback(this.callback);
      }
    },
    //显示|关闭加载框
    Loading(loading) {
      if (loading === true)
        this.loading = ElLoading.service({
          lock: loading,
          text: '正在识别中',
          background: 'rgba(0, 0, 0, 0.7)',
          target: document.querySelector('.identify_result')
        })
      else
        this.loading.close();
    },
    //上传失败
    uploadFail(response) {
      this.Loading(false);
      this.$refs.upload.clearFiles();//清除上传的文件列表 方便下一次上传
    },
    //上传之前
    beforeUpload(file) {
      if (sessionStorage.getItem("Authorization")) {
        this.Loading(true);
        return true;
      } else {
        ElMessage.error("请先登录");
        return false;
      }
    },
    //上传成功
    uploadSuccess(response, file, fileList) {
      this.all_shell_data = [];
      this.all_shell_data.push(response);
      this.show();
      this.path = [{ name: '源' }];
      this.$refs.upload.clearFiles();//清除上传的文件列表 方便下一次上传
      this.Loading(false);//加载框
    },
    //更新页数
    handleCurrentChange(currentPage) {
      if (currentPage !== null) {
        this.currentPage = currentPage;
        this.page_turn(currentPage);
      }
    },
    //搜索框搜索
    search() {
      let userId = sessionStorage.getItem("UserID");
      let string = this.input.string.split(" ").join("");//去除空格
      if (string.length === 0) {
        console.log("输入内容为空或都是无效字符");
      } else {
        if (this.nowSearch === "分类") {
          getRequest("/shellfish/search_class?string=" + string + "&userId=" + userId).then(resp => {
            this.all_shell_data = [];
            for (let i = 0; i < resp.data.length; i++) {
              this.all_shell_data.push(resp.data[i]);
            }
            this.path = [{ name: '源' }];
            this.isSearch = false;
            this.show();
          })
        } else {
          getRequest("/shellfish/search?string=" + string + "&userId=" + userId).then(resp => {
            this.all_shell_data = [];
            for (let i = 0; i < resp.data.length; i++) {
              this.all_shell_data.push(resp.data[i]);
            }
            this.path = [{ name: '源' }];
            this.isSearch = false;
            this.show();
          });
        }
      }
    },
    //更新显示框显示
    show() {
      let all_page = Math.trunc(Number(this.all_shell_data.length / 10));//计算总页数
      if (all_page === 0 || all_page === null)//为总页数赋值
        this.all_page = 1;
      //去第一页
      else
        this.all_page = all_page + 1;
      this.page_turn(1);
    },
    //翻页
    page_turn(current) {
      //翻页操作
      let now_page = current;
      let all_nums = this.all_shell_data.length;
      this.show_shell_data = [];//初始化当前展示的数据
      for (let i = (now_page - 1) * 10; i < (now_page) * 10 && i < all_nums; i++) {
        this.show_shell_data.push(this.all_shell_data[i]);
      }
    },
    //点击显示框后进行查询
    go(message) {
      let name = message.name;
      switch (name[name.length - 1]) {
        case "门":
          getRequest("/shellfish/classification").then(resp => {
            //修改显示
            this.all_shell_data = [];
            this.all_shell_data = resp.data;
            this.show();
            this.changePath(name);
          })
          break;
        case "纲":
          getRequest("/shellfish/order?classification=" + name).then(resp => {
            //修改显示
            this.all_shell_data = [];
            this.all_shell_data = resp.data;
            this.show();
            this.changePath(name);
          })
          break;
        case "目":
          getRequest("/shellfish/family?order=" + name).then(resp => {
            //修改显示
            this.all_shell_data = [];
            this.all_shell_data = resp.data;
            this.show();
            this.changePath(name);
          })
          break;
        case "科":
          getRequest("/shellfish/genus?family=" + name).then(resp => {
            //修改显示
            this.all_shell_data = [];
            this.all_shell_data = resp.data;
            this.show();
            this.changePath(name);
          })
          break;
        case "属":
          getRequest("/shellfish/shellfish?genus=" + name).then(resp => {
            //修改显示
            this.all_shell_data = [];
            this.all_shell_data = resp.data;
            this.show();
            this.changePath(name);
          })
          break;
        case "源":
          this.all_shell_data = [{ name: '软体动物门' }];
          this.show();
          this.path = [{ name: '源' }];
          break;
        default://展示物种页面
          getRequest("/shellfish/get?id=" + message.id).then(resp => {
            this.shellData = resp.data;
            this.noHidden = true;
          })
          break;
      }
    },
    changePath(string) {//修改路径
      getRequest('/identify/path?string=' + string).then(resp => {
        let new_path = [{ name: "源" }];
        for (let i = 0; i < resp.data.length; i++) {
          new_path.push({ name: resp.data[i] });
        }
        this.path = new_path;
      });
    }
  }
}
</script>

<style scoped>
.el-main {
  display: flex;
  padding: 0 20px;
  height: calc(100vh - 60px);
}

.upload-box {
  flex: 1;
  padding: 20px;
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;
  background-color: #f1f1f1;
}

.identify_result {
  flex: 4;
  padding: 20px;
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
  background-image: url("http://file.sarom.cn/ishell/public/identify_result.png");
  background-repeat: round;
}

.upload-description {
  padding: 10px;
  border-radius: 5px;
  border: #e2e2e2 2px dashed;
  margin-top: 10px;
  color: #606266;
}

.sub-page {
  width: 70%;
  height: 50%;
  margin: auto;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
}

.path:hover {
  color: #00c4ff;
  flex: 1;
  cursor: pointer;
}

.page {
  position: absolute;
  bottom: 0;
  font-size: 25px;
}

.hearder {
  font-size: 25px;
  height: 10%;
  width: 100%;
  top: 0;
}

.footer {
  height: 10%;
  position: absolute;
  bottom: 0;
  width: 100%;
}

@keyframes first {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}

@keyframes second {
  0% {
    transform: rotate(360deg);
  }
  100% {
    transform: rotate(0deg);
  }
}

.text {
  text-shadow: 0 0 10px rgba(255, 255, 255, 0.8);
  font-size: 24px;
  color: #fff;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.shell {
  height: 150px;
  width: 150px;
  border-radius: 100px;
  margin-right: 0.8cm;
  margin-left: 1cm;
  margin-top: 0.9cm;
  background-repeat: round;
  justify-content: center;
  align-items: center;
  display: flex;
  cursor: pointer;
}

.shell:hover {
  animation: first 2s linear infinite;
}

.shell:hover .text {
  animation: second 2s linear infinite;
}

.show_shell {
  height: 75%;
  position: relative;
}

.shell-box {
  display: inline-block;
}

:deep(.el-pagination span:not([class*="suffix"])),
:deep(.el-input--mini) {
  font-size: 24px;
  color: black;
}

:deep(.el-autocomplete) {
  width: 70%;
}

.el-dropdown-menu__item {
  font-size: 24px;
  width: 160px;
}

:deep(.el-button-group > .el-button:first-child) {
  border-radius: 50px 0 0 50px;
  width: 80%;
}

:deep(.el-button-group > .el-button) {
  width: 20%;
}

.searchButton {
  border-radius: 0 50px 50px 0;
}

.show {
  position: absolute;
  width: 100%;
  height: 500px;
  overflow: hidden;
}

.search {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  height: 25%;
}

.search2 {
  width: 80%;
  height: 80%;
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>