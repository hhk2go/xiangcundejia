
-----------------------------  tf_user  ---------------------------
drop table `tf_user`;
CREATE TABLE `tf_user` (
  `USER_ID`          int(11) NOT NULL           COMMENT '用户编号'  ,
  `USER_ALIAS`       varchar(20) NOT NULL       COMMENT '用户名称'  ,
  `USER_PASSWD`      varchar(50) NOT NULL       COMMENT '登录密码'  ,
  `PHONE`            varchar(20) NOT NULL       COMMENT '联系电话'  ,
  `EMAIL`            varchar(50) DEFAULT NULL   COMMENT '电子邮件'  ,
  `USER_NAME`        varchar(20) DEFAULT NULL   COMMENT '真实姓名'  ,
  `GENDER`           char(1)     DEFAULT NULL   COMMENT '性别'      ,
  `BIRTHDATE`        date        DEFAULT NULL   COMMENT '生日'      ,
  `LIVING_PROV`      varchar(10) DEFAULT NULL   COMMENT '居住省'    ,
  `LIVING_CITY`      varchar(20) DEFAULT NULL   COMMENT '居住市'    ,
  `LIVING_DISTRICT`  varchar(20) DEFAULT NULL   COMMENT '居住区县'  ,
  `HOME_PROV`        varchar(10) DEFAULT NULL   COMMENT '家乡省'    ,
  `HOME_CITY`        varchar(20) DEFAULT NULL   COMMENT '家乡市'    ,
  `HOME_DISTRICT`    varchar(20) DEFAULT NULL   COMMENT '家乡区县'  ,
  `PSPT_TYPE_CODE`   char(1)     DEFAULT NULL   COMMENT '证件类别'  ,
  `PSPT_ID`          varchar(20) DEFAULT NULL   COMMENT '证件号码'  ,
  `PSPT_END_DATE`    date        DEFAULT NULL   COMMENT '证件有效期',
  `PSPT_ADDR`        varchar(80) DEFAULT NULL   COMMENT '证件地址'  ,
  `USER_TYPE`        char(1)     NOT NULL       COMMENT '用户类型'  ,
  `IS_SELLER`        char(1)     NOT NULL       COMMENT '是否卖家'  ,
  `IS_NOTIFY`        char(1)     NOT NULL       COMMENT '消息提醒'  ,
  `REGISTER_TIME`    datetime    NOT NULL       COMMENT '注册时间'  ,
  `UPDATE_TIME`      datetime    NOT NULL       COMMENT '更新时间'  ,
  UNIQUE KEY `idx_tf_user_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-----------------------------  tf_user_his  -------------------------
drop table `tf_user_his`;
CREATE TABLE `tf_user_his` (
  `USER_ID`          int(11) NOT NULL           COMMENT '用户编号'  ,
  `USER_ALIAS`       varchar(20) NOT NULL       COMMENT '用户名称'  ,
  `USER_PASSWD`      varchar(50) NOT NULL       COMMENT '登录密码'  ,
  `PHONE`            varchar(20) NOT NULL       COMMENT '联系电话'  ,
  `EMAIL`            varchar(50) DEFAULT NULL   COMMENT '电子邮件'  ,
  `USER_NAME`        varchar(20) DEFAULT NULL   COMMENT '真实姓名'  ,
  `GENDER`           char(1)     DEFAULT NULL   COMMENT '性别'      ,
  `BIRTHDATE`        date        DEFAULT NULL   COMMENT '生日'      ,
  `LIVING_PROV`      varchar(10) DEFAULT NULL   COMMENT '居住省'    ,
  `LIVING_CITY`      varchar(20) DEFAULT NULL   COMMENT '居住市'    ,
  `LIVING_DISTRICT`  varchar(20) DEFAULT NULL   COMMENT '居住区县'  ,
  `HOME_PROV`        varchar(10) DEFAULT NULL   COMMENT '家乡省'    ,
  `HOME_CITY`        varchar(20) DEFAULT NULL   COMMENT '家乡市'    ,
  `HOME_DISTRICT`    varchar(20) DEFAULT NULL   COMMENT '家乡区县'  ,
  `PSPT_TYPE_CODE`   char(1)     DEFAULT NULL   COMMENT '证件类别'  ,
  `PSPT_ID`          varchar(20) DEFAULT NULL   COMMENT '证件号码'  ,
  `PSPT_END_DATE`    date        DEFAULT NULL   COMMENT '证件有效期',
  `PSPT_ADDR`        varchar(80) DEFAULT NULL   COMMENT '证件地址'  ,
  `USER_TYPE`        char(1)     NOT NULL       COMMENT '用户类型'  ,
  `IS_SELLER`        char(1)     NOT NULL       COMMENT '是否卖家'  ,
  `IS_NOTIFY`        char(1)     NOT NULL       COMMENT '消息提醒'  ,
  `REGISTER_TIME`    datetime    NOT NULL       COMMENT '注册时间'  ,
  `UPDATE_TIME`      datetime    NOT NULL       COMMENT '更新时间'  ,
  KEY `idx_tf_user_his_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

