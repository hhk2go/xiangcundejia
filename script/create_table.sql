
------------------------ �û���  tf_user  ---------------------------
drop table `tf_user`;
CREATE TABLE `tf_user` (
  `USER_ID`          int(11)      NOT NULL      COMMENT '�û����'  ,
  `USER_ALIAS`       varchar(20)  NOT NULL      COMMENT '�û�����'  ,
  `USER_PASSWD`      varchar(50)  NOT NULL      COMMENT '��¼����'  ,
  `PHONE`            varchar(20)  NOT NULL      COMMENT '��ϵ�绰'  ,
  `EMAIL`            varchar(50)  DEFAULT NULL  COMMENT '�����ʼ�'  ,
  `USER_NAME`        varchar(20)  DEFAULT NULL  COMMENT '��ʵ����'  ,
  `GENDER`           char(1)      DEFAULT NULL  COMMENT '�Ա�'      ,
  `BIRTHDATE`        date         DEFAULT NULL  COMMENT '����'      ,
  `LIVING_PROV`      varchar(10)  DEFAULT NULL  COMMENT '��סʡ'    ,
  `LIVING_CITY`      varchar(20)  DEFAULT NULL  COMMENT '��ס��'    ,
  `LIVING_DISTRICT`  varchar(20)  DEFAULT NULL  COMMENT '��ס����'  ,
  `HOME_PROV`        varchar(10)  DEFAULT NULL  COMMENT '����ʡ'    ,
  `HOME_CITY`        varchar(20)  DEFAULT NULL  COMMENT '������'    ,
  `HOME_DISTRICT`    varchar(20)  DEFAULT NULL  COMMENT '��������'  ,
  `PSPT_TYPE_CODE`   char(1)      DEFAULT NULL  COMMENT '֤�����'  ,
  `PSPT_ID`          varchar(20)  DEFAULT NULL  COMMENT '֤������'  ,
  `PSPT_END_DATE`    date         DEFAULT NULL  COMMENT '֤����Ч��',
  `PSPT_ADDR`        varchar(80)  DEFAULT NULL  COMMENT '֤����ַ'  ,
  `USER_TYPE`        char(1)      NOT NULL      COMMENT '�û�����'  ,
  `IS_SELLER`        char(1)      NOT NULL      COMMENT '�Ƿ�����'  ,
  `IS_NOTIFY`        char(1)      NOT NULL      COMMENT '��Ϣ����'  ,
  `REGISTER_TIME`    datetime     NOT NULL      COMMENT 'ע��ʱ��'  ,
  `UPDATE_TIME`      datetime     NOT NULL      COMMENT '����ʱ��'  ,
  UNIQUE KEY `idx_tf_user_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-------------------- �û���Ϣ������ˮ tf_user_his  --------------------
drop table `tf_user_his`;
CREATE TABLE `tf_user_his` (
  `USER_ID`          int(11)      NOT NULL          COMMENT '�û����'  ,
  `USER_ALIAS`       varchar(20)  NOT NULL      COMMENT '�û�����'  ,
  `USER_PASSWD`      varchar(50)  NOT NULL      COMMENT '��¼����'  ,
  `PHONE`            varchar(20)  NOT NULL      COMMENT '��ϵ�绰'  ,
  `EMAIL`            varchar(50)  DEFAULT NULL  COMMENT '�����ʼ�'  ,
  `USER_NAME`        varchar(20)  DEFAULT NULL  COMMENT '��ʵ����'  ,
  `GENDER`           char(1)      DEFAULT NULL  COMMENT '�Ա�'      ,
  `BIRTHDATE`        date         DEFAULT NULL  COMMENT '����'      ,
  `LIVING_PROV`      varchar(10)  DEFAULT NULL  COMMENT '��סʡ'    ,
  `LIVING_CITY`      varchar(20)  DEFAULT NULL  COMMENT '��ס��'    ,
  `LIVING_DISTRICT`  varchar(20)  DEFAULT NULL  COMMENT '��ס����'  ,
  `HOME_PROV`        varchar(10)  DEFAULT NULL  COMMENT '����ʡ'    ,
  `HOME_CITY`        varchar(20)  DEFAULT NULL  COMMENT '������'    ,
  `HOME_DISTRICT`    varchar(20)  DEFAULT NULL  COMMENT '��������'  ,
  `PSPT_TYPE_CODE`   char(1)      DEFAULT NULL  COMMENT '֤�����'  ,
  `PSPT_ID`          varchar(20)  DEFAULT NULL  COMMENT '֤������'  ,
  `PSPT_END_DATE`    date         DEFAULT NULL  COMMENT '֤����Ч��',
  `PSPT_ADDR`        varchar(80)  DEFAULT NULL  COMMENT '֤����ַ'  ,
  `USER_TYPE`        char(1)      NOT NULL      COMMENT '�û�����'  ,
  `IS_SELLER`        char(1)      NOT NULL      COMMENT '�Ƿ�����'  ,
  `IS_NOTIFY`        char(1)      NOT NULL      COMMENT '��Ϣ����'  ,
  `REGISTER_TIME`    datetime     NOT NULL      COMMENT 'ע��ʱ��'  ,
  `UPDATE_TIME`      datetime     NOT NULL      COMMENT '����ʱ��'  ,
  KEY `idx_tf_user_his_USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- �û���¼״̬	tf_user_state �ڴ����ʱ���� ---------------------- 

---------------------- ����	tp_house ----------------------
drop table `tp_house`;
CREATE TABLE `tp_house` (
  HOUSE_ID              INT           NOT NULL  COMMENT '�������'            , 
  HOUSE_NAME            VARCHAR(100)  NOT NULL  COMMENT '��������'            ,
  USER_ID               INT           NOT NULL  COMMENT '�û����'            ,
  HOUSE_FUNCTION        CHAR(1)       NOT NULL  COMMENT '������;'            ,
  TRANSACTION_TYPE      CHAR(1)       NOT NULL  COMMENT '��������'            ,
  PRICE                 INT           NOT NULL  COMMENT '�۸�'                ,
  UNIT                  INT                     COMMENT '��λ'                ,
  PROV                  VARCHAR(10)   NOT NULL  COMMENT '������ַ-ʡ'         ,
  CITY                  VARCHAR(20)   NOT NULL  COMMENT '������ַ-��'         ,
  DISTRICT              VARCHAR(20)   NOT NULL  COMMENT '������ַ-����'       ,
  ADDRESS               VARCHAR(100)  NOT NULL  COMMENT '������ַ-��ϸ'       ,
  BUILT_YEAR            YEAR                    COMMENT '�������'            ,
  BUILT_TYPE            VARCHAR(20)             COMMENT '��������'            ,
  BUILT_STRUCTURE       CHAR(1)                 COMMENT '�����ṹ'            ,
  BEDROOM               TINYINT       NOT NULL  COMMENT '��'                  ,
  LIVING_ROOM           TINYINT       NOT NULL  COMMENT '��'                  ,
  TOILET                TINYINT       NOT NULL  COMMENT '��'                  ,
  KITCHEN               TINYINT       NOT NULL  COMMENT '��'                  ,
  ORIENTATION           CHAR(1)                 COMMENT '����'                ,
  AREA                  INT           NOT NULL  COMMENT '�������'            ,
  USED_AREA             INT                     COMMENT '�������'            ,
  YARD_AREA             INT                     COMMENT 'Ժ���'              ,
  HOUSE_STRUCTURE       CHAR(1)       NOT NULL  COMMENT '���ͽṹ'            ,
  FACILITIES            VARCHAR(50)             COMMENT '��ʩ'                ,
  DECORATION            CHAR(1)                 COMMENT 'װ��'                ,
  NEIGHBORHOODS         VARCHAR(30)             COMMENT 'С������'            ,
  PROPERTY_COMPANY      VARCHAR(30)             COMMENT '��ҵ'                ,
  IS_ELEVATOR           CHAR(1)                 COMMENT '�䱸����'            ,
  FLOOR                 TINYINT                 COMMENT '����¥��'            ,
  PROP_ELEVATOR         VARCHAR(10)             COMMENT '�ݻ�����'            ,
  IS_MORTGAGE           CHAR(1)                 COMMENT '��Ѻ��Ϣ'            ,
  HOUSE_RIGHT_VALID     YEAR                    COMMENT '���ݲ�Ȩ֤��Ч����'  ,
  HOUSE_RIGHT_TYPE      CHAR(1)                 COMMENT '���ݲ�ȨȨ������'    ,
  LAND_OWNERSHIP_VALID  YEAR                    COMMENT '��������Ȩ֤��Ч����',
  LAND_OWNERSHIP_TYPE   CHAR(1)                 COMMENT '��������ȨȨ������'  ,
  FILE_NAME             VARCHAR(200)            COMMENT 'ͼƬ�ļ���'          ,
  PHONE                 VARCHAR(20)   NOT NULL  COMMENT '��ϵ�绰'            ,
  EXTRA_ID              INT                     COMMENT '����������Ϣ���'    ,
  INPUT_TIME            DATETIME                COMMENT '�Ǽ�ʱ��'            ,
  AUDIT_TIME            DATETIME                COMMENT '���ʱ��'            ,
  RELEASE_TIME          DATETIME                COMMENT '����ʱ��'            ,
  AUDIT_STATE           CHAR(1)                 COMMENT '���״̬'            ,
  AUDIT_EMPLOYEE        INT                     COMMENT '���Ա��'            ,
  RELEASE_STATE         CHAR(1)                 COMMENT '����״̬'            ,
  IS_VALID              CHAR(1)                 COMMENT '��Ʒ�Ƿ���Ч'        ,
  UNIQUE KEY `idx_tp_house_HOUSE_ID` (`HOUSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
              
        
---------------------- ���������ˮ	tp_house_his ----------------------
drop table `tp_house_his`;
CREATE TABLE `tp_house_his` (
  HOUSE_ID              INT           NOT NULL  COMMENT '�������'            , 
  HOUSE_NAME            VARCHAR(50)   NOT NULL  COMMENT '��������'            ,
  USER_ID               INT           NOT NULL  COMMENT '�û����'            ,
  HOUSE_FUNCTION        CHAR(1)       NOT NULL  COMMENT '������;'            ,
  TRANSACTION_TYPE      CHAR(1)       NOT NULL  COMMENT '��������'            ,
  PRICE                 INT           NOT NULL  COMMENT '�۸�'                ,
  UNIT                  INT                     COMMENT '��λ'                ,
  PROV                  VARCHAR(10)   NOT NULL  COMMENT '������ַ-ʡ'         ,
  CITY                  VARCHAR(20)   NOT NULL  COMMENT '������ַ-��'         ,
  DISTRICT              VARCHAR(20)   NOT NULL  COMMENT '������ַ-����'       ,
  ADDRESS               VARCHAR(50)   NOT NULL  COMMENT '������ַ-��ϸ'       ,
  BUILT_YEAR            YEAR                    COMMENT '�������'            ,
  BUILT_TYPE            VARCHAR(20)             COMMENT '��������'            ,
  BUILT_STRUCTURE       CHAR(1)                 COMMENT '�����ṹ'            ,
  BEDROOM               TINYINT       NOT NULL  COMMENT '��'                  ,
  LIVING_ROOM           TINYINT       NOT NULL  COMMENT '��'                  ,
  TOILET                TINYINT       NOT NULL  COMMENT '��'                  ,
  KITCHEN               TINYINT       NOT NULL  COMMENT '��'                  ,
  ORIENTATION           CHAR(1)                 COMMENT '����'                ,
  AREA                  INT           NOT NULL  COMMENT '�������'            ,
  USED_AREA             INT                     COMMENT '�������'            ,
  YARD_AREA             INT                     COMMENT 'Ժ���'              ,
  HOUSE_STRUCTURE       CHAR(1)       NOT NULL  COMMENT '���ͽṹ'            ,
  FACILITIES            VARCHAR(50)             COMMENT '��ʩ'                ,
  DECORATION            CHAR(1)                 COMMENT 'װ��'                ,
  NEIGHBORHOODS         VARCHAR(30)             COMMENT 'С������'            ,
  PROPERTY_COMPANY      VARCHAR(30)             COMMENT '��ҵ'                ,
  IS_ELEVATOR           CHAR(1)                 COMMENT '�䱸����'            ,
  FLOOR                 TINYINT                 COMMENT '����¥��'            ,
  PROP_ELEVATOR         VARCHAR(10)             COMMENT '�ݻ�����'            ,
  IS_MORTGAGE           CHAR(1)                 COMMENT '��Ѻ��Ϣ'            ,
  HOUSE_RIGHT_VALID     DATE                    COMMENT '���ݲ�Ȩ֤��Ч����'  ,
  HOUSE_RIGHT_TYPE      CHAR(1)                 COMMENT '���ݲ�ȨȨ������'    ,
  LAND_OWNERSHIP_VALID  DATE                    COMMENT '��������Ȩ֤��Ч����',
  LAND_OWNERSHIP_TYPE   CHAR(1)                 COMMENT '��������ȨȨ������'  ,
  FILE_NAME             VARCHAR(200)            COMMENT 'ͼƬ�ļ���'          ,
  PHONE                 VARCHAR(20)   NOT NULL  COMMENT '��ϵ�绰'            ,
  EXTRA_ID              INT                     COMMENT '����������Ϣ���'    ,
  INPUT_TIME            DATETIME                COMMENT '�Ǽ�ʱ��'            ,
  AUDIT_TIME            DATETIME                COMMENT '���ʱ��'            ,
  RELEASE_TIME          DATETIME                COMMENT '����ʱ��'            ,
  AUDIT_STATE           CHAR(1)                 COMMENT '���״̬'            ,
  AUDIT_EMPLOYEE        INT                     COMMENT '���Ա��'            ,
  RELEASE_STATE         CHAR(1)                 COMMENT '����״̬'            ,
  IS_VALID              CHAR(1)                 COMMENT '��Ʒ�Ƿ���Ч'        ,
  UNIQUE KEY `idx_tp_house_his_HOUSE_ID` (`HOUSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
              
        
---------------------- ����������Ϣ	tp_house_extra ----------------------
drop table `tp_house_extra`;
CREATE TABLE `tp_house_extra` (
  EXTRA_ID             INT          NOT NULL  COMMENT '������Ϣ���',
  REGION_NAME          VARCHAR(20)  NOT NULL  COMMENT '��������'    ,
  ADVANTAGE            VARCHAR(255) NOT NULL  COMMENT '��������'    ,
  REGION_INTRODUCTION  VARCHAR(255)           COMMENT '��������'    ,
  TRAFFIC              VARCHAR(255)           COMMENT '��ͨ����'    ,
  PERIPHERAL_MATCHING  VARCHAR(255)           COMMENT '�ܱ�����'    ,
  UNIQUE KEY `idx_tp_house_extra_EXTRA_ID` (`EXTRA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- �ز�	tp_land ----------------------
drop table `tp_land`;
CREATE TABLE `tp_land` (
  LAND_ID               INT           NOT NULL  COMMENT '�ز����'            ,
  LAND_NAME             VARCHAR(20)   NOT NULL  COMMENT '�ز�����'            ,
  LAND_USE              CHAR(1)       NOT NULL  COMMENT '������;'            ,
  TRANSACTION_TYPE      CHAR(1)       NOT NULL  COMMENT '��������'            ,
  TRANSACTION_VALID     date                    COMMENT '��ת����'            ,
  PRICE                 INT           NOT NULL  COMMENT '�۸�'                ,
  AREA                  INT           NOT NULL  COMMENT '���'                ,
  SOIL_TEXTURE          CHAR(1)                 COMMENT '�����ʵ�'            ,
  SOIL_THICKNESS        INT                     COMMENT '��Ч������'        ,
  SOIL_FERTILITY        CHAR(1)                 COMMENT '���ط���'            ,
  SHAPE                 CHAR(1)                 COMMENT '�ؿ���״'            ,
  SMOOTH                CHAR(1)                 COMMENT 'ƽ���̶�'            ,
  IRRIGATION            CHAR(1)                 COMMENT '�������'            ,
  DRAIN                 CHAR(1)                 COMMENT '��ˮ����'            ,
  WATER_SUPPLY          CHAR(1)                 COMMENT '��ˮ'                ,
  POWER_SUPPLY          CHAR(1)                 COMMENT '����'                ,
  NETWORK_SUPPLY        CHAR(1)                 COMMENT '����'                ,
  ROADWAY               CHAR(1)                 COMMENT '�����·'            ,
  MECHANIZATION         CHAR(1)                 COMMENT '��е���̶�'          ,
  EXTRA_FACILITIES      VARCHAR(200)            COMMENT '������ʩ'            ,
  PRODUCT_TYPE          CHAR(1)                 COMMENT '�ؿ��ʺϺ��־�Ӫ'    ,
  OUTPUT_PRODUCT        CHAR(1)                 COMMENT '�ؿ����'            ,
  LAND_OWNERSHIP        VARCHAR(50)             COMMENT '��������Ȩ'          ,
  LAND_OWNERSHIP_VALID  DATE                    COMMENT '��������Ȩ֤��Ч����',
  LAND_OWNERSHIP_TYPE   CHAR(1)                 COMMENT '��������ȨȨ������'  ,
  FILE_NAME             VARCHAR(200)            COMMENT 'ͼƬ�ļ���'          ,
  PHONE                 VARCHAR(20)   NOT NULL  COMMENT '��ϵ�绰'            ,
  EXTRA_ID              INT                     COMMENT '����������Ϣ���'    ,
  INPUT_TIME            DATETIME                COMMENT '�Ǽ�ʱ��'            ,
  AUDIT_TIME            DATETIME                COMMENT '���ʱ��'            ,
  RELEASE_TIME          DATETIME                COMMENT '����ʱ��'            ,
  AUDIT_STATE           CHAR(1)                 COMMENT '���״̬'            ,
  AUDIT_EMPLOYEE        INT                     COMMENT '���Ա��'            ,
  RELEASE_STATE         CHAR(1)                 COMMENT '����״̬'            ,
  IS_VALID              CHAR(1)                 COMMENT '��Ʒ�Ƿ���Ч'        ,
  UNIQUE KEY `idx_tp_land_LAND_ID` (`LAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- �ز������ˮ	tp_land_his ----------------------
drop table `tp_land_his`;
CREATE TABLE `tp_land_his` (
  LAND_ID               INT           NOT NULL  COMMENT '�ز����'            ,
  LAND_NAME             VARCHAR(20)   NOT NULL  COMMENT '�ز�����'            ,
  LAND_USE              CHAR(1)       NOT NULL  COMMENT '������;'            ,
  TRANSACTION_TYPE      CHAR(1)       NOT NULL  COMMENT '��������'            ,
  TRANSACTION_VALID     date                    COMMENT '��ת����'            ,
  PRICE                 INT           NOT NULL  COMMENT '�۸�'                ,
  AREA                  INT           NOT NULL  COMMENT '���'                ,
  SOIL_TEXTURE          CHAR(1)                 COMMENT '�����ʵ�'            ,
  SOIL_THICKNESS        INT                     COMMENT '��Ч������'        ,
  SOIL_FERTILITY        CHAR(1)                 COMMENT '���ط���'            ,
  SHAPE                 CHAR(1)                 COMMENT '�ؿ���״'            ,
  SMOOTH                CHAR(1)                 COMMENT 'ƽ���̶�'            ,
  IRRIGATION            CHAR(1)                 COMMENT '�������'            ,
  DRAIN                 CHAR(1)                 COMMENT '��ˮ����'            ,
  WATER_SUPPLY          CHAR(1)                 COMMENT '��ˮ'                ,
  POWER_SUPPLY          CHAR(1)                 COMMENT '����'                ,
  NETWORK_SUPPLY        CHAR(1)                 COMMENT '����'                ,
  ROADWAY               CHAR(1)                 COMMENT '�����·'            ,
  MECHANIZATION         CHAR(1)                 COMMENT '��е���̶�'          ,
  EXTRA_FACILITIES      VARCHAR(200)            COMMENT '������ʩ'            ,
  PRODUCT_TYPE          CHAR(1)                 COMMENT '�ؿ��ʺϺ��־�Ӫ'    ,
  OUTPUT_PRODUCT        CHAR(1)                 COMMENT '�ؿ����'            ,
  LAND_OWNERSHIP        VARCHAR(50)             COMMENT '��������Ȩ'          ,
  LAND_OWNERSHIP_VALID  DATE                    COMMENT '��������Ȩ֤��Ч����',
  LAND_OWNERSHIP_TYPE   CHAR(1)                 COMMENT '��������ȨȨ������'  ,
  FILE_NAME             VARCHAR(200)            COMMENT 'ͼƬ�ļ���'          ,
  PHONE                 VARCHAR(20)   NOT NULL  COMMENT '��ϵ�绰'            ,
  EXTRA_ID              INT                     COMMENT '����������Ϣ���'    ,
  INPUT_TIME            DATETIME                COMMENT '�Ǽ�ʱ��'            ,
  AUDIT_TIME            DATETIME                COMMENT '���ʱ��'            ,
  RELEASE_TIME          DATETIME                COMMENT '����ʱ��'            ,
  AUDIT_STATE           CHAR(1)                 COMMENT '���״̬'            ,
  AUDIT_EMPLOYEE        INT                     COMMENT '���Ա��'            ,
  RELEASE_STATE         CHAR(1)                 COMMENT '����״̬'            ,
  IS_VALID              CHAR(1)                 COMMENT '��Ʒ�Ƿ���Ч'        ,
  KEY `idx_tp_land_his_LAND_ID` (`LAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- �ز�������Ϣ	tp_land_extra ----------------------
drop table `tp_land_extra`;
CREATE TABLE `tp_land_extra` (
  EXTRA_ID             INT           NOT NULL  COMMENT '������Ϣ���'        ,
  REGION_NAME          VARCHAR(20)   NOT NULL  COMMENT '��������'            ,
  ADVANTAGE            VARCHAR(200)  NOT NULL  COMMENT '��������'            ,
  REGION_INTRODUCTION  VARCHAR(200)            COMMENT '��������'            ,
  TRAFFIC              VARCHAR(200)            COMMENT '��ͨ����'            ,
  PERIPHERAL_MATCHING  VARCHAR(200)            COMMENT '�ܱ�����'            ,
  DIST_HIGHWAY         INT                     COMMENT '����'                ,
  DIST_AIRPORT         INT                     COMMENT '����'                ,
  DIST_HIGHRAIL        INT                     COMMENT '����'                ,
  DIST_RAIL            INT                     COMMENT '��·'                ,
  DIST_STATEROAD       INT                     COMMENT '����'                ,
  DIST_PORT            INT                     COMMENT '�ۿ�'                ,
  WORKERS              VARCHAR(200)            COMMENT '�����Ͷ�����Դ'      ,
  INCOME               INT                     COMMENT '����ũ���˾��괿����',
  SUBSIDY              VARCHAR(200)            COMMENT '��������'            ,
  SUPP_POLICY          VARCHAR(200)            COMMENT '��������'            ,
  UNIQUE KEY `idx_tp_land_extra_EXTRA_ID` (`EXTRA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- �����̲�Ʒ	tp_service ----------------------
drop table `tp_service`;
CREATE TABLE `tp_service` (
  SERVICE_ID      INT           NOT NULL  COMMENT '��Ʒ���'      ,
  SERVICE_NAME    VARCHAR(20)   NOT NULL  COMMENT '��Ʒ����'      ,
  USER_ID         INT           NOT NULL  COMMENT '�������û�����',
  SERVICE_TYPE    CHAR(2)       NOT NULL  COMMENT '��������'      ,
  PRICE           INT           NOT NULL  COMMENT '�۸�'          ,
  INTRODUCTION    VARCHAR(200)  NOT NULL  COMMENT '��Ʒ����'      ,
  FILE_NAME       VARCHAR(200)            COMMENT 'ͼƬ�ļ���'    ,
  PHONE           VARCHAR(20)   NOT NULL  COMMENT '��ϵ�绰'      ,
  INPUT_TIME      DATETIME                COMMENT '�Ǽ�ʱ��'      ,
  AUDIT_TIME      DATETIME                COMMENT '���ʱ��'      ,
  RELEASE_TIME    DATETIME                COMMENT '����ʱ��'      ,
  AUDIT_STATE     CHAR(1)                 COMMENT '���״̬'      ,
  AUDIT_EMPLOYEE  INT                     COMMENT '���Ա��'      ,
  RELEASE_STATE   CHAR(1)                 COMMENT '����״̬'      ,
  IS_VALID        CHAR(1)                 COMMENT '��Ʒ�Ƿ���Ч'  ,
  UNIQUE KEY `idx_tp_service_SERVICE_ID` (`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- �����̲�Ʒ�����ˮ	tp_service_his ----------------
drop table `tp_service_his`;
CREATE TABLE `tp_service_his` (
  SERVICE_ID      INT           NOT NULL  COMMENT '��Ʒ���'      ,
  SERVICE_NAME    VARCHAR(20)   NOT NULL  COMMENT '��Ʒ����'      ,
  USER_ID         INT           NOT NULL  COMMENT '�������û�����',
  SERVICE_TYPE    CHAR(2)       NOT NULL  COMMENT '��������'      ,
  PRICE           INT           NOT NULL  COMMENT '�۸�'          ,
  INTRODUCTION    VARCHAR(200)  NOT NULL  COMMENT '��Ʒ����'      ,
  FILE_NAME       VARCHAR(200)            COMMENT 'ͼƬ�ļ���'    ,
  PHONE           VARCHAR(20)   NOT NULL  COMMENT '��ϵ�绰'      ,
  INPUT_TIME      DATETIME                COMMENT '�Ǽ�ʱ��'      ,
  AUDIT_TIME      DATETIME                COMMENT '���ʱ��'      ,
  RELEASE_TIME    DATETIME                COMMENT '����ʱ��'      ,
  AUDIT_STATE     CHAR(1)                 COMMENT '���״̬'      ,
  AUDIT_EMPLOYEE  INT                     COMMENT '���Ա��'      ,
  RELEASE_STATE   CHAR(1)                 COMMENT '����״̬'      ,
  IS_VALID        CHAR(1)                 COMMENT '��Ʒ�Ƿ���Ч'  ,
  UNIQUE KEY `idx_tp_service_his_SERVICE_ID` (`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- ������Ϣ	tn_news ----------------------
drop table `tn_news`;
CREATE TABLE `tn_news` (
  NEWS_ID        INT             NOT NULL  COMMENT '���ű��',
  NEWS_NAME      VARCHAR(20)     NOT NULL  COMMENT '��������',
  NEWS_DATE      DATE            NOT NULL  COMMENT '��������',
  SOURCE         VARCHAR(20)     NOT NULL  COMMENT '��Դ'    ,
  AUTHOR         VARCHAR(50)               COMMENT '����'    ,
  BODY           VARCHAR(5000)             COMMENT '����'    ,
  INPUT_TIME     DATETIME                  COMMENT '�Ǽ�ʱ��',
  AUDIT_TIME     DATETIME                  COMMENT '���ʱ��',
  RELEASE_TIME   DATETIME                  COMMENT '����ʱ��',
  AUDIT_STATE    CHAR(1)                   COMMENT '���״̬',
  RELEASE_STATE  CHAR(1)                   COMMENT '����״̬',
  UNIQUE KEY `idx_tn_news_SERVICE_ID` (`NEWS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

---------------------- Ա����Ϣ��	tf_employee ----------------------
drop table `tf_employee`;
CREATE TABLE `tf_employee` (
  EMPLOYEE_ID    INT          NOT NULL  COMMENT 'Ա�����',
  EMPLOYEE_NAME  VARCHAR(20)  NOT NULL  COMMENT 'Ա������',
  PASSWD         VARCHAR(50)  NOT NULL  COMMENT '��¼����',
  LEVEL          CHAR(1)                COMMENT 'Ȩ�޼���',
  UPDATE_TIME    DATE         NOT NULL  COMMENT '����ʱ��',
  UNIQUE KEY `idx_tf_employee_EMPLOYEE_ID` (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

