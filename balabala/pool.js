//1.加载MySql模块
const mysql=require("mysql");
//2.创建连接池对象
var pool=mysql.createPool({
    host:"127.0.0.1",//连接mysql数据库地址
    user:"root",//连接MySQL用户名
    password:"",
    database:"bala",
    connectionLimit:10
});
//3.导出导出连接池对象
module.exports=pool;