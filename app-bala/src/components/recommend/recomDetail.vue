<template>
<div class="app-comDetai">  
        <div class="Index2">       
            <div class="Index">
                    <div class="rtop">
                        <router-link to="/"><span class="mui-icon mui-icon-undo"></span></router-link>
                        <span>mv568412</span>
                        <a id="icon-more"><span class="mui-icon mui-icon-more"></span></a>
                    </div>
                    <div class="rcenter">
                        <video :poster="vlist.img_url" controls class="rvideo" lazy-load></video>
                    </div>                    
            </div>
        </div>
        <div class="rbottom">
            <mt-navbar v-model="selected">
                <mt-tab-item id="1" >简介</mt-tab-item>
                <mt-tab-item id="2" >评论</mt-tab-item>
            </mt-navbar>
            <mt-tab-container v-model="selected">
                <mt-tab-container-item id="1">
                    <mt-cell  title="简单介绍一下吧" /><div class="jianjie">Just a quick overview!!!</div>            
                </mt-tab-container-item>
                <mt-tab-container-item id="2">
                    <mt-cell title="来看评论了" />
                        <ul class="com">
                            <li v-for="item in comList" :key="item.id">
                                <img :src="item.userImg" id="userimg">
                                <div class="ping">
                                <div class="us"> 
                                    <span class="user">{{item.userName}}</span>
                                    <span class="mui-icon-extra mui-icon-extra-heart"></span>
                                </div>
                                <p class="comment">{{item.comment}}</p>
                                </div>
                            </li>
                        </ul>
                </mt-tab-container-item>
            </mt-tab-container> 
        </div> 

        <div class="rpinglun">
            <img src="../../img/say.png" alt="">
            <input class="rinput" type="text" placeholder="说点什么吧..." v-model="msg">
            <img src="../../img/send.png" alt=""  @click="postComment">
        </div>   
</div>
</template>
<script>
import {Toast} from 'mint-ui'
    export default {
        data(){
            return{
                selected:'2',
                rid:this.$route.params.rid,
                vlist:{},
                comList:[],
                msg:"",
                obj:{}
            }
        },
        methods:{
            postComment(){
                var rid=this.rid;
                console.log(rid);
                var content=this.msg;
                var userName="匿名用户";
                var userImg="http://127.0.0.1:8000/img/u18.jpg";
                var url="recommendlist/saveComment";
                this.obj={rid:rid,userName:userName,content:content,userImg:userImg};
                if(this.obj!=undefined){
                    console.log(this.obj)

                this.$http.post(url,this.obj).then(result=>{
                    //console.log(result);
                    if(result.body.code==1){
                        this.msg="";
                        Toast("添加成功");
                        this.comList=[];
                        this.getCommonList();                      
                        
                    }else{
                        Toast(result.body.msg)
                    }
                })
               //console.log(1111);
               }
            },
             getRecommendlist(){
                var url="recommendlist/list?rid="+this.rid;
                this.$http.get(url).then(result=>{
                    console.log(result);
                    if(result.body.code==1){
                        this.vlist=result.body.msg[0];
                       
                        console.log(this.vlist);
                       
                    }else{
                        Toast("加载推荐列表失败");
                    }
                })
            },
            getCommonList(){
               var url="recommendlist/detail?rid="+this.rid;
               this.$http.get(url).then(result=>{
                 console.log(result);
                if(result.body.code==1){
                   this.comList=result.body.msg;
                   this.comList.reverse()
                //    this.comlist=this.comlist.unshift(result.body.msg);
                }
               })
            }
        },
        created() {
             this.getCommonList();
             this. getRecommendlist();
        },    
        }
</script>
<style>
/*video详情*/
 .app-comDetai{
     background-color:#e6e2e2; 
     width: 100%;  
} 
 /* .Index2{
     height:12rem;
 } */
 .Index{
    z-index:99; 
    position: fixed;
    top:0;
    left: 0;
    height:12rem;
    clear:both;
 }
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

 /*简介*/
 .rbottom .jianjie{
     font-size: 25px;
     background-color:white;
 }
 /*
 评论
 */
 .rbottom mt-tab-container mt-cell{
     background-color: #c1c1c1;
 }
 .rbottom mt-navbar mt-tab-item{
     font-size:16px;
     color:grey !important;
 }
 .rbottom{
     margin-top:12rem;
 }
 .rbottom .com{
     list-style: none;
     padding:0.5rem;
 }
 #userimg{     
     width:4rem ;
     height:4rem ;
     border-radius: 50%;
     margin-bottom: 0.5rem;
 }
 .rbottom li{
     display: flex;
     margin-bottom: 1rem;
     border-bottom: 1px solid #c1c1c1;
 }
 .rbottom li .ping{
      margin-left: 1rem;
 }
 .rbottom li .ping .us{
     width:20rem;
 }
 .rbottom li .ping .mui-icon-extra {
     color:#FA7198;
     padding-left:70%; 
}
 .rbottom li .user{
     color:#FA7198;
     font-size: 15px;
     font-family:'Microsoft Yahei';    
 }
 .rbottom li .comment{
     margin-top:0.8rem;
     font-size: 15px;
     color:cornflowerblue;
 }
/*底部发表评论*/
.rpinglun{
    position:fixed;
    left:0;
    bottom:0;
    width: 100%;
    display: flex;
    background-color: white;
}
.rpinglun .rinput{
    border:0;
    border-bottom: 1px solid #FA7198;
    font-size: 10px;
}
</style>
