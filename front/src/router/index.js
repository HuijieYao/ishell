import { createRouter, createWebHistory } from 'vue-router';
import { postRequest } from "@/utils/api";

const routes = [
    {
        path: '/',
        name: 'Home',
        component: () => import('../views/Home.vue')
    },
    {
        path: '/identify',
        name: 'Identify',
        component: () => import('../views/Identify.vue')
    },
    {
        path: '/analysis',
        name: 'Analysis',
        component: () => import('../views/Analysis.vue')
    },
    {
        path: '/mall',
        name: 'Mall',
        component: () => import('../views/Mall.vue')
    },
    {
        path: '/user',
        name: 'User',
        component: () => import('../views/User.vue')
    },
    {
        path: '/userCenter',
        name: 'UserCenter',
        component: () => import('../views/UserCenter.vue'),
    },
    {
        path: '/user/login',
        name: 'Login',
        component: () => import('../components/User/Login.vue')
    },
    {
        path: '/user/logon',
        name: 'Logon',
        component: () => import('../components/User/Logon.vue')
    },
    {
        path: '/mall/console',
        name: 'MallConsole',
        component: () => import('../views/MallConsole.vue')
    }
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

/**
 * 判断 token 是否有效
 *
 * @return Promise
 */
async function checkToken() {
    if (sessionStorage.getItem("Authorization") != null) {
        sessionStorage.setItem("Authorization", localStorage.getItem("Authorization"));
    }
    const token = sessionStorage.getItem("Authorization");
    if (token != null) {
        return await new Promise((resolve, reject) => {
            postRequest("/checkToken?token=" + token).then(res => {
                resolve(res.data);
                return res.data;
            }).catch(err => {
                reject(err.data)
            });
        });
    } else {
        return false;
    }
}

/**
 * 路由前置守卫
 * <p>
 * 判断是否为登陆状态
 */
router.beforeEach(async (to, from, next) => {
    let flag = await checkToken();
    if (flag && !sessionStorage.getItem("UserID")) {
        if (localStorage.getItem("UserID")) {
            sessionStorage.setItem("UserID", localStorage.getItem("UserID"));
        } else {
            flag = false;
        }
    }
    if (to.path === "/user") {
        if (flag) {
            next("/userCenter");
        } else {
            next("/user/login");
        }
    } else if (to.path.indexOf("/user/userCenter/") !== -1) {
        if (flag) {
            next();
        } else {
            next("/user/login");
        }
    } else {
        next(); // 必须以 next() 结尾，否则进入死循环
    }
});

export default router