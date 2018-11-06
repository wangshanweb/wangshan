//图片轮播
//1.引入pool express
const pool=require("../pool");
const express=require("express");
//2.创建路由对象
var router=express.Router();
  router.get("/list",(req,res)=>{
      var sql="SELECT id,img_url,title FROM bl_imagelist";
      pool.query(sql,(err,result)=>{
          if(err) throw err;
          res.send({code:1,msg:result});
      });
  });
  //4.导出当前路由模块
  module.exports=router;