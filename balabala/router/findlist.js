const express=require("express");
const pool=require("../pool");
var router=express.Router();
  router.get("/flist",(req,res)=>{
      var sql='SELECT `fid`, `img_url`, `detail` FROM `bl_find` WHERE 1';
      pool.query(sql,(err,result)=>{
          if(err) throw err;
          res.send({code:1,msg:result});
      });
  });
  module.exports=router;