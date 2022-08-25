<template>
  <div class="basic-info">
    <el-empty description="基本信息" v-if="!isLogin" />

    <el-scrollbar>
      <!-- 名片 -->
      <el-card class="basic-info-card" shadow="hover" v-if="isLogin">
        <div class="basic-info-card-photo" @click="changeProfilePhoto">
          <div class="basic-info-card-photo-box">
            <img :src="userInfo.profilePhoto" alt="profilePhoto" />
            <!-- <div class="basic-info-card-photo-box-content">
              <h3>更换头像</h3>
            </div>-->
          </div>
        </div>

        <el-descriptions class="basic-info-card-info" column="1" border>
          <el-descriptions-item label="用户名">{{ userInfo.username }}</el-descriptions-item>
          <el-descriptions-item label="邮&emsp;箱">{{ userInfo.email }}</el-descriptions-item>
          <el-descriptions-item label="手机号">{{ userInfo.phone }}</el-descriptions-item>
        </el-descriptions>

        <el-card class="basic-info-card-exit" shadow="never">
          <el-button v-if="isAdmin" @click="goToMallConsole">前往后台</el-button>
          <el-button type="primary" @click="logOut">安全退出</el-button>
          <!-- <el-button type="danger" @click="dialogVisible = true">注销账号</el-button> -->
        </el-card>
      </el-card>

      <el-dialog
        title="注&emsp;意"
        v-model="dialogVisible"
        width="400px"
        :close-on-click-modal="false"
        :close-on-press-escape="false"
      >
        <span>账号及其下所有内容将被永久清除！</span>
        <template #footer>
          <span class="dialog-footer">
            <el-button @click="dialogVisible = false">取 消</el-button>
            <el-button type="primary" @click="cancellationAccount">确 定</el-button>
          </span>
        </template>
      </el-dialog>
    </el-scrollbar>
  </div>
</template>

<script>
import { postRequest } from "@/utils/api";

export default {
  name: "BasicInfo",
  data() {
    return {
      isLogin: false,
      isAdmin: false,
      dialogVisible: false,
      userInfo: {
        username: "",
        email: "",
        phone: "",
        profilePhoto: "https://cube.elemecdn.com/9/c2/f0ee8a3c7c9638a54940382568c9dpng.png"
      }
    }
  },
  methods: {
    goToMallConsole() {
      this.$router.push("/mall/console");
    },
    getInfo() {
      this.isLogin = true;
      if (sessionStorage.getItem("USERINFO") === null) {
        const id = sessionStorage.getItem("UserID");
        if (id === null) {
          this.$router.push("/user/login");
        }
        postRequest("/getInfo?userID=" + id).then(resp => {
          if (resp && resp.status === 200) {
            const params = this.$qs.parse(resp.data);
            // this.userInfo.profilePhoto = params.photo;
            this.userInfo.username = params.name;
            this.userInfo.email = params.email;
            this.userInfo.phone = params.phonenumber;
            sessionStorage.setItem("USERINFO", this.$qs.stringify(this.userInfo));
          }
        });
      } else {
        this.userInfo = this.$qs.parse(sessionStorage.getItem("USERINFO"));
      }
    },
    logOut() {
      localStorage.clear();
      sessionStorage.clear();
      this.$router.replace("/user");
    },
    // cancellationAccount() {
    //   // TODO 注销账号
    //   this.$router.replace("/user");
    // },
    // changeProfilePhoto() {
    //   // TODO 换头像
    //   location.reload();
    // }
  },
  created() {
    if (sessionStorage.getItem("UserID") === "1") {
      this.isAdmin = true;
    }
  },
  mounted() {
    this.getInfo();
  },
}
</script>

<style scoped>
.basic-info {
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

.basic-info-card {
  width: 450px;
  padding: 0 !important;
  position: absolute;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -40%);
}

.basic-info-card-photo {
  padding: 10px 0;
  background-image: url("http://file.sarom.cn/ishell/public/infoBgi.png");
  background-size: cover;
  background-repeat: no-repeat;
}

.basic-info-card-photo-box {
  width: 100px;
  height: 100px;
  margin: 0 auto;
  position: relative;
  border-radius: 50%;
}

.basic-info-card-photo-box img {
  width: 100%;
  height: 100%;
  border-radius: 50%;
}

.basic-info-card-photo-box-content {
  color: white;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  display: none;
}

.basic-info-card-info,
.basic-info-card-exit {
  margin-top: 20px;
}

.basic-info-card-exit {
  border: none;
}

:deep(.basic-info-card-exit > .el-card__body) {
  padding: 0;
}
</style>