//推荐列表模块
//1.加载express  pool模块
const express=require("express");
const pool=require("../pool");
//2.创建路由对象
var router= express.Router();
//功能一：获取推荐图文列表
router.get("/rlist",(req,res)=>{
    var sql='SELECT `rid`, `img_url`, `subtitle`, `details`, `singer`, `num` FROM `bl_recommend` WHERE 1';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    });
});



//功能二获取评论页面
router.get("/detail",(req,res)=>{
    var rid=parseInt(req.query.rid);
    var sql=" SELECT `id`, `rid`, `userImg`, `userName`, `comment` FROM `bl_recom` WHERE rid=?";
    pool.query(sql,[rid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    })
})

//功能三  获取推荐图，对应rid
router.get('/list',(req,res)=>{
    var rid=parseInt(req.query.rid);
    var sql="SELECT `rid`, `img_url` FROM `bl_recommend`  WHERE rid=? ";
    pool.query(sql,[rid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    })
})

//功能三添加一条评论
router.post("/saveComment",(req,res)=>{
    var rid=parseInt(req.body.rid);
    var userName=req.body.userName;
    var content=req.body.content;
    var userImg=req.body.userImg;
    if(content.length<2){
        res.send({code:1,msg:"亲，评论太少了呦"})
        return;
    }
    var sql="INSERT INTO `bl_recom`(`id`, `rid`, `userImg`, `userName`, `comment`) VALUES (NULL,?,?,?,?)";
    pool.query(sql,[rid,userImg,userName,content],(err,result)=>{
        if(err) throw err;
        console.log(result);
        if(result.affectedRows==1){
            res.send({code:1,msg:result});
        }else{
            res.send({code:-1,msg:result})
        }
    })
})
 //4.导出当前路由模块
 module.exports=router;