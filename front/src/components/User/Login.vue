<template>
  <div class="login">
    <div class="loginMain">
      <el-card class="loginCard">
        <div class="msg">
          <img src="http://file.sarom.cn/ishell/public/login.png" alt="Login" />
        </div>
        <div class="loginBox">
          <h1>登录</h1>
          <br />
          <el-form :rules="rules" ref="form" :model="form" label-width="auto">
            <el-form-item>
              <el-input
                v-model="form.account"
                :prefix-icon="icon.user"
                placeholder="请输入账号"
                autocomplete="off"
              ></el-input>
            </el-form-item>
            <el-form-item prop="password">
              <el-input
                v-model="form.password"
                :prefix-icon="icon.lock"
                placeholder="请输入密码"
                show-password
                autocomplete="off"
              ></el-input>
            </el-form-item>
            <el-form-item>
              <el-row>
                <el-col :span="18">
                  <el-input
                    v-model="form.code"
                    :prefix-icon="icon.key"
                    placeholder="请输入验证码"
                    autocomplete="off"
                  ></el-input>
                </el-col>
                <el-col :span="6">
                  <el-image class="verify-code-img" :src="verifyUrl" @click="updateVerifyCode"></el-image>
                </el-col>
              </el-row>
            </el-form-item>
            <el-form-item>
              <el-checkbox class="remember-me" v-model="remember">记住我</el-checkbox>
              <el-button type="text" class="forgetPwd" @click="dialogForgetFormVisible = true">忘记密码</el-button>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" @click="onSubmit">登录</el-button>
              <el-button plain @click="logon">注册</el-button>
            </el-form-item>
          </el-form>
        </div>
      </el-card>
    </div>
    <el-dialog
      title="忘记密码"
      v-model="dialogForgetFormVisible"
      :close-on-click-modal="false"
      width="400px"
      top="30vh"
      @close="closeDialog('dialog')"
    >
      <el-form
        :model="forgetForm"
        :rules="rules"
        v-if="forgetPwdEmailChecked === false"
        ref="dialog"
      >
        <el-form-item prop="email">
          <el-input
            v-model="forgetForm.email"
            autocomplete="off"
            :prefix-icon="icon.message"
            placeholder="请输入预留邮箱"
          ></el-input>
        </el-form-item>
        <el-form-item prop="fPwdVerificationCode">
          <el-row>
            <el-col :span="16">
              <el-input
                v-model="forgetForm.verificationCode"
                :prefix-icon="icon.key"
                placeholder="请输入验证码"
              ></el-input>
            </el-col>
            <el-col :span="8">
              <el-button type="primary" plain class="fPwdFvcBtn" @click="emailSent">获取验证码</el-button>
            </el-col>
          </el-row>
        </el-form-item>
      </el-form>
      <el-form :model="forgetForm" :rules="rules" v-if="forgetPwdEmailChecked === true">
        <el-form-item prop="fPwdPassword">
          <el-input v-model="forgetForm.password" :prefix-icon="icon.lock" placeholder="请输入密码"></el-input>
        </el-form-item>
        <el-form-item prop="fPwdConfirmPassword">
          <el-input
            v-model="forgetForm.confirmPassword"
            :prefix-icon="icon.lock"
            placeholder="请确认密码"
          ></el-input>
        </el-form-item>
      </el-form>
      <template #footer>
        <span class="dialog-footer">
          <el-button @click="dialogForgetFormVisible = false">取 消</el-button>
          <el-button
            type="primary"
            @click="forgetPwdEmailChecked = true"
            v-if="forgetPwdEmailChecked === false"
          >确 定</el-button>
          <el-button type="primary" v-if="forgetPwdEmailChecked === true">确 定</el-button>
        </span>
      </template>
    </el-dialog>
  </div>
</template>

<script>
import { mapMutations } from 'vuex';
import { ElMessage } from "element-plus";
import { postRequest, getRequest } from "@/utils/api";
import { User, Lock, Key, Message } from "@element-plus/icons-vue";

export default {
  name: "login",
  setup() {
    return {
      icon: {
        user: User,
        lock: Lock,
        key: Key,
        message: Message,
      },
      emailSent() {
        ElMessage({
          showClose: true,
          message: "验证码已发送，有效时间10分钟",
          type: "success",
        });
      },
    };
  },
  data() {
    const checkPwd = (rule, value, callback) => {
      if (this.form.account && !value) {
        return callback(new Error("请输入密码"));
      } else {
        callback();
      }
    };
    const checkFPwd = (rule, value, callback) => {
      if (!value) {
        return callback(new Error("请再次确认密码"));
      } else if (this.forgetForm.password !== this.forgetForm.confirmPassword) {
        return callback(new Error("两次密码不一致"));
      } else {
        callback();
      }
    };
    return {
      form: {
        account: "",
        password: "",
        code: "",
      },
      forgetForm: {
        email: "",
        verificationCode: "",
        password: "",
        confirmPassword: "",
      },
      remember: false,
      loading: false,
      dialogForgetFormVisible: false,
      forgetPwdEmailChecked: false,
      verifyUrl: "/api/getVerify?time=" + new Date(),
      rules: {
        password: [{ required: true, validator: checkPwd, trigger: "blur" }],
        email: [
          { required: true, message: '请输入邮箱', trigger: "blur" },
          {
            required: true,
            pattern: /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/g,
            message: '请输入正确邮箱',
            trigger: "blur"
          }
        ],
        fPwdVerificationCode: [
          { required: true, message: "请输入验证码", trigger: "blur" },
          { min: 6, max: 6, message: "请输入6位验证码", trigger: "blur" },
        ],
        fPwdPassword: [
          { required: true, message: "请输入密码", trigger: "blur" },
          { min: 6, message: "密码至少6位", trigger: "blur" },
        ],
        fPwdConfirmPassword: [
          { required: true, validator: checkFPwd, trigger: "blur" },
        ],
      },
    };
  },
  methods: {
    ...mapMutations(['changeLogin']),
    /**
     * 获取登录验证码
     * <p>
     * 调用 getVerify 接口随机生成六位验证码图片
     */
    updateVerifyCode() {
      this.verifyUrl = "/api/getVerify?time=" + new Date();
    },
    /**
     * 提交登录信息
     * <p>
     * 调用 logins 接口获取 token <p>
     * 如果 token 获取成功则调用 getUserID 接口获取用户 ID <p>
     * 如果用户 ID 获取成功则调用 getSettings 接口获取用户配置 <p>
     * 仅当所需信息获取完整时才可成功登录
     */
    onSubmit() {
      this.$refs.form.validate((valid) => {
        let that = this;
        this.loading = true;
        if (valid) {
          // 调用登录接口
          postRequest("/logins?account=" + this.form.account + "&password=" + this.form.password + "&validateCode=" + this.form.code).then(async resp => {
            if (resp && resp.status === 200) {
              if (resp.data === "PasswordError") {
                ElMessage.error("密码错误");
              } else if (resp.data === "ValidationError") {
                ElMessage.error("验证码错误");
              } else if (resp.data === "NoSuchUser") {
                ElMessage.warning("用户不存在");
              } else {
                let isInfoGot = true;
                // 将用户 token 保存到 vuex 中
                that.changeLogin({ Authorization: resp.data });
                // 登录成功则先获取用户 ID
                await postRequest("/getUserID?account=" + this.form.account).then(async res => {
                  if (res && res.status === 200) {
                    sessionStorage.setItem("UserID", res.data);
                  } else {
                    isInfoGot = false;
                  }
                });
                that.loading = false;
                if (isInfoGot) {
                  if (that.remember === true) {
                    localStorage.setItem("Authorization", sessionStorage.getItem("Authorization"));
                    localStorage.setItem("UserID", sessionStorage.getItem("UserID"));
                  }
                  ElMessage.success("登录成功");
                  that.$router.replace("/mall");
                } else {
                  ElMessage.error("信息获取失败");
                }
              }
            }
          });
        } else {
          ElMessage.error("登录失败");
        }
      });
    },
    /**
     * 注册跳转
     * <p>
     * 跳转注册页面
     */
    logon() {
      this.$router.push("/user/logon");
    },
    /**
     * 关闭对话框
     * <p>
     * 关闭[忘记密码]对话框
     *
     * @param type 接收参数
     */
    closeDialog(type) {
      if (type) {
        this.$refs[type].resetFields()
      }
    }
  }
};
</script>

<style scoped>
.login {
  width: 100%;
  height: 100vh;
  background-image: url("http://file.sarom.cn/ishell/public/bgi.png");
}

.loginMain {
  width: calc(100% - 252px);
  padding: 0 22px;
  margin: 0 auto;
}

.loginCard {
  width: 800px;
  height: 430px;
  padding-right: 20px;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  opacity: 0.8;
}

.msg {
  width: 390px;
  height: 390px;
  float: left;
  margin-right: 20px;
}

.msg img {
  width: 100%;
  height: 100%;
}

.loginBox {
  width: 350px;
  height: 350px;
  float: left;
}

.forgetPwd {
  margin-left: auto;
}

.fPwdFvcBtn {
  float: right;
}

.verify-code-img {
  height: 32px;
  float: right;
}
</style>