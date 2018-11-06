<template>
    <div class="app-find">
        <ul class="mui-table-view after" >
            <li class="mui-table-view-cell mui-media fli" v-for="item in flist.slice(0,3)" :key="item.fid">
                <img class="mui-media-object mui-pull-left" :src="item.img_url">
                <div class="mui-media-body">
                    {{item.detail}}
                </div>
            </li>
        </ul>
        <!-- <div class="after"></div> -->
        <ul class="mui-table-view  after" >
            <li class="mui-table-view-cell mui-media fli" v-for="item in flist.slice(3,5)" :key="item.fid">                
                <img class="mui-media-object mui-pull-left" :src="item.img_url">
                <div class="mui-media-body">
                    {{item.detail}}
                </div>              
            </li>
        </ul>
        <!-- <div class="after"></div> -->
        <ul class="mui-table-view after" >
            <li class="mui-table-view-cell mui-media fli" v-for="item in flist.slice(5,7)" :key="item.fid">               
                <img class="mui-media-object mui-pull-left" :src="item.img_url">
                <div class="mui-media-body">
                    {{item.detail}}
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
                flist:[],
            }
        },
        methods:{
            getFindlist(){
                var url="findlist/flist";
                this.$http.get(url).then(result=>{
                    console.log(result);
                    if(result.body.code==1){
                        this.flist=result.body.msg;
                    }else{
                        Toast("加载发现图片失败....")
                    }
                })
            }
        },
        created() {
            this. getFindlist();
        },
    }
</script>
<style>
    /*分隔条*/
    .after{
        margin-top:10px !important;
    }
    .mui-table-view .fli{
        height: 3rem;
    }
    .mui-table-view  .mui-media-body{
        font-size: 0.8rem;
        line-height: 3rem;
    }
    
</style>

