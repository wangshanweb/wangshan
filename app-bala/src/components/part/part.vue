<template>
    <div class="app-part">
      
   <ul class="pul">
	<li class="pli" v-for="item in plist" :key="item.pid">
       <div class="pdiv">
            <img :src="item.img_url">
            <div class="iname">{{item.iname}}</div>
       </div>     
    </li>	
    
</ul> 

    </div>
</template>
<script>
     //加载当前组件需要第三方模块
     import {Toast} from "mint-ui";
    export default{
        data(){
            return{
                plist:[],
            }
        },
        methods:{
            getPartlist(){
                var url="partlist/plist";
                this.$http.get(url).then(result=>{
                    console.log(result);
                    if(result.body.code==1){
                        this.plist=result.body.msg;
                    }else{
                        Toast("加载分区图片失败....")
                    }
                })
            }
        },
        created() {
            this.getPartlist();
        },
    }
</script>
<style>
    .app-part .pul{
        display: flex;
        flex-wrap: wrap;
        list-style: none;
        padding: 0;
        margin: 0;
    }
    .app-part .pli{
        width: 33.33333%;
        box-sizing: border-box;
    }
    .app-part .pli .pdiv{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin-top: 1rem;
    }
     .app-part .pli .pdiv .iname{
         margin-top: 0.5rem;
         font-size: 14px;
         color:#0aa1ed;
     }
</style>

