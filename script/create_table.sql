
-----------------------------  tf_user  ---------------------------
drop table `tf_user`;
CREATE TABLE `tf_user` (
  `USER_ID`          int(11) NOT NULL           COMMENT '�û����'  ,
  `USER_ALIAS`       varchar(20) NOT NULL       COMMENT '�û�����'  ,
  `USER_PASSWD`      varchar(50) NOT NULL       COMMENT '��¼����'  ,
  `PHONE`            varchar(20) NOT NULL       COMMENT '��ϵ�绰'  ,
  `EMAIL`            varchar(50) DEFAULT NULL   COMMENT '�����ʼ�'  ,
  `USER_NAME`        varchar(20) DEFAULT NULL   COMMENT '��ʵ����'  ,
  `GENDER`           char(1)     DEFAULT NULL   COMMENT '�Ա�'      ,
  `BIRTHDATE`        date        DEFAULT NULL   COMMENT '����'      ,
  `LIVING_PROV`      varchar(10) DEFAULT NULL   COMMENT '��סʡ'    ,
  `LIVING_CITY`      varchar(20) DEFAULT NULL   COMMENT '��ס��'    ,
  `LIVING_DISTRICT`  varchar(20) DEFAULT NULL   COMMENT '��ס����'  ,
  `HOME_PROV`        varchar(10) DEFAULT NULL   COMMENT '����ʡ'    ,
  `HOME_CITY`        varchar(20) DEFAULT NULL   COMMENT '������'    ,
  `HOME_DISTRICT`    varchar(20) DEFAULT NULL   COMMENT '��������'  ,
  `PSPT_TYPE_CODE`   char(1)     DEFAULT NULL   COMMENT '֤�����'  ,
  `PSPT_ID`          varchar(20) DEFAULT NULL   COMMENT '֤������'  ,
  `PSPT_END_DATE`    date        DEFAULT NULL   COMMENT '֤����Ч��',
  `PSPT_ADDR`        varchar(80) DEFAULT NULL   COMMENT '֤����ַ'  ,
  `USER_TYPE`        char(1)     NOT NULL       COMMENT '�û�����'  ,
  `IS_SELLER`        char(1)     NOT NULL       COMMENT '�Ƿ�����'  ,
  `IS_NOTIFY`        char(1)     NOT NULL       COMMENT '��Ϣ����'  ,
  `REGISTER_TIME`    datetime    NOT NULL       COMMENT 'ע��ʱ��'  ,
  `UPDATE_TIME`      datetime    NOT NULL       COMMENT '����ʱ��'  ,
  UNIQUE KEY `idx_tf_user_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-----------------------------  tf_user_his  -------------------------
drop table `tf_user_his`;
CREATE TABLE `tf_user_his` (
  `USER_ID`          int(11) NOT NULL           COMMENT '�û����'  ,
  `USER_ALIAS`       varchar(20) NOT NULL       COMMENT '�û�����'  ,
  `USER_PASSWD`      varchar(50) NOT NULL       COMMENT '��¼����'  ,
  `PHONE`            varchar(20) NOT NULL       COMMENT '��ϵ�绰'  ,
  `EMAIL`            varchar(50) DEFAULT NULL   COMMENT '�����ʼ�'  ,
  `USER_NAME`        varchar(20) DEFAULT NULL   COMMENT '��ʵ����'  ,
  `GENDER`           char(1)     DEFAULT NULL   COMMENT '�Ա�'      ,
  `BIRTHDATE`        date        DEFAULT NULL   COMMENT '����'      ,
  `LIVING_PROV`      varchar(10) DEFAULT NULL   COMMENT '��סʡ'    ,
  `LIVING_CITY`      varchar(20) DEFAULT NULL   COMMENT '��ס��'    ,
  `LIVING_DISTRICT`  varchar(20) DEFAULT NULL   COMMENT '��ס����'  ,
  `HOME_PROV`        varchar(10) DEFAULT NULL   COMMENT '����ʡ'    ,
  `HOME_CITY`        varchar(20) DEFAULT NULL   COMMENT '������'    ,
  `HOME_DISTRICT`    varchar(20) DEFAULT NULL   COMMENT '��������'  ,
  `PSPT_TYPE_CODE`   char(1)     DEFAULT NULL   COMMENT '֤�����'  ,
  `PSPT_ID`          varchar(20) DEFAULT NULL   COMMENT '֤������'  ,
  `PSPT_END_DATE`    date        DEFAULT NULL   COMMENT '֤����Ч��',
  `PSPT_ADDR`        varchar(80) DEFAULT NULL   COMMENT '֤����ַ'  ,
  `USER_TYPE`        char(1)     NOT NULL       COMMENT '�û�����'  ,
  `IS_SELLER`        char(1)     NOT NULL       COMMENT '�Ƿ�����'  ,
  `IS_NOTIFY`        char(1)     NOT NULL       COMMENT '��Ϣ����'  ,
  `REGISTER_TIME`    datetime    NOT NULL       COMMENT 'ע��ʱ��'  ,
  `UPDATE_TIME`      datetime    NOT NULL       COMMENT '����ʱ��'  ,
  KEY `idx_tf_user_his_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

