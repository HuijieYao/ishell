import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import axios from 'axios'
import VueAxios from 'vue-axios'
import qs from 'qs'
import mitt from "mitt"
import locale from 'element-plus/lib/locale/lang/zh-cn' //echarts中文

window.echarts = require('echarts');

axios.defaults.withCredentials = true;
axios.defaults.baseURL = '/api';

const app = createApp(App)

app.config.globalProperties.$mybus = new mitt();
app.config.globalProperties.$axios = axios;
app.config.globalProperties.$qs = qs;

app.use(ElementPlus,{locale}).use(VueAxios, axios).use(store).use(router).mount('#app')