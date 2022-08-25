<template>
  <div class="logon">
    <div class="logon-main">
      <el-card class="logon-card">
        <!-- 页头 -->
        <el-page-header :icon="icon.arrowLeft" @back="goBack" content="注册" />

        <br />

        <!-- 注册表单 -->
        <div class="logon-box">
          <el-form :rules="rules" ref="form" :model="form" label-width="auto">
            <el-form-item prop="name">
              <el-input v-model="form.name" :prefix-icon="icon.user" placeholder="请输入用户名" />
            </el-form-item>

            <el-form-item prop="phone">
              <el-input v-model="form.phone" :prefix-icon="icon.phone" placeholder="请输入电话" />
            </el-form-item>

            <el-form-item prop="email">
              <el-input v-model="form.email" :prefix-icon="icon.message" placeholder="请输入邮箱" />
            </el-form-item>

            <el-form-item prop="validateCode">
              <el-row>
                <el-col :span="16">
                  <el-input
                    v-model="form.validateCode"
                    :prefix-icon="icon.key"
                    placeholder="请输入验证码"
                  />
                </el-col>
                <el-col :span="8">
                  <el-button class="logon-button" type="primary" plain @click="emailSent">获取验证码</el-button>
                </el-col>
              </el-row>
            </el-form-item>

            <el-form-item prop="password">
              <el-input
                v-model="form.password"
                :prefix-icon="icon.lock"
                placeholder="请输入密码"
                show-password
              />
            </el-form-item>

            <el-form-item prop="confirmPassword">
              <el-input
                v-model="form.confirmPassword"
                :prefix-icon="icon.lock"
                placeholder="请确认密码"
                show-password
              />
            </el-form-item>

            <el-form-item>
              <el-button class="logon-button" type="primary" @click="logon">注册</el-button>
            </el-form-item>
          </el-form>
        </div>

        <!-- 欢迎图片 -->
        <div class="logon-msg">
          <img src="http://file.sarom.cn/ishell/public/welcome.png" alt="Welcome" />
        </div>
      </el-card>
    </div>
  </div>
</template>

<script>
import { postRequest } from "@/utils/api";
import { JSEncrypt } from "jsencrypt";
import { ElMessage } from "element-plus";
import { ArrowLeft, User, Phone, Message, Key, Lock } from "@element-plus/icons-vue";

export default {
  name: "logon",
  data() {
    const checkPhone = (rule, value, callback) => {
      if (!value) {
        return callback(new Error("请输入手机号码"));
      } else if (!/^[1-9]\d{10}$/g.test(value)) {
        return callback(new Error("请输入11位手机号码"));
      } else {
        callback();
      }
    };
    const checkEmail = (rule, value, callback) => {
      if (!value) {
        return callback(new Error("请输入邮箱"));
      } else if (
        !/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/g.test(value)
      ) {
        return callback(new Error("请输入正确邮箱"));
      } else {
        callback();
      }
    };
    const checkPwd = (rule, value, callback) => {
      if (!value) {
        return callback(new Error("请再次确认密码"));
      } else if (this.form.password !== this.form.confirmPassword) {
        return callback(new Error("两次密码不一致"));
      } else {
        callback();
      }
    };
    return {
      icon: {
        arrowLeft: ArrowLeft,
        user: User,
        phone: Phone,
        message: Message,
        key: Key,
        lock: Lock,
      },
      form: {
        name: "",
        phone: "",
        email: "",
        validateCode: "",
        password: "",
        confirmPassword: "",
      },
      rules: {
        name: [{ required: true, message: "请输入用户名", trigger: "blur" }],
        phone: [{ required: true, validator: checkPhone, trigger: "blur" }],
        email: [{ required: true, validator: checkEmail, trigger: "blur" }],
        validateCode: [
          { required: true, message: "请输入验证码", trigger: "blur" },
          { min: 6, max: 6, message: "请输入6位验证码", trigger: "blur" },
        ],
        password: [
          { required: true, message: "请输入密码", trigger: "blur" },
          { min: 6, message: "密码至少6位", trigger: "blur" },
        ],
        confirmPassword: [
          { required: true, validator: checkPwd, trigger: "blur" },
        ],
      },
    };
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    emailSent() {
      if (this.form.email !== null) {
        postRequest("/sendmail?mail=" + this.form.email);
      }
    },
    logon() {
      const publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC+ZcY4d1hYsm4Obu3fjvx15YjB\n" +
        "MklCY0RZG24CGTWBdhNWlauVK4fQ1FClhtqv4WPbFDIUDF90A1jeKXGOUZn837XR\n" +
        "E5azHRhvqYGnYxE+36Ef/m9y35CSRpTlvffCLDvqARLDl2rGXg5j8sRRI2UcTNw3\n" +
        "jwowEYIUPlIPXNIdKQIDAQAB";
      let jse = new JSEncrypt();
      jse.setPublicKey(publicKey); // 设置公钥
      this.form.password = jse.encrypt(this.form.password); // RSA加密
      console.log(this.form.password);
      postRequest("/logons?" + this.$qs.stringify(this.form)).then(resp => {
        if (resp && resp.status === 200) {
          if (resp.data === "AlreadyExist") {
            ElMessage.warning("账号已存在");
          } else if (resp.data === "ValidationError") {
            ElMessage.error("验证码错误");
          } else if (resp.data === "FailedToLogon" || resp.data === "ServerError") {
            ElMessage.error("注册失败");
          } else {
            ElMessage.success("注册成功");
            this.$router.push("/user");
          }
        } else {
          ElMessage.error("注册失败");
        }
      });
    }
  },
};
</script>

<style scoped>
.logon {
  width: 100%;
  height: 100vh;
  background-image: url("http://file.sarom.cn/ishell/public/bgi.png");
}

.logon-main {
  width: calc(100% - 252px);
  padding: 0 22px;
  margin: 0 auto;
}

.logon-card {
  width: 884px;
  padding-left: 20px;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  opacity: 0.8;
}

.logon-msg {
  width: 412px;
  height: 412px;
  float: left;
  margin-left: 20px;
}

.logon-msg img {
  width: 100%;
  height: 100%;
}

.logon-box {
  width: 412px;
  height: 412px;
  float: left;
}

.logon-button {
  float: right;
}
</style>