#数据库名称：bala
SET NAMES utf8;
#1.创建一个库  web1806
   #注意：库名 表名 列名英文数字全小写
   #注意 mysql数据库 bug编码utf8 
   #知识储备：公司项目针对手机端(apple)  将utf8--->utf8mb4
CREATE DATABASE bala CHARSET =utf8;
USE bala;
CREATE TABLE bl_user(uid INT PRIMARY KEY AUTO_INCREMENT,
uname VARCHAR(32),
upwd VARCHAR(32)
);
INSERT INTO bl_user VALUES(NULL,'yiyi',md5('123'));
INSERT INTO bl_user VALUES(NULL,'junjun',md5('123'));
INSERT INTO bl_user VALUES(NULL,'pingping',md5('123'));


#功能一：登录(对数据库查询操作)
SELECT count(uid) as c FROM xz_user WHERE uname='yiyi' AND upwd=md5('123');

#图片轮播  bl_imagelist
CREATE TABLE bl_imagelist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    title VARCHAR(32)
);
INSERT INTO bl_imagelist VALUES(NULL,'http://127.0.0.1:8000/img/tanmu.jpg','图片一');
INSERT INTO bl_imagelist VALUES(NULL,'http://127.0.0.1:8000/img/danche.jpg','图片二');
INSERT INTO bl_imagelist VALUES(NULL,'http://127.0.0.1:8000/img/lafei.jpg','图片三');
INSERT INTO bl_imagelist VALUES(NULL,'http://127.0.0.1:8000/img/rifang.jpg','图片四');
INSERT INTO bl_imagelist VALUES(NULL,'http://127.0.0.1:8000/img/zhoumo.jpg','图片五');

#推荐页面
CREATE TABLE bl_recommend(
    rid INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    subtitle VARCHAR(32),
    details VARCHAR(100),
    singer VARCHAR(32),
    num VARCHAR(64)
);
INSERT INTO bl_recommend VALUES(
    NULL,'http://127.0.0.1:8000/img/3D.jpg','【热爱】','因为热爱，所以喜欢，因为喜欢，所以模仿','3F音乐社团',998
);
INSERT INTO bl_recommend VALUES(
    NULL,'http://127.0.0.1:8000/img/rixi.jpg','【次元】','日系新歌，等你来发现','小鱼',3566
);
INSERT INTO bl_recommend VALUES(
    NULL,'http://127.0.0.1:8000/img/qiche.jpg','【汽车】','敲好代码，车和美女都不落','yahu',4753
);
INSERT INTO bl_recommend VALUES(
    NULL,'http://127.0.0.1:8000/img/rixi2.jpg','【日系】','在异次元的世界，体验不一样的激情与美好','lisa',325
);
INSERT INTO bl_recommend VALUES(
    NULL,'http://127.0.0.1:8000/img/su.jpg','【简单】','总有一天，你会发现，简单也是美好，干净也是漂亮，一切都是是因为你身边有你','Tom',2657
);
INSERT INTO bl_recommend VALUES(
    NULL,'http://127.0.0.1:8000/img/huangjin.png','【游戏】','竞技精神，绝不认输','伊拉',3200
);
#推荐下评论界面数据
CREATE TABLE bl_recom(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rid INT,
    userImg VARCHAR(255),
    userName VARCHAR(64),
    comment VARCHAR(32)
);
   
INSERT INTO bl_recom VALUES(NULL,1,'http://127.0.0.1:8000/img/u1.jpg','无名氏1','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,1,'http://127.0.0.1:8000/img/u2.jpg','无名氏2','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,1,'http://127.0.0.1:8000/img/u3.jpg','无名氏3','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,1,'http://127.0.0.1:8000/img/u4.jpg','无名氏4','优秀!:)');   
INSERT INTO bl_recom VALUES(NULL,1,'http://127.0.0.1:8000/img/u5.jpg','无名氏5','优秀!:)');    
INSERT INTO bl_recom VALUES(NULL,1,'http://127.0.0.1:8000/img/u6.jpg','无名氏6','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,2,'http://127.0.0.1:8000/img/u7.jpg','无名氏7','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,2,'http://127.0.0.1:8000/img/u8.jpg','无名氏8','优秀!:)');  
INSERT INTO bl_recom VALUES(NULL,2,'http://127.0.0.1:8000/img/u9.jpg','无名氏9','优秀!:)');   
INSERT INTO bl_recom VALUES(NULL,2,'http://127.0.0.1:8000/img/u10.jpg','无名氏10','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,2,'http://127.0.0.1:8000/img/u11.jpg','无名氏11','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,2,'http://127.0.0.1:8000/img/u12.jpg','无名氏12','优秀!:)');    
INSERT INTO bl_recom VALUES(NULL,2,'http://127.0.0.1:8000/img/u13.jpg','无名氏13','优秀!:)');  
INSERT INTO bl_recom VALUES(NULL,3,'http://127.0.0.1:8000/img/u14.jpg','无名氏14','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,3,'http://127.0.0.1:8000/img/u15.jpg','无名氏15','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,3,'http://127.0.0.1:8000/img/u16.jpg','无名氏16','优秀!:)');   
INSERT INTO bl_recom VALUES(NULL,3,'http://127.0.0.1:8000/img/u18.jpg','无名氏17','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,3,'http://127.0.0.1:8000/img/u19.jpg','无名氏18','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,4,'http://127.0.0.1:8000/img/u1.jpg','无名氏1','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,4,'http://127.0.0.1:8000/img/u2.jpg','无名氏2','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,4,'http://127.0.0.1:8000/img/u3.jpg','无名氏3','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,4,'http://127.0.0.1:8000/img/u4.jpg','无名氏4','优秀!:)');   
INSERT INTO bl_recom VALUES(NULL,4,'http://127.0.0.1:8000/img/u5.jpg','无名氏5','优秀!:)');    
INSERT INTO bl_recom VALUES(NULL,4,'http://127.0.0.1:8000/img/u6.jpg','无名氏6','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,5,'http://127.0.0.1:8000/img/u7.jpg','无名氏7','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,5,'http://127.0.0.1:8000/img/u8.jpg','无名氏8','优秀!:)');  
INSERT INTO bl_recom VALUES(NULL,5,'http://127.0.0.1:8000/img/u9.jpg','无名氏9','优秀!:)');   
INSERT INTO bl_recom VALUES(NULL,5,'http://127.0.0.1:8000/img/u10.jpg','无名氏10','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,5,'http://127.0.0.1:8000/img/u11.jpg','无名氏11','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,5,'http://127.0.0.1:8000/img/u12.jpg','无名氏12','优秀!:)');    
INSERT INTO bl_recom VALUES(NULL,5,'http://127.0.0.1:8000/img/u13.jpg','无名氏13','优秀!:)');  
INSERT INTO bl_recom VALUES(NULL,6,'http://127.0.0.1:8000/img/u14.jpg','无名氏14','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,6,'http://127.0.0.1:8000/img/u15.jpg','无名氏15','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,6,'http://127.0.0.1:8000/img/u16.jpg','无名氏16','优秀!:)');   
INSERT INTO bl_recom VALUES(NULL,6,'http://127.0.0.1:8000/img/u18.jpg','无名氏17','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,6,'http://127.0.0.1:8000/img/u19.jpg','无名氏18','优秀!:)');
INSERT INTO bl_recom VALUES(NULL,6,'http://127.0.0.1:8000/img/u1.jpg','无名氏1','优秀!:)');
#分区列表
CREATE TABLE bl_part(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    iname VARCHAR(32),    
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/dianshi.png','直播'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/fanju.png','番剧'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/donghua.png','动画'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/guochuang.png','国创'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/yinyue.png','音乐'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/wudao.png','舞蹈'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/youxi.png','游戏'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/keji.png','科技'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/shenghuo.png','生活'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/guichu.png','鬼畜'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/shishang.png','时尚'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/guanggao.png','广告'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/yule.png','娱乐'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/dianying.png','电影'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/dianshiju.png','电视剧'
);
INSERT INTO bl_part VALUES(
    NULL,'http://127.0.0.1:8000/img/youxizhongxin.png','游戏中心'
);
#发现列表页面
CREATE TABLE bl_find(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    img_url VARCHAR(255),
    detail VARCHAR(32),    
);
INSERT INTO bl_find VALUES(
    NULL,'http://127.0.0.1:8000/img/g1.png','兴趣圈'
);
INSERT INTO bl_find VALUES(
    NULL,'http://127.0.0.1:8000/img/f2.png','话题中心'
);
INSERT INTO bl_find VALUES(
    NULL,'http://127.0.0.1:8000/img/f3.png','活动中心'
);
INSERT INTO bl_find VALUES(
    NULL,'http://127.0.0.1:8000/img/f4.png','原创排行榜'
);
INSERT INTO bl_find VALUES(
    NULL,'http://127.0.0.1:8000/img/f5.png','全区排行榜'
);
INSERT INTO bl_find VALUES(
    NULL,'http://127.0.0.1:8000/img/f6.png','游戏中心'
);
INSERT INTO bl_find VALUES(
    NULL,'http://127.0.0.1:8000/img/f7.png','周边商城'
);