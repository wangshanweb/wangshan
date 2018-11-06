<template>
    <div class="app-video">
        <div class="mui-card">          
            <mt-swipe :auto="4000">
                <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url" />
                </mt-swipe-item>
            </mt-swipe>         
        </div>
        <div class="vtwo">
            <div>
                <img src="../../img/zhu1.png" >
                    <p>关注主播</p>
            </div>
            <div>
                <img src="../../img/zhi1.png" alt="">
                    <p>直播中心</p>
            </div>
            <div>
                <img src="../../img/sou1.png">
                    <p>搜索直播</p>
            </div>
            <div>
                <img src="../../img/quan1.png">
                    <p>全部分类</p>
            </div>
        </div>
        <div class="vthree">
            敬请期待...:)
        </div>
        <div class="vfour" @click="showMe()">
            <div class="vme">
                <img src="../../img/wo.png" class="me">
                <img src="../../img/jiantou.png" class="next">
            </div>
        </div>
        <div class="aboutMe animated fadeInDown" v-show="show">
            <div class="Intro">
                <div class="close" @click="closeMe()">X</div>
                <div class="Iabout">关于</div>
                <div class="Icontainer">
                    <div class="Iname">王珊</div>
                    <div class="Ijob">求职意向:<span>
                        web前端工程师</span></div>
                    <div> <span>个人信息:</span>
                        <span class="Iuniversity">河北工业大学城市学院(本科)</span><br>
                        <span class="Imsg">18722230025</span><br>
                        <span class="Imsg">911685082@qq.com</span>
                    </div>
                    <div>技术栈：
                        <span>
                    【前端】HTML/HTML5 CSS/CSS3 JavaScript(ES6,ES5) SASS   
                        Vue.JS   AJAX  jQuery Angular 微信小程序  </span><br>
                        <span>
                    【后端】Node.js (express)</span><br>
                    <span>
                    【数据库】MySql</span><br>
                    <span>
                    【自动化构建】Webpack</span><br>
                    </div>
                    <div>个人网站: <a href="#"></a>
                </div>
              </div>  
            </div>
        </div>
    </div>
</template>
<script>
 //加载当前组件需要第三方模块
     import {Toast} from "mint-ui";
    export default{
        data(){            
            return{
                show:false,
                list:[],
                
            }
        },
        methods:{
             getImageList(){
                var url="imagelist/list";
                this.$http.get(url).then(result=>{
                   // console.log(result);
                    if(result.body.code==1){
                        this.list=result.body.msg;
                    }else{
                        Toast("加载图片路播失败....");
                    }
                })
            },
            showMe(){
                this.show=!this.show;
            },
            closeMe(){
                this.show=!this.show;
            }
        },
        created() {
            this. getImageList();
            
        },
    }
</script>
<style>
.mui-card{
    border-radius: 8px !important;
}
/*图片轮播组件高度为0 */
 .mui-card .mint-swipe{
    height:12.5rem;   
  }
  .app-video .mint-swipe img{
    width:100%;
    height:12.5rem;
  }
  .vtwo{
      background-color:#fff;
      height: 4rem;
      display: flex;
      justify-content: space-around;
      margin: 0;
  }
  .vthree{
      margin-top: 0.6rem;
      background-color:#fff;
      line-height: 3;
      padding-left: 1rem;
  }
 .app-video .vme{
      width:6rem;
      height:6rem;
      border-radius: 50% !important;
     background-color: #FA7198;
     display: flex;
     justify-content: center;
     align-items: center;
     position: absolute;
     top:82%;
     left:68%;
  }
   .app-video .vme .me{
       border-radius: 50% !important;
   }
    .app-video .vme .next{
         border-radius: 50% !important;
    }
   .vfour{
       height:100px;
       width: 100%;
   }
.aboutMe{
    background-color: rgba(7,17,27,.6);
    width: 100%;
    height:100%;
    z-index: 99;
    position: fixed;
    top:0;
    left: 0;
    /*display:none;*/
}
.Intro{
    width:90%; height:85%;
    background-color: #FA9da5;
    position: fixed; top:8%;left:5%; right: 5%;
    overflow: hidden;
    font-size: 14px;
    
}
.close{
    position: absolute;
    top:1.2rem;
    right:1.5rem;
    color: #9c9c9c;
}
.Iabout{
    text-align: center;
    margin-top: 1.9rem;
}
.Icontainer{
 margin-left: 1rem; 
}
.Iname{
    margin-top: 2rem;    
    font-weight:bold;
    font-size: 18px;
}
.Ijob{
    margin-top: 2rem;
      
}
.Ijob>span{
   margin-left: 1.5rem;
}
.Iuniversity{
    margin-left: 2rem;
}
.Imsg{
    position: relative;
    margin-left: 6rem;
}
</style>

