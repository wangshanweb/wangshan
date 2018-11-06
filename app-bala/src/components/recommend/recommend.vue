<template>
    <div class="app">      
        <!-- 轮播图 -->
        <div class="mui-card">  
            <mt-swipe :auto="4000">
                <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url" />
                </mt-swipe-item>
            </mt-swipe>
        </div>
        <div class="bottom">
            <div class="two">
                <div class="Rtleft">
                    <img src="../../img/huangguan.png" >
                    <span>热门推荐</span>
                </div>
                <div class="Rtright">
                    <img src="../../img/paihangbang.png">
                </div>
            </div>
            <div class="picture">  
                               
                <div class="p1" v-for="item in rlist" :key="item.rid"> 
                 <router-link :to="'/recomDetail/'+item.rid">   
                    <img :src="item.img_url" class="ri1"> 
                    <div class="title1">
                        <span class="rsub">{{item.subtitle}}</span><span class="rdet">{{item.details}}</span>
                    </div>
                    <div class="singer1">
                        <span class="rsin">{{item.singer}}</span>             
                        <span class="rnum">{{item.num}}</span>
                        <span class="mui-icon mui-icon-eye"></span>
                    </div> 
                    </router-link>  
                 </div>   
                                 
            </div>
        </div>


        <!-- <div class="rdetail">
            <div class="rtop">
                <router-link to="recommend"><span class="mui-icon mui-icon-undo"></span></router-link>
                <span>mv568412</span>
                <a id="icon-more"><span class="mui-icon mui-icon-more"></span></a>
            </div>
            <div class="rcenter">
                <video poster="" controls class="rvideo"></video>
            </div>
            <div class="rbottom">
                <mt-navbar v-model="selected">
                    <mt-tab-item id="1">简介</mt-tab-item>
                    <mt-tab-item id="2">评论</mt-tab-item>
                </mt-navbar>
                <mt-tab-container v-model="selected">
                    <mt-tab-container-item id="1">
                        <mt-cell  title="简介" />aaa
                    </mt-tab-container-item>
                    <mt-tab-container-item id="2">
                        <mt-cell title="评论"/>bbb
                    </mt-tab-container-item>
                </mt-tab-container>
            </div>
         </div>
    -->
  </div>
</template>
<script>
    //加载当前组件需要第三方模块
     import {Toast} from "mint-ui";
    export default{
        data(){
            return{ list:[],
                    rlist:[],
                    selected:true,
                   
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
            getRecommendlist(){
                var url="recommendlist/rlist";
                this.$http.get(url).then(result=>{
                    //console.log(result);
                    if(result.body.code==1){
                        this.rlist=result.body.msg;
                    }else{
                        Toast("加载推荐列表失败");
                    }
                })
            },

            
        },
        created() {
            //console.log("recommend.vue")
            this.getImageList();
            this.getRecommendlist();
           
        },
    }    
</script>
<style>
/*图片轮播组件高度为0 */
.mui-card{
    border-radius: 8px !important;
}
/*图片轮播组件高度为0 */
  .app-video .mui-card .mint-swipe{
    height:12.5rem;   
  }
  .app .mint-swipe img{
    width:100%;
    height:12.5rem;   
  }
  /*轮播图之下所有*/
  .bottom{
      margin:0.3rem;
  }
  /*第二行*/
  .two{
      /*height: 3rem;*/
      overflow: hidden;
  }
  .Rtleft{
      float: left;
      display: flex;
  }
  .Rtleft>span{
      font-size: 13px;
      margin: auto 5px;
  }
  .Rtright{
      float: right;
  }
  /*第三层图片文字*/
  .picture{
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
  }
   .picture .p1{
      width: 46%;
      height:218px;
      font-family: "SimHei";
      margin-bottom: 1rem;
      background-color: white;
  }
    .p1 .ri1{
        width: 100%;
        height: 125px;
    }
    .p1 .title1 .rsub{
        color: #FA7198;
        font-size: 14px;
    }
    .p1 .title1 .rdet{
        font-size: 14px;
        color:darkgray;
     }
    .p1 .singer1 .rsin{
        float: left;
        font-size: 13px;
        color: #c1c1c1;
    }
    .p1 .singer1 .mui-icon-eye{
        font-size: 15px;
        color: #c1c1c1;
        float: right;
        line-height: 21px;
    }
    .p1 .singer1 .rnum{
        float: right;
        font-size: 13px;
        color: #c1c1c1;
    }
 /*video详情
 .rdetail{
     background-color:#e6e2e2; 
     width: 100%;
     height:100%;
     z-index: 99;
     position: fixed;
     top:0;
     left: 0;
 } */
 .rtop{
     width: 100%;
     background-color: #FA7198;
     line-height: 2;
     display: flex;
    justify-content: space-between;
    color: #fff;
 }
 .rtop>a{
     color:#fff !important;
 }
 .rvideo{
     width:100%;
 }
 .rbottom mt-tab-container mt-cell{
     background-color: #c1c1c1;
 }
</style>
