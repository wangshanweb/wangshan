import Vue from 'vue'
import App from './App.vue'
import router from './router'
Vue.config.productionTip = false

import'mint-ui/lib/style.css'
//引入自定义mint-uicss
// import './assets/css/my-mint.scss';

/*轮播组件Header,*/
import { Swipe,SwipeItem,Navbar,TabItem, TabContainer, TabContainerItem,Cell} from 'mint-ui';

/*注册组件
Vue.component(Header.name,Header);*/
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(Navbar.name,Navbar);
Vue.component(TabItem.name,TabItem);
Vue.component(TabContainer.name, TabContainer);
Vue.component(TabContainerItem.name, TabContainerItem);
Vue.component(Cell.name, Cell);

import VueResource from "vue-resource"
//4:加载(注册)VueResource
Vue.use(VueResource);

//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";


// 导入 MUI 的样式表， 和 Bootstrap 用法没有差别
import './lib/mui/css/mui.css'
// 导入 MUI 的样式表，扩展图标样式，购物车图标
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'
//import './lib/mui/js/mui.js'
import './lib/mui/css/animate.css'

//6:设置全局ajax访问基础路径
Vue.http.options.root = "http://127.0.0.1:8000/";
//7:设置全局ajax post 访问格式
Vue.http.options.emulateJSON =  true;
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
