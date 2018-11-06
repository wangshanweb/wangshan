<template>
    <div>

        <nav class="app-container">
            <div  class="top">
                <div class="top1">  
                    <div class="Tleft">     
                        <div><img src="./img/touxiang.jpg" class="tou"></div>
                        <span class="uname">Loveyiyi</span>
                    </div> 
                    <div class="flex-container Tright">
                        <a><span class="mui-icon-extra mui-icon-extra-grech"></span></a>
                        <a><span class="mui-icon mui-icon-download"></span></a>
                        <a><span class="mui-icon mui-icon-search"></span></a>
                    </div>
                </div>  
                <ul class="top2">           
                <li><router-link to="/video">直播</router-link></li>
                <li><router-link to="/recommend">推荐</router-link></li>
                <li><router-link to="/part">分区</router-link></li>
                <li><router-link to="/find">发现</router-link></li>
                </ul>      
            </div>    
        </nav>
        <router-view></router-view>
    </div>
</template>

<style>
   .app-container{
     overflow-x:hidden;
      height:6.3rem;
   }    
/*顶部*/
.top{
    background-color: #FA7198;
    height: 6.3rem;
    width: 100%;   
     position: fixed; 
   z-index:1;
}
/*顶部粉色条*/

.top1{      
    display: flex;
    /*justify-content: space-around;*/
    padding-top: 15px;
    justify-content: space-between;
}
/*左边三个图标*/
.Tleft{
    width:40%;
    display: flex;
    justify-content: space-around;
}
/*小女孩头像*/
.tou{
    width:2.5rem;
    height: 2.5rem;
    line-height: 2.5rem;
    border-radius: 50%;
    cursor: pointer;
}
/*用户名*/
.uname{
    color:#fff;
    font-size: 14px;
    font-family: Arial, Helvetica, sans-serif;
}
/*右边三个小图标*/
.Tright{
    width:30%;
    display: flex;
    justify-content: space-around;
}
.Tright a{
    color:#fff !important;
}
.top2{
    padding: 0;
    list-style: none;
    display: flex;
    justify-content: space-around;    
}
.top2 li a{
    color: #eee !important;
}
.active{
    font-weight: bold !important;
    font-size: 18px;
}

</style>
<script>
       
    export default{
        data(){
            return{};
        },
       
         methods:{ 
            
        },
 created() {
           
        },
    } 
</script>
