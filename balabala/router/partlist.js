const express=require("express");
const pool=require("../pool");
var router=express.Router();
 router.get("/plist",(req,res)=>{
     var sql='SELECT `pid`, `img_url`, `iname` FROM `bl_part` WHERE 1';
     pool.query(sql,(err,result)=>{
         if(err) throw err;
         res.send({code:1,msg:result});
     });
 });
 //导出路由模块
 module.exports=router;