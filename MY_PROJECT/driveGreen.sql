SET NAMES utf8;
CREATE DATABASE dg CHARSET=UTF8;
USE dg;

/****首页轮播广告商品****/
CREATE TABLE dg_index_carousel(
  cid INT  PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  href VARCHAR(128)
)
INSERT INTO dg_index_carousel VALUES(
   null,'第三届','http://127.0.0.1:8080/img/13jie.jpg'   );
INSERT INTO dg_index_carousel VALUES(  
   null,'沙漠','http://127.0.0:8080/img/shamo.jpg'
   );
INSERT INTO dg_index_carousel VALUES( 
  null,'三只小猪','http://127.0.0.1:8080/img/xiaozhu.jpg'
   );

/*活动图片商品*/
CREATE TABLE dg_index_aproduct(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  href VARCHAR(128),
  details VARCHAR(128),
  time VARCHAR(64),
  location VARCHAR(64),
)
INSERT INTO dg_index_aproduct VALUES(NULL,'http://127.0.0.1:8080/img/jiaoshi.jpg','招志愿者——生活中的海洋','9月1日 17:35 开始','上海');
INSERT INTO dg_index_aproduct VALUES(NULL,'http://127.0.0.1:8080/img/sanren.jpg','超火超skr活动，等你来pick!','8月6日 00:00 开始','长沙');
INSERT INTO dg_index_aproduct VALUES(NULL,'http://127.0.0.1:8080/img/paint.jpg','人与环境生态摄影展','6月30日 00:00 开始','上海');
INSERT INTO dg_index_aproduct VALUES(NULL,'http://127.0.0.1:8080/img/lanjing.jpg','暑期带娃,一起拯救Blue Planet','7月1日 11:50 开始','上海');
/*众筹图片商品*/ 
CREATE TABLE dg_index_zhongchou(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  href VARCHAR(128),
  title VARCHAR(128),
  eye INT,
  heart INT,
  msg INT,
  details VARCHAR(64),
  moneys INT,
  dates VARCHAR(64),
  loc VARCHAR(64)
);
INSERT INTO dg_index_zhongchou VALUES(NULL,'http://127.0.0.1:8080/img/haian.png','守护海岸卫士',45,0,0,'本着保护海洋的原则巡护红树林',10220,'剩269天','三亚');
INSERT INTO dg_index_zhongchou VALUES(NULL,'http://127.0.0.1:8080/img/nanhai.png','播种未蓝',170,0,0,'传播海洋知识，提高全民意识.',10496,'剩330天','三亚');
INSERT INTO dg_index_zhongchou VALUES(NULL,'http://127.0.0.1:8080/img/zhihelaji.png','纸坊河垃圾分类项目',1088,4,1,'孩子号召村民们一起拾垃圾',100538,'剩1天','安康');
INSERT INTO dg_index_zhongchou VALUES(NULL,'http://127.0.0.1:8080/img/lajifenlei.png','垃圾分类 举手之劳',525,10,1,'将“垃圾分类”的具体办法加以推广。',102000,'剩75天','成都');
/*社团*/
CREATE TABLE dg_index_shetuan(
  tid INT  PRIMARY KEY AUTO_INCREMENT,  
  href VARCHAR(128),
  title VARCHAR(64),
  details VARCHAR(64),
  loc VARCHAR(64),
  people VARCHAR(64),
);
INSERT INTO dg_index_shetuan VALUES(NULL,'http://127.0.0.1:8080/img/action.png','南开大学绿色行动小组','普及环保知识，实践绿色生活。','天津',59);
INSERT INTO dg_index_shetuan VALUES(NULL,'http://127.0.0.1:8080/img/yancheng.jpg','盐城市生态环境科学研究会','开展学术交流、科普宣教和咨询服务。','盐城',20);
INSERT INTO dg_index_shetuan VALUES(NULL,'http://127.0.0.1:8080/img/haian.png','蓝丝带海洋保护三亚学院服务社','团结力量，保护美丽海洋.','三亚',67);
INSERT INTO dg_index_shetuan VALUES(NULL,'http://127.0.0.1:8080/img/anhui.jpg','安徽大学环境保护协会','环保路上，你我同行。','合肥',356);
CREATE TABLE dg_index_dongtai(
  did INT  PRIMARY KEY AUTO_INCREMENT,  
  href VARCHAR(128),
  title VARCHAR(64),
  dates VARCHAR(64),
  details VARCHAR(64)  
);
INSERT INTO dg_index_dongtai VALUES(NULL,'http://127.0.0.1:8080/img/laoshi.jpg','考试后的放松方法学习苏州妈妈','2018-10-28',' "绿动未来"系列环保公益儿童剧2018巡演季《三只小猪》活动于23号正式登陆苏州');
INSERT INTO dg_index_dongtai VALUES(NULL,'http://127.0.0.1:8080/img/xiaonvhai.JPG','暑假班学不到的知识！','2018-10-08',' "绿动未来"系列环保公益儿童剧2018巡演季《三只小猪》宁波杭州站顺利举办');
INSERT INTO dg_index_dongtai VALUES(NULL,'http://127.0.0.1:8080/img/lvsetongxiang.jpg','"中国儿童环保教育五年计划"','2018-10-28',' 2018年5月19日，"绿色童享·中国儿童环保教育五年计划"在北京正式发布。');
INSERT INTO dg_index_dongtai VALUES(NULL,'http://127.0.0.1:8080/img/liangxiao.jpg','接档七夕巡演-整个夏天的快乐！','2018-08-23','8月18日，"绿动未来"系列环保公益儿童剧《三只小猪》全国巡演第六站走进合肥');