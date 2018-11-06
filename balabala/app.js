//1.加载express
const express=require("express");
//1.1加载图片轮播
const routerImageList=require("./router/imagelist");
//加载推荐列表
const routerRlist=require("./router/recommendlist");
//加载分区列表
const routerPlist=require("./router/partlist");
//加载发现列表
const routerFlist=require("./router/findlist");
//1.2:加载处理post参数第三方模块
const bodyParse = require("body-parser")

//2.创建express
var app=express();

//2.1:加载处理跨域模块
const cors = require("cors");
//2.2:允许哪个地址跨域访问
app.use(cors({
    origin:["http://127.0.0.1:3002",
		"http://localhost:3002","http://127.0.0.1:3001","http://localhost:3001"],
    credentials:true
}));
//3.监听端口
app.listen(8000,()=>{
    console.log("BaLaBaLa!!");
});
//4.指定静态目录public
app.use(express.static(__dirname+"/public"));
app.use(bodyParse.urlencoded({extended:false}));
//5:将图片轮播模块加载当前应用中指定访问路径
app.use("/imagelist",routerImageList);
//6.将推荐列表加载到当前指定路径
app.use("/recommendlist",routerRlist);
//7.将分区列表加载到当前路径
app.use("/partlist",routerPlist);
//8.将发现列表加载到当前路径
app.use("/findlist",routerFlist);