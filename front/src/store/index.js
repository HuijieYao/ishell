import { createStore } from 'vuex'

export default createStore({
    state: {
        Authorization: sessionStorage.getItem('Authorization') ? sessionStorage.getItem('Authorization') : '',
    },
    mutations: {
        changeLogin(state, user) {
            state.Authorization = user.Authorization;
            state.UserID = user.UserID;
            sessionStorage.setItem('Authorization', user.Authorization);
        }
    }
})
