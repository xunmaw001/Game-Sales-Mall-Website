DROP DATABASE IF EXISTS ssmu71x7;

CREATE DATABASE ssmu71x7 default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmu71x7;

DROP TABLE IF EXISTS `youxifenlei`;

CREATE TABLE `youxifenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏分类';

INSERT INTO youxifenlei(youxifenlei) VALUES('游戏分类1');
INSERT INTO youxifenlei(youxifenlei) VALUES('游戏分类2');
INSERT INTO youxifenlei(youxifenlei) VALUES('游戏分类3');

DROP TABLE IF EXISTS `youxiku`;

CREATE TABLE `youxiku` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`youximingcheng` varchar(200)    COMMENT '游戏名称',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`youxibiaoqian` varchar(200)    COMMENT '游戏标签',
	`juyuwang` varchar(200)    COMMENT '局域网',
	`youxifengmian` varchar(200)    COMMENT '游戏封面',
	`youxijianjie` longtext    COMMENT '游戏简介',
	`jiage` int    COMMENT '价格',
	`youxiwenjian` varchar(200)    COMMENT '游戏文件',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏库';

INSERT INTO youxiku(youximingcheng,youxifenlei,youxibiaoqian,juyuwang,youxifengmian,youxijianjie,jiage,youxiwenjian) VALUES('游戏名称1','游戏分类1','单人','联网','http://localhost:8080/ssmu71x7/upload/youxiku_youxifengmian1.jpg','游戏简介1',1,'游戏文件1');
INSERT INTO youxiku(youximingcheng,youxifenlei,youxibiaoqian,juyuwang,youxifengmian,youxijianjie,jiage,youxiwenjian) VALUES('游戏名称2','游戏分类2','单人','联网','http://localhost:8080/ssmu71x7/upload/youxiku_youxifengmian2.jpg','游戏简介2',2,'游戏文件2');
INSERT INTO youxiku(youximingcheng,youxifenlei,youxibiaoqian,juyuwang,youxifengmian,youxijianjie,jiage,youxiwenjian) VALUES('游戏名称3','游戏分类3','单人','联网','http://localhost:8080/ssmu71x7/upload/youxiku_youxifengmian3.jpg','游戏简介3',3,'游戏文件3');

DROP TABLE IF EXISTS `youxigonglve`;

CREATE TABLE `youxigonglve` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`youximingcheng` varchar(200)    COMMENT '游戏名称',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`youxifengmian` varchar(200)    COMMENT '游戏封面',
	`youxigonglve` longtext    COMMENT '游戏攻略',
	`fabushijian` date    COMMENT '发布时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏攻略';

INSERT INTO youxigonglve(youximingcheng,youxifenlei,youxifengmian,youxigonglve,fabushijian) VALUES('游戏名称1','游戏分类1','http://localhost:8080/ssmu71x7/upload/youxigonglve_youxifengmian1.jpg','游戏攻略1',CURRENT_TIMESTAMP);
INSERT INTO youxigonglve(youximingcheng,youxifenlei,youxifengmian,youxigonglve,fabushijian) VALUES('游戏名称2','游戏分类2','http://localhost:8080/ssmu71x7/upload/youxigonglve_youxifengmian2.jpg','游戏攻略2',CURRENT_TIMESTAMP);
INSERT INTO youxigonglve(youximingcheng,youxifenlei,youxifengmian,youxigonglve,fabushijian) VALUES('游戏名称3','游戏分类3','http://localhost:8080/ssmu71x7/upload/youxigonglve_youxifengmian3.jpg','游戏攻略3',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `youxibuding`;

CREATE TABLE `youxibuding` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`youximingcheng` varchar(200)    COMMENT '游戏名称',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`youxibuding` varchar(200)    COMMENT '游戏补丁',
	`xiangqing` longtext    COMMENT '详情',
	`youxifengmian` varchar(200)    COMMENT '游戏封面',
	`fabushijian` date    COMMENT '发布时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏补丁';

INSERT INTO youxibuding(youximingcheng,youxifenlei,youxibuding,xiangqing,youxifengmian,fabushijian) VALUES('游戏名称1','游戏分类1','游戏补丁1','详情1','http://localhost:8080/ssmu71x7/upload/youxibuding_youxifengmian1.jpg',CURRENT_TIMESTAMP);
INSERT INTO youxibuding(youximingcheng,youxifenlei,youxibuding,xiangqing,youxifengmian,fabushijian) VALUES('游戏名称2','游戏分类2','游戏补丁2','详情2','http://localhost:8080/ssmu71x7/upload/youxibuding_youxifengmian2.jpg',CURRENT_TIMESTAMP);
INSERT INTO youxibuding(youximingcheng,youxifenlei,youxibuding,xiangqing,youxifengmian,fabushijian) VALUES('游戏名称3','游戏分类3','游戏补丁3','详情3','http://localhost:8080/ssmu71x7/upload/youxibuding_youxifengmian3.jpg',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)  UNIQUE   COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`mima` varchar(200)    COMMENT '密码',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`nianling` varchar(200)    COMMENT '年龄',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,lianxidianhua,nianling) VALUES('用户1','用户姓名1','123456','男','020-89819991','年龄1');
INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,lianxidianhua,nianling) VALUES('用户2','用户姓名2','123456','男','020-89819992','年龄2');
INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,lianxidianhua,nianling) VALUES('用户3','用户姓名3','123456','男','020-89819993','年龄3');

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`dingdanbianhao` varchar(200)  UNIQUE   COMMENT '订单编号',
	`youximingcheng` varchar(200)    COMMENT '游戏名称',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`jiage` varchar(200)    COMMENT '价格',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`xiadanshijian` date    COMMENT '下单时间',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息';

INSERT INTO dingdanxinxi(dingdanbianhao,youximingcheng,youxifenlei,jiage,yonghuming,yonghuxingming,xiadanshijian,ispay) VALUES('订单编号1','游戏名称1','游戏分类1','价格1','用户名1','用户姓名1',CURRENT_TIMESTAMP,'未支付');
INSERT INTO dingdanxinxi(dingdanbianhao,youximingcheng,youxifenlei,jiage,yonghuming,yonghuxingming,xiadanshijian,ispay) VALUES('订单编号2','游戏名称2','游戏分类2','价格2','用户名2','用户姓名2',CURRENT_TIMESTAMP,'未支付');
INSERT INTO dingdanxinxi(dingdanbianhao,youximingcheng,youxifenlei,jiage,yonghuming,yonghuxingming,xiadanshijian,ispay) VALUES('订单编号3','游戏名称3','游戏分类3','价格3','用户名3','用户姓名3',CURRENT_TIMESTAMP,'未支付');

DROP TABLE IF EXISTS `remenyouxipaixingbang`;

CREATE TABLE `remenyouxipaixingbang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`youximingcheng` varchar(200)    COMMENT '游戏名称',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`youxibiaoqian` varchar(200)    COMMENT '游戏标签',
	`juyuwang` varchar(200)    COMMENT '局域网',
	`jiage` varchar(200)    COMMENT '价格',
	`fengmian` varchar(200)    COMMENT '封面',
	`youxiwenjian` varchar(200)    COMMENT '游戏文件',
	`benzhoupaiming` varchar(200)    COMMENT '本周排名',
	`youxijianjie` longtext    COMMENT '游戏简介',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门游戏排行榜';

INSERT INTO remenyouxipaixingbang(youximingcheng,youxifenlei,youxibiaoqian,juyuwang,jiage,fengmian,youxiwenjian,benzhoupaiming,youxijianjie) VALUES('游戏名称1','游戏分类1','单人','单机','价格1','http://localhost:8080/ssmu71x7/upload/remenyouxipaixingbang_fengmian1.jpg','游戏文件1','本周排名1','游戏简介1');
INSERT INTO remenyouxipaixingbang(youximingcheng,youxifenlei,youxibiaoqian,juyuwang,jiage,fengmian,youxiwenjian,benzhoupaiming,youxijianjie) VALUES('游戏名称2','游戏分类2','单人','单机','价格2','http://localhost:8080/ssmu71x7/upload/remenyouxipaixingbang_fengmian2.jpg','游戏文件2','本周排名2','游戏简介2');
INSERT INTO remenyouxipaixingbang(youximingcheng,youxifenlei,youxibiaoqian,juyuwang,jiage,fengmian,youxiwenjian,benzhoupaiming,youxijianjie) VALUES('游戏名称3','游戏分类3','单人','单机','价格3','http://localhost:8080/ssmu71x7/upload/remenyouxipaixingbang_fengmian3.jpg','游戏文件3','本周排名3','游戏简介3');

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','http://localhost:8080/ssmu71x7/upload/storeup_picture1.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','http://localhost:8080/ssmu71x7/upload/storeup_picture2.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','http://localhost:8080/ssmu71x7/upload/storeup_picture3.jpg');

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','http://localhost:8080/ssmu71x7/upload/news_picture1.jpg','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','http://localhost:8080/ssmu71x7/upload/news_picture2.jpg','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','http://localhost:8080/ssmu71x7/upload/news_picture3.jpg','内容3');

DROP TABLE IF EXISTS `discussyouxiku`;

CREATE TABLE `discussyouxiku` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏库评论表';

INSERT INTO discussyouxiku(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyouxiku(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyouxiku(refid,content,userid) VALUES(3,'评论内容3',3);

DROP TABLE IF EXISTS `discussremenyouxipaixingbang`;

CREATE TABLE `discussremenyouxipaixingbang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='热门游戏排行榜评论表';

INSERT INTO discussremenyouxipaixingbang(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussremenyouxipaixingbang(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussremenyouxipaixingbang(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssmu71x7/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssmu71x7/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssmu71x7/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssmu71x7/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssmu71x7/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

