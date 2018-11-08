const express=require("express");
const mysql=require("mysql");
const pool=require("./pool");
const app=express();
app.listen(3000,()=>{
    console.log("success");
});
app.use(express.static(__dirname+"/public"));
app.get("/imagelist",(req,res)=>{
    var sql="SELECT id,img_url,title FROM xz_wximage";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});


//2.信息列表  message.wxml
app.get("/message",(req,res)=>{
    var rows=[];
    rows.push({
        title:"品牌大促",
        date:"2018-11-11",
        img_url:"http://127.0.0.1:3000/img/1.jpg",
        desc:"越努力,越幸运~"
    });
    rows.push({
        title:"快来变美",
        date:"2018-11-11",
        img_url:"http://127.0.0.1:3000/img/2.jpg",
        desc:"做个精致的女人吧"
    });
    rows.push({
        title:"品味之战",
        date:"2018-11-11",
        img_url:"http://127.0.0.1:3000/img/4.jpg",
        desc:"男性魅力"
    });
    rows.push({
        title:"奶粉大促",
        date:"2018-11-11",
        img_url:"http://127.0.0.1:3000/img/5.jpg",
        desc:"天才第一口"
    });
    rows.push({
        title:"美好出行",
        date:"2018-11-11",
        img_url:"http://127.0.0.1:3000/img/6.jpg",
        desc:"带着你身边的他，去想去的地方"
    });
    res.send(rows);
});
/**
 * 详情列表detail
 */
app.get("/product",(req,res)=>{
    var pid=req.query.pid;
    var obj={
        pid:pid,
        title:"小辣椒手机",
        oldprice:1999.99,
        newprice:1111.11,
        info:"轻拿轻放！！！"
    };
    res.send(obj);
})
//分页商品列表
app.get("/produts",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    var sql="SELECT count(id) as c FROM product";
    var process=0;
    var obj={pno:pno,pageSize:pageSize}
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        var pageCount=Math.ceil(result[0].c/pageSize);
        process+=50;
        obj.pageCount=pageCount;
        if(process==100){
            res.send(obj);
        }
    })
    var sql=" SELECT * FROM product";
        sql+=" LIMIT ?,?";
        var offset=parseInt((pno-1)*pageSize);
        pageSize=parseInt(pageSize);
        pool.query(sql,[offset,pageSize],(err,result)=>{
            if(err) throw err;
            process+=50;
            obj.data=result;
            if(process==100){
                res.send(obj);
            }
        });
});

const qs=require("querystring");
app.post("/addUser",(req,res)=>{
    //var u=req.body.uname;
    //var p=req.body.upwd;
    req.on("data",(buff)=>{
        //uname=tom&upwd=123
        //buff.toString();
        var obj=qs.parse(buff.toString());
        res.send(obj);
    });
});
