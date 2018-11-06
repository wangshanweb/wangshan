import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"

//引入推荐组件
import recommend from "./components/recommend/recommend.vue"
import recomDetail from './components/recommend/recomDetail.vue'
//引入分区组件
import part from "./components/part/part.vue"
//引入发现组件
import find from "./components/find/find.vue"
//直播组件
import video from "./components/video/video.vue"
Vue.use(Router)

export default new Router({
  routes: [
   {path:'/',redirect:"/recommend"},
    {path:'/recommend',component:recommend},
    {path:'/recomDetail/:rid',component:recomDetail},
    {path:'/part',component:part},
    {path:'/find',component:find},
    {path:'/video',component:video},
  ],linkActiveClass:"active" 
})
