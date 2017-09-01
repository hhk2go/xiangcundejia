
------------------------ 用户表  tf_user  ---------------------------
drop table `tf_user`;
CREATE TABLE `tf_user` (
  `USER_ID`          int(11)      NOT NULL      COMMENT '用户编号'  ,
  `USER_ALIAS`       varchar(20)  NOT NULL      COMMENT '用户名称'  ,
  `USER_PASSWD`      varchar(50)  NOT NULL      COMMENT '登录密码'  ,
  `PHONE`            varchar(20)  NOT NULL      COMMENT '联系电话'  ,
  `EMAIL`            varchar(50)  DEFAULT NULL  COMMENT '电子邮件'  ,
  `USER_NAME`        varchar(20)  DEFAULT NULL  COMMENT '真实姓名'  ,
  `GENDER`           char(1)      DEFAULT NULL  COMMENT '性别'      ,
  `BIRTHDATE`        date         DEFAULT NULL  COMMENT '生日'      ,
  `LIVING_PROV`      varchar(10)  DEFAULT NULL  COMMENT '居住省'    ,
  `LIVING_CITY`      varchar(20)  DEFAULT NULL  COMMENT '居住市'    ,
  `LIVING_DISTRICT`  varchar(20)  DEFAULT NULL  COMMENT '居住区县'  ,
  `HOME_PROV`        varchar(10)  DEFAULT NULL  COMMENT '家乡省'    ,
  `HOME_CITY`        varchar(20)  DEFAULT NULL  COMMENT '家乡市'    ,
  `HOME_DISTRICT`    varchar(20)  DEFAULT NULL  COMMENT '家乡区县'  ,
  `PSPT_TYPE_CODE`   char(1)      DEFAULT NULL  COMMENT '证件类别'  ,
  `PSPT_ID`          varchar(20)  DEFAULT NULL  COMMENT '证件号码'  ,
  `PSPT_END_DATE`    date         DEFAULT NULL  COMMENT '证件有效期',
  `PSPT_ADDR`        varchar(80)  DEFAULT NULL  COMMENT '证件地址'  ,
  `USER_TYPE`        char(1)      NOT NULL      COMMENT '用户类型'  ,
  `IS_SELLER`        char(1)      NOT NULL      COMMENT '是否卖家'  ,
  `IS_NOTIFY`        char(1)      NOT NULL      COMMENT '消息提醒'  ,
  `REGISTER_TIME`    datetime     NOT NULL      COMMENT '注册时间'  ,
  `UPDATE_TIME`      datetime     NOT NULL      COMMENT '更新时间'  ,
  UNIQUE KEY `idx_tf_user_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-------------------- 用户信息更新流水 tf_user_his  --------------------
drop table `tf_user_his`;
CREATE TABLE `tf_user_his` (
  `USER_ID`          int(11)      NOT NULL          COMMENT '用户编号'  ,
  `USER_ALIAS`       varchar(20)  NOT NULL      COMMENT '用户名称'  ,
  `USER_PASSWD`      varchar(50)  NOT NULL      COMMENT '登录密码'  ,
  `PHONE`            varchar(20)  NOT NULL      COMMENT '联系电话'  ,
  `EMAIL`            varchar(50)  DEFAULT NULL  COMMENT '电子邮件'  ,
  `USER_NAME`        varchar(20)  DEFAULT NULL  COMMENT '真实姓名'  ,
  `GENDER`           char(1)      DEFAULT NULL  COMMENT '性别'      ,
  `BIRTHDATE`        date         DEFAULT NULL  COMMENT '生日'      ,
  `LIVING_PROV`      varchar(10)  DEFAULT NULL  COMMENT '居住省'    ,
  `LIVING_CITY`      varchar(20)  DEFAULT NULL  COMMENT '居住市'    ,
  `LIVING_DISTRICT`  varchar(20)  DEFAULT NULL  COMMENT '居住区县'  ,
  `HOME_PROV`        varchar(10)  DEFAULT NULL  COMMENT '家乡省'    ,
  `HOME_CITY`        varchar(20)  DEFAULT NULL  COMMENT '家乡市'    ,
  `HOME_DISTRICT`    varchar(20)  DEFAULT NULL  COMMENT '家乡区县'  ,
  `PSPT_TYPE_CODE`   char(1)      DEFAULT NULL  COMMENT '证件类别'  ,
  `PSPT_ID`          varchar(20)  DEFAULT NULL  COMMENT '证件号码'  ,
  `PSPT_END_DATE`    date         DEFAULT NULL  COMMENT '证件有效期',
  `PSPT_ADDR`        varchar(80)  DEFAULT NULL  COMMENT '证件地址'  ,
  `USER_TYPE`        char(1)      NOT NULL      COMMENT '用户类型'  ,
  `IS_SELLER`        char(1)      NOT NULL      COMMENT '是否卖家'  ,
  `IS_NOTIFY`        char(1)      NOT NULL      COMMENT '消息提醒'  ,
  `REGISTER_TIME`    datetime     NOT NULL      COMMENT '注册时间'  ,
  `UPDATE_TIME`      datetime     NOT NULL      COMMENT '更新时间'  ,
  KEY `idx_tf_user_his_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- 用户登录状态	tf_user_state 内存表，暂时不建 ---------------------- 

---------------------- 房产	tp_house ----------------------
drop table `tp_house`;
CREATE TABLE `tp_house` (
  HOUSE_ID              INT           NOT NULL  COMMENT '房产编号'            , 
  HOUSE_NAME            VARCHAR(100)  NOT NULL  COMMENT '房产名称'            ,
  USER_ID               INT           NOT NULL  COMMENT '用户编号'            ,
  HOUSE_FUNCTION        CHAR(1)       NOT NULL  COMMENT '房屋用途'            ,
  TRANSACTION_TYPE      CHAR(1)       NOT NULL  COMMENT '交易类型'            ,
  PRICE                 INT           NOT NULL  COMMENT '价格'                ,
  UNIT                  INT                     COMMENT '单位'                ,
  PROV                  VARCHAR(10)   NOT NULL  COMMENT '建筑地址-省'         ,
  CITY                  VARCHAR(20)   NOT NULL  COMMENT '建筑地址-市'         ,
  DISTRICT              VARCHAR(20)   NOT NULL  COMMENT '建筑地址-区县'       ,
  ADDRESS               VARCHAR(100)  NOT NULL  COMMENT '建筑地址-详细'       ,
  BUILT_YEAR            YEAR                    COMMENT '建筑年代'            ,
  BUILT_TYPE            VARCHAR(20)             COMMENT '建筑类型'            ,
  BUILT_STRUCTURE       CHAR(1)                 COMMENT '建筑结构'            ,
  BEDROOM               TINYINT       NOT NULL  COMMENT '室'                  ,
  LIVING_ROOM           TINYINT       NOT NULL  COMMENT '厅'                  ,
  TOILET                TINYINT       NOT NULL  COMMENT '卫'                  ,
  KITCHEN               TINYINT       NOT NULL  COMMENT '厨'                  ,
  ORIENTATION           CHAR(1)                 COMMENT '朝向'                ,
  AREA                  INT           NOT NULL  COMMENT '建筑面积'            ,
  USED_AREA             INT                     COMMENT '套内面积'            ,
  YARD_AREA             INT                     COMMENT '院面积'              ,
  HOUSE_STRUCTURE       CHAR(1)       NOT NULL  COMMENT '户型结构'            ,
  FACILITIES            VARCHAR(50)             COMMENT '设施'                ,
  DECORATION            CHAR(1)                 COMMENT '装修'                ,
  NEIGHBORHOODS         VARCHAR(30)             COMMENT '小区名称'            ,
  PROPERTY_COMPANY      VARCHAR(30)             COMMENT '物业'                ,
  IS_ELEVATOR           CHAR(1)                 COMMENT '配备电梯'            ,
  FLOOR                 TINYINT                 COMMENT '所在楼层'            ,
  PROP_ELEVATOR         VARCHAR(10)             COMMENT '梯户比例'            ,
  IS_MORTGAGE           CHAR(1)                 COMMENT '抵押信息'            ,
  HOUSE_RIGHT_VALID     YEAR                    COMMENT '房屋产权证有效期限'  ,
  HOUSE_RIGHT_TYPE      CHAR(1)                 COMMENT '房屋产权权属类型'    ,
  LAND_OWNERSHIP_VALID  YEAR                    COMMENT '土地所有权证有效期限',
  LAND_OWNERSHIP_TYPE   CHAR(1)                 COMMENT '土地所有权权属类型'  ,
  FILE_NAME             VARCHAR(200)            COMMENT '图片文件名'          ,
  PHONE                 VARCHAR(20)   NOT NULL  COMMENT '联系电话'            ,
  EXTRA_ID              INT                     COMMENT '房产附加信息编号'    ,
  INPUT_TIME            DATETIME                COMMENT '登记时间'            ,
  AUDIT_TIME            DATETIME                COMMENT '审核时间'            ,
  RELEASE_TIME          DATETIME                COMMENT '挂牌时间'            ,
  AUDIT_STATE           CHAR(1)                 COMMENT '审核状态'            ,
  AUDIT_EMPLOYEE        INT                     COMMENT '审核员工'            ,
  RELEASE_STATE         CHAR(1)                 COMMENT '发布状态'            ,
  IS_VALID              CHAR(1)                 COMMENT '产品是否有效'        ,
  UNIQUE KEY `idx_tp_house_HOUSE_ID` (`HOUSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
              
        
---------------------- 房产变更流水	tp_house_his ----------------------
drop table `tp_house_his`;
CREATE TABLE `tp_house_his` (
  HOUSE_ID              INT           NOT NULL  COMMENT '房产编号'            , 
  HOUSE_NAME            VARCHAR(50)   NOT NULL  COMMENT '房产名称'            ,
  USER_ID               INT           NOT NULL  COMMENT '用户编号'            ,
  HOUSE_FUNCTION        CHAR(1)       NOT NULL  COMMENT '房屋用途'            ,
  TRANSACTION_TYPE      CHAR(1)       NOT NULL  COMMENT '交易类型'            ,
  PRICE                 INT           NOT NULL  COMMENT '价格'                ,
  UNIT                  INT                     COMMENT '单位'                ,
  PROV                  VARCHAR(10)   NOT NULL  COMMENT '建筑地址-省'         ,
  CITY                  VARCHAR(20)   NOT NULL  COMMENT '建筑地址-市'         ,
  DISTRICT              VARCHAR(20)   NOT NULL  COMMENT '建筑地址-区县'       ,
  ADDRESS               VARCHAR(50)   NOT NULL  COMMENT '建筑地址-详细'       ,
  BUILT_YEAR            YEAR                    COMMENT '建筑年代'            ,
  BUILT_TYPE            VARCHAR(20)             COMMENT '建筑类型'            ,
  BUILT_STRUCTURE       CHAR(1)                 COMMENT '建筑结构'            ,
  BEDROOM               TINYINT       NOT NULL  COMMENT '室'                  ,
  LIVING_ROOM           TINYINT       NOT NULL  COMMENT '厅'                  ,
  TOILET                TINYINT       NOT NULL  COMMENT '卫'                  ,
  KITCHEN               TINYINT       NOT NULL  COMMENT '厨'                  ,
  ORIENTATION           CHAR(1)                 COMMENT '朝向'                ,
  AREA                  INT           NOT NULL  COMMENT '建筑面积'            ,
  USED_AREA             INT                     COMMENT '套内面积'            ,
  YARD_AREA             INT                     COMMENT '院面积'              ,
  HOUSE_STRUCTURE       CHAR(1)       NOT NULL  COMMENT '户型结构'            ,
  FACILITIES            VARCHAR(50)             COMMENT '设施'                ,
  DECORATION            CHAR(1)                 COMMENT '装修'                ,
  NEIGHBORHOODS         VARCHAR(30)             COMMENT '小区名称'            ,
  PROPERTY_COMPANY      VARCHAR(30)             COMMENT '物业'                ,
  IS_ELEVATOR           CHAR(1)                 COMMENT '配备电梯'            ,
  FLOOR                 TINYINT                 COMMENT '所在楼层'            ,
  PROP_ELEVATOR         VARCHAR(10)             COMMENT '梯户比例'            ,
  IS_MORTGAGE           CHAR(1)                 COMMENT '抵押信息'            ,
  HOUSE_RIGHT_VALID     DATE                    COMMENT '房屋产权证有效期限'  ,
  HOUSE_RIGHT_TYPE      CHAR(1)                 COMMENT '房屋产权权属类型'    ,
  LAND_OWNERSHIP_VALID  DATE                    COMMENT '土地所有权证有效期限',
  LAND_OWNERSHIP_TYPE   CHAR(1)                 COMMENT '土地所有权权属类型'  ,
  FILE_NAME             VARCHAR(200)            COMMENT '图片文件名'          ,
  PHONE                 VARCHAR(20)   NOT NULL  COMMENT '联系电话'            ,
  EXTRA_ID              INT                     COMMENT '房产附加信息编号'    ,
  INPUT_TIME            DATETIME                COMMENT '登记时间'            ,
  AUDIT_TIME            DATETIME                COMMENT '审核时间'            ,
  RELEASE_TIME          DATETIME                COMMENT '挂牌时间'            ,
  AUDIT_STATE           CHAR(1)                 COMMENT '审核状态'            ,
  AUDIT_EMPLOYEE        INT                     COMMENT '审核员工'            ,
  RELEASE_STATE         CHAR(1)                 COMMENT '发布状态'            ,
  IS_VALID              CHAR(1)                 COMMENT '产品是否有效'        ,
  UNIQUE KEY `idx_tp_house_his_HOUSE_ID` (`HOUSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
              
        
---------------------- 房产附加信息	tp_house_extra ----------------------
drop table `tp_house_extra`;
CREATE TABLE `tp_house_extra` (
  EXTRA_ID             INT          NOT NULL  COMMENT '附加信息编号',
  REGION_NAME          VARCHAR(20)  NOT NULL  COMMENT '地区名称'    ,
  ADVANTAGE            VARCHAR(255) NOT NULL  COMMENT '核心卖点'    ,
  REGION_INTRODUCTION  VARCHAR(255)           COMMENT '地区介绍'    ,
  TRAFFIC              VARCHAR(255)           COMMENT '交通出行'    ,
  PERIPHERAL_MATCHING  VARCHAR(255)           COMMENT '周边配套'    ,
  UNIQUE KEY `idx_tp_house_extra_EXTRA_ID` (`EXTRA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- 地产	tp_land ----------------------
drop table `tp_land`;
CREATE TABLE `tp_land` (
  LAND_ID               INT           NOT NULL  COMMENT '地产编号'            ,
  LAND_NAME             VARCHAR(20)   NOT NULL  COMMENT '地产名称'            ,
  LAND_USE              CHAR(1)       NOT NULL  COMMENT '土地用途'            ,
  TRANSACTION_TYPE      CHAR(1)       NOT NULL  COMMENT '交易类型'            ,
  TRANSACTION_VALID     date                    COMMENT '流转年限'            ,
  PRICE                 INT           NOT NULL  COMMENT '价格'                ,
  AREA                  INT           NOT NULL  COMMENT '面积'                ,
  SOIL_TEXTURE          CHAR(1)                 COMMENT '土壤质地'            ,
  SOIL_THICKNESS        INT                     COMMENT '有效土层厚度'        ,
  SOIL_FERTILITY        CHAR(1)                 COMMENT '土地肥力'            ,
  SHAPE                 CHAR(1)                 COMMENT '地块形状'            ,
  SMOOTH                CHAR(1)                 COMMENT '平整程度'            ,
  IRRIGATION            CHAR(1)                 COMMENT '灌溉条件'            ,
  DRAIN                 CHAR(1)                 COMMENT '排水条件'            ,
  WATER_SUPPLY          CHAR(1)                 COMMENT '供水'                ,
  POWER_SUPPLY          CHAR(1)                 COMMENT '供电'                ,
  NETWORK_SUPPLY        CHAR(1)                 COMMENT '网络'                ,
  ROADWAY               CHAR(1)                 COMMENT '进入道路'            ,
  MECHANIZATION         CHAR(1)                 COMMENT '机械化程度'          ,
  EXTRA_FACILITIES      VARCHAR(200)            COMMENT '附属设施'            ,
  PRODUCT_TYPE          CHAR(1)                 COMMENT '地块适合何种经营'    ,
  OUTPUT_PRODUCT        CHAR(1)                 COMMENT '地块产出'            ,
  LAND_OWNERSHIP        VARCHAR(50)             COMMENT '土地所有权'          ,
  LAND_OWNERSHIP_VALID  DATE                    COMMENT '土地所有权证有效期限',
  LAND_OWNERSHIP_TYPE   CHAR(1)                 COMMENT '土地所有权权属类型'  ,
  FILE_NAME             VARCHAR(200)            COMMENT '图片文件名'          ,
  PHONE                 VARCHAR(20)   NOT NULL  COMMENT '联系电话'            ,
  EXTRA_ID              INT                     COMMENT '房产附加信息编号'    ,
  INPUT_TIME            DATETIME                COMMENT '登记时间'            ,
  AUDIT_TIME            DATETIME                COMMENT '审核时间'            ,
  RELEASE_TIME          DATETIME                COMMENT '挂牌时间'            ,
  AUDIT_STATE           CHAR(1)                 COMMENT '审核状态'            ,
  AUDIT_EMPLOYEE        INT                     COMMENT '审核员工'            ,
  RELEASE_STATE         CHAR(1)                 COMMENT '发布状态'            ,
  IS_VALID              CHAR(1)                 COMMENT '产品是否有效'        ,
  UNIQUE KEY `idx_tp_land_LAND_ID` (`LAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- 地产变更流水	tp_land_his ----------------------
drop table `tp_land_his`;
CREATE TABLE `tp_land_his` (
  LAND_ID               INT           NOT NULL  COMMENT '地产编号'            ,
  LAND_NAME             VARCHAR(20)   NOT NULL  COMMENT '地产名称'            ,
  LAND_USE              CHAR(1)       NOT NULL  COMMENT '土地用途'            ,
  TRANSACTION_TYPE      CHAR(1)       NOT NULL  COMMENT '交易类型'            ,
  TRANSACTION_VALID     date                    COMMENT '流转年限'            ,
  PRICE                 INT           NOT NULL  COMMENT '价格'                ,
  AREA                  INT           NOT NULL  COMMENT '面积'                ,
  SOIL_TEXTURE          CHAR(1)                 COMMENT '土壤质地'            ,
  SOIL_THICKNESS        INT                     COMMENT '有效土层厚度'        ,
  SOIL_FERTILITY        CHAR(1)                 COMMENT '土地肥力'            ,
  SHAPE                 CHAR(1)                 COMMENT '地块形状'            ,
  SMOOTH                CHAR(1)                 COMMENT '平整程度'            ,
  IRRIGATION            CHAR(1)                 COMMENT '灌溉条件'            ,
  DRAIN                 CHAR(1)                 COMMENT '排水条件'            ,
  WATER_SUPPLY          CHAR(1)                 COMMENT '供水'                ,
  POWER_SUPPLY          CHAR(1)                 COMMENT '供电'                ,
  NETWORK_SUPPLY        CHAR(1)                 COMMENT '网络'                ,
  ROADWAY               CHAR(1)                 COMMENT '进入道路'            ,
  MECHANIZATION         CHAR(1)                 COMMENT '机械化程度'          ,
  EXTRA_FACILITIES      VARCHAR(200)            COMMENT '附属设施'            ,
  PRODUCT_TYPE          CHAR(1)                 COMMENT '地块适合何种经营'    ,
  OUTPUT_PRODUCT        CHAR(1)                 COMMENT '地块产出'            ,
  LAND_OWNERSHIP        VARCHAR(50)             COMMENT '土地所有权'          ,
  LAND_OWNERSHIP_VALID  DATE                    COMMENT '土地所有权证有效期限',
  LAND_OWNERSHIP_TYPE   CHAR(1)                 COMMENT '土地所有权权属类型'  ,
  FILE_NAME             VARCHAR(200)            COMMENT '图片文件名'          ,
  PHONE                 VARCHAR(20)   NOT NULL  COMMENT '联系电话'            ,
  EXTRA_ID              INT                     COMMENT '房产附加信息编号'    ,
  INPUT_TIME            DATETIME                COMMENT '登记时间'            ,
  AUDIT_TIME            DATETIME                COMMENT '审核时间'            ,
  RELEASE_TIME          DATETIME                COMMENT '挂牌时间'            ,
  AUDIT_STATE           CHAR(1)                 COMMENT '审核状态'            ,
  AUDIT_EMPLOYEE        INT                     COMMENT '审核员工'            ,
  RELEASE_STATE         CHAR(1)                 COMMENT '发布状态'            ,
  IS_VALID              CHAR(1)                 COMMENT '产品是否有效'        ,
  KEY `idx_tp_land_his_LAND_ID` (`LAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- 地产附加信息	tp_land_extra ----------------------
drop table `tp_land_extra`;
CREATE TABLE `tp_land_extra` (
  EXTRA_ID             INT           NOT NULL  COMMENT '附加信息编号'        ,
  REGION_NAME          VARCHAR(20)   NOT NULL  COMMENT '地区名称'            ,
  ADVANTAGE            VARCHAR(200)  NOT NULL  COMMENT '核心卖点'            ,
  REGION_INTRODUCTION  VARCHAR(200)            COMMENT '地区介绍'            ,
  TRAFFIC              VARCHAR(200)            COMMENT '交通出行'            ,
  PERIPHERAL_MATCHING  VARCHAR(200)            COMMENT '周边配套'            ,
  DIST_HIGHWAY         INT                     COMMENT '高速'                ,
  DIST_AIRPORT         INT                     COMMENT '机场'                ,
  DIST_HIGHRAIL        INT                     COMMENT '高铁'                ,
  DIST_RAIL            INT                     COMMENT '铁路'                ,
  DIST_STATEROAD       INT                     COMMENT '国道'                ,
  DIST_PORT            INT                     COMMENT '港口'                ,
  WORKERS              VARCHAR(200)            COMMENT '当地劳动力资源'      ,
  INCOME               INT                     COMMENT '当地农民人均年纯收入',
  SUBSIDY              VARCHAR(200)            COMMENT '政府补贴'            ,
  SUPP_POLICY          VARCHAR(200)            COMMENT '扶持政策'            ,
  UNIQUE KEY `idx_tp_land_extra_EXTRA_ID` (`EXTRA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- 合作商产品	tp_service ----------------------
drop table `tp_service`;
CREATE TABLE `tp_service` (
  SERVICE_ID      INT           NOT NULL  COMMENT '产品编号'      ,
  SERVICE_NAME    VARCHAR(20)   NOT NULL  COMMENT '产品名称'      ,
  USER_ID         INT           NOT NULL  COMMENT '服务商用户编码',
  SERVICE_TYPE    CHAR(2)       NOT NULL  COMMENT '服务类型'      ,
  PRICE           INT           NOT NULL  COMMENT '价格'          ,
  INTRODUCTION    VARCHAR(200)  NOT NULL  COMMENT '产品介绍'      ,
  FILE_NAME       VARCHAR(200)            COMMENT '图片文件名'    ,
  PHONE           VARCHAR(20)   NOT NULL  COMMENT '联系电话'      ,
  INPUT_TIME      DATETIME                COMMENT '登记时间'      ,
  AUDIT_TIME      DATETIME                COMMENT '审核时间'      ,
  RELEASE_TIME    DATETIME                COMMENT '挂牌时间'      ,
  AUDIT_STATE     CHAR(1)                 COMMENT '审核状态'      ,
  AUDIT_EMPLOYEE  INT                     COMMENT '审核员工'      ,
  RELEASE_STATE   CHAR(1)                 COMMENT '发布状态'      ,
  IS_VALID        CHAR(1)                 COMMENT '产品是否有效'  ,
  UNIQUE KEY `idx_tp_service_SERVICE_ID` (`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- 合作商产品变更流水	tp_service_his ----------------
drop table `tp_service_his`;
CREATE TABLE `tp_service_his` (
  SERVICE_ID      INT           NOT NULL  COMMENT '产品编号'      ,
  SERVICE_NAME    VARCHAR(20)   NOT NULL  COMMENT '产品名称'      ,
  USER_ID         INT           NOT NULL  COMMENT '服务商用户编码',
  SERVICE_TYPE    CHAR(2)       NOT NULL  COMMENT '服务类型'      ,
  PRICE           INT           NOT NULL  COMMENT '价格'          ,
  INTRODUCTION    VARCHAR(200)  NOT NULL  COMMENT '产品介绍'      ,
  FILE_NAME       VARCHAR(200)            COMMENT '图片文件名'    ,
  PHONE           VARCHAR(20)   NOT NULL  COMMENT '联系电话'      ,
  INPUT_TIME      DATETIME                COMMENT '登记时间'      ,
  AUDIT_TIME      DATETIME                COMMENT '审核时间'      ,
  RELEASE_TIME    DATETIME                COMMENT '挂牌时间'      ,
  AUDIT_STATE     CHAR(1)                 COMMENT '审核状态'      ,
  AUDIT_EMPLOYEE  INT                     COMMENT '审核员工'      ,
  RELEASE_STATE   CHAR(1)                 COMMENT '发布状态'      ,
  IS_VALID        CHAR(1)                 COMMENT '产品是否有效'  ,
  UNIQUE KEY `idx_tp_service_his_SERVICE_ID` (`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- 新闻信息	tn_news ----------------------
drop table `tn_news`;
CREATE TABLE `tn_news` (
  NEWS_ID        INT             NOT NULL  COMMENT '新闻编号',
  NEWS_NAME      VARCHAR(20)     NOT NULL  COMMENT '新闻名称',
  NEWS_DATE      DATE            NOT NULL  COMMENT '新闻日期',
  SOURCE         VARCHAR(20)     NOT NULL  COMMENT '来源'    ,
  AUTHOR         VARCHAR(50)               COMMENT '作者'    ,
  BODY           VARCHAR(5000)             COMMENT '正文'    ,
  INPUT_TIME     DATETIME                  COMMENT '登记时间',
  AUDIT_TIME     DATETIME                  COMMENT '审核时间',
  RELEASE_TIME   DATETIME                  COMMENT '挂牌时间',
  AUDIT_STATE    CHAR(1)                   COMMENT '审核状态',
  RELEASE_STATE  CHAR(1)                   COMMENT '发布状态',
  UNIQUE KEY `idx_tn_news_SERVICE_ID` (`NEWS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- 员工信息表	tf_employee ----------------------
drop table `tf_employee`;
CREATE TABLE `tf_employee` (
  EMPLOYEE_ID    INT          NOT NULL  COMMENT '员工编号',
  EMPLOYEE_NAME  VARCHAR(20)  NOT NULL  COMMENT '员工名称',
  PASSWD         VARCHAR(50)  NOT NULL  COMMENT '登录密码',
  LEVEL          CHAR(1)                COMMENT '权限级别',
  UPDATE_TIME    DATE         NOT NULL  COMMENT '更新时间',
  UNIQUE KEY `idx_tf_employee_EMPLOYEE_ID` (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

