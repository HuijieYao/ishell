import axios from 'axios'

axios.defaults.timeout = 60000;
axios.defaults.headers = {
    // 公共请求头配置
}
axios.defaults.baseURL = 'http://localhost:8082/api'; // 配置接口地址

// POST传参序列化(添加请求拦截器)
axios.interceptors.request.use((config) => {
    if (config.method === 'get') {
        config.data = true;
    }
    if (sessionStorage.getItem('Authorization')) {
        // 已经登录
        config.headers.Authorization = sessionStorage.getItem('Authorization');
    }
    return config;
}, (error) => {
    // console.log('错误的传参')
    return Promise.reject(error);
});

// 返回状态判断(添加响应拦截器)
axios.interceptors.response.use((res) => {
    if (!res.data.success) {
        return Promise.resolve(res);
    }
    return res;
}, (error) => {
    if (error.response.status === 401) {
        // 授权过期
        sessionStorage.removeItem('Authorization');
    }
    return Promise.reject(error);
});

// 返回一个Promise(发送post请求)
export function postRequest(url, params) {
    return new Promise((resolve, reject) => {
        axios.post(url, params).then(response => {
            resolve(response);
        }, err => {
            reject(err);
        }).catch((error) => {
            reject(error);
        });
    });
}

// 返回一个Promise(发送get请求)
export function getRequest(url, param) {
    return new Promise((resolve, reject) => {
        axios.get(url, { params: param }).then(response => {
            resolve(response);
        }, err => {
            reject(err);
        }).catch((error) => {
            reject(error);
        });
    });
}