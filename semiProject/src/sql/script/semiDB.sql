--------------------------------------------------------
--  ������ ������ - ȭ����-6��-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_BFID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_BFID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 73 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_BOARD"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 213 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MEMBER
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_MEMBER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 93 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MFID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_MFID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 93 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SERVICE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_SERVICE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 170 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_SFID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_SFID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 26 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ACCOUNT
--------------------------------------------------------

  CREATE TABLE "ACCOUNT" 
   (	"ACCOUNT" VARCHAR2(100 BYTE), 
	"BANK" VARCHAR2(100 BYTE), 
	"ACCOUNT_HOLD" VARCHAR2(100 BYTE), 
	"USER_NO" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "BOARD" 
   (	"BOARD_NO" NUMBER, 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"USER_NO" VARCHAR2(100 BYTE), 
	"WRITE_DATE" DATE DEFAULT SYSDATE, 
	"READ_NUM" NUMBER, 
	"BOARD_CODE" NUMBER, 
	"BOARD_STATUS" VARCHAR2(255 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table BUYER
--------------------------------------------------------

  CREATE TABLE "BUYER" 
   (	"B_USER_NO" VARCHAR2(100 BYTE), 
	"REPORT_NUM" NUMBER DEFAULT 0, 
	"BUYCOUNT" VARCHAR2(255 BYTE) DEFAULT '0'
   ) ;
--------------------------------------------------------
--  DDL for Table B_CATEGORY
--------------------------------------------------------

  CREATE TABLE "B_CATEGORY" 
   (	"BOARD_CODE" VARCHAR2(255 BYTE), 
	"BOARD_NAME" VARCHAR2(255 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "CATEGORY" 
   (	"CATEGORY_CODE" VARCHAR2(10 BYTE), 
	"CATEGORY_NAME" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table DAYS
--------------------------------------------------------

  CREATE TABLE "DAYS" 
   (	"AVAILABLE_DATE" VARCHAR2(10 BYTE), 
	"SERVICE_NO" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table FILES
--------------------------------------------------------

  CREATE TABLE "FILES" 
   (	"FID" NUMBER, 
	"BOARD_NO" NUMBER, 
	"ORIGIN_NAME" VARCHAR2(255 BYTE), 
	"CHANGE_NAME" VARCHAR2(255 BYTE), 
	"FILE_PATH" VARCHAR2(1000 BYTE), 
	"UPLOAD_DATE" DATE DEFAULT SYSDATE, 
	"FILE_LEVEL" NUMBER, 
	"DOWNLOAD_COUNT" NUMBER DEFAULT 0, 
	"STATUS" VARCHAR2(3 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GRADE_CLASS
--------------------------------------------------------

  CREATE TABLE "GRADE_CLASS" 
   (	"GRADE_NO" VARCHAR2(20 BYTE), 
	"GRADE_MIN" NUMBER, 
	"GRADE_MAX" NUMBER, 
	"GRADE_NAME" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table INQUIARY
--------------------------------------------------------

  CREATE TABLE "INQUIARY" 
   (	"BOARD_NO" NUMBER, 
	"INQUIRY_CONTENT" VARCHAR2(2000 BYTE) DEFAULT 'N', 
	"INQUIRY_YN" VARCHAR2(3 BYTE) DEFAULT 'N', 
	"INQUIRY_DATE" DATE DEFAULT SYSDATE, 
	"BOARD_TYPE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table INQUIARY_TYPE
--------------------------------------------------------

  CREATE TABLE "INQUIARY_TYPE" 
   (	"BOARD_TYPE" VARCHAR2(20 BYTE), 
	"INQUIARY_NAME" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table LIST
--------------------------------------------------------

  CREATE TABLE "LIST" 
   (	"SERVICE_NO" NUMBER, 
	"TRADE_DATE" DATE DEFAULT SYSDATE, 
	"S_USER_NO" VARCHAR2(100 BYTE), 
	"B_USER_NO" VARCHAR2(100 BYTE), 
	"REFUND_YN" VARCHAR2(3 BYTE) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"USER_NO" VARCHAR2(100 BYTE), 
	"USER_ID" VARCHAR2(100 BYTE), 
	"USER_PWD" VARCHAR2(100 BYTE), 
	"USER_NAME" VARCHAR2(30 BYTE), 
	"BIRTH" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(100 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"POINT" NUMBER DEFAULT 0, 
	"ENROLL_DATE" DATE DEFAULT SYSDATE, 
	"DROP_DATE" DATE DEFAULT SYSDATE, 
	"STATUS" VARCHAR2(20 BYTE) DEFAULT 'Y', 
	"GRADE" VARCHAR2(20 BYTE) DEFAULT 'BRONZE', 
	"GRADE_TOT" NUMBER DEFAULT 0, 
	"PROFILE" VARCHAR2(100 BYTE), 
	"SELL_YN" VARCHAR2(3 BYTE) DEFAULT 'Y', 
	"REVIEW_YN" VARCHAR2(3 BYTE) DEFAULT 'Y'
   ) ;
--------------------------------------------------------
--  DDL for Table PROFILE_FILES
--------------------------------------------------------

  CREATE TABLE "PROFILE_FILES" 
   (	"FID" NUMBER, 
	"USER_NO" VARCHAR2(100 BYTE), 
	"ORIGIN_NAME" VARCHAR2(255 BYTE), 
	"CHANGE_NAME" VARCHAR2(255 BYTE), 
	"FILE_PATH" VARCHAR2(1000 BYTE), 
	"UPLOAD_DATE" DATE DEFAULT SYSDATE, 
	"STATUS" VARCHAR2(3 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table REPORT
--------------------------------------------------------

  CREATE TABLE "REPORT" 
   (	"BOARD_NO" NUMBER, 
	"RE_CONTENT" VARCHAR2(4000 BYTE) DEFAULT 'N', 
	"RE_YN" VARCHAR2(3 BYTE) DEFAULT 'N', 
	"RE_DATE" DATE DEFAULT SYSDATE, 
	"SERVICE_NO" NUMBER, 
	"REPORT_TYPE" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table REPORT_TYPE
--------------------------------------------------------

  CREATE TABLE "REPORT_TYPE" 
   (	"REPORT_TYPE" VARCHAR2(100 BYTE), 
	"REPORT_NAME" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"BOARD_NO" NUMBER, 
	"RATING" NUMBER, 
	"SERVICE_NO" NUMBER, 
	"S_USER_NO" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SELLER
--------------------------------------------------------

  CREATE TABLE "SELLER" 
   (	"S_USER_NO" VARCHAR2(100 BYTE), 
	"REPORT_NUM" NUMBER DEFAULT 0, 
	"SELLCOUNT" VARCHAR2(255 BYTE) DEFAULT '0'
   ) ;
--------------------------------------------------------
--  DDL for Table SERVICE
--------------------------------------------------------

  CREATE TABLE "SERVICE" 
   (	"SERVICE_NO" NUMBER, 
	"S_USER_NO" VARCHAR2(100 BYTE), 
	"SALE_INFO" VARCHAR2(4000 BYTE), 
	"AVAILABLE_AREA" VARCHAR2(100 BYTE), 
	"READCOUNT" NUMBER DEFAULT 0, 
	"FILE_COUNT" NUMBER DEFAULT 0, 
	"FILE_YN" VARCHAR2(5 BYTE) DEFAULT 'Y', 
	"B_USER_NO" VARCHAR2(100 BYTE), 
	"SALEMETHOD" VARCHAR2(10 BYTE), 
	"SUBJECT" VARCHAR2(200 BYTE), 
	"CATEGORY_CODE" VARCHAR2(10 BYTE), 
	"DEADLINE" DATE, 
	"PRICE_BIDDING" NUMBER, 
	"PRICE_SALE" NUMBER, 
	"CONTACTTIME_START" DATE, 
	"CONTACTTIME_FINISH" DATE, 
	"TITLE" VARCHAR2(100 BYTE), 
	"REGISTER_DATE" DATE, 
	"S_EXPLAIN" VARCHAR2(4000 BYTE), 
	"SERVICE_STATUS" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table SERVICE_FILES
--------------------------------------------------------

  CREATE TABLE "SERVICE_FILES" 
   (	"FID" NUMBER, 
	"SERVICE_NO" NUMBER, 
	"ORIGIN_NAME" VARCHAR2(20 BYTE), 
	"CHANGE_NAME" VARCHAR2(20 BYTE), 
	"FILE_PATH" VARCHAR2(1000 BYTE), 
	"UPLOAD_DATE" DATE DEFAULT SYSDATE, 
	"FILE_LEVEL" NUMBER, 
	"DOWNLOAD_COUNT" NUMBER, 
	"STATUS" VARCHAR2(3 BYTE) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for View GRADELIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "GRADELIST" ("RNUM", "USER_NO", "USER_ID", "USER_PWD", "USER_NAME", "BIRTH", "PHONE", "EMAIL", "POINT", "ENROLL_DATE", "DROP_DATE", "STATUS", "GRADE", "GRADE_TOT", "PROFILE", "SELL_YN", "REVIEW_YN") AS 
  SELECT "RNUM","USER_NO","USER_ID","USER_PWD","USER_NAME","BIRTH","PHONE","EMAIL","POINT","ENROLL_DATE","DROP_DATE","STATUS","GRADE","GRADE_TOT","PROFILE","SELL_YN","REVIEW_YN"
FROM (SELECT ROWNUM RNUM,M.* FROM MEMBER M LEFT JOIN SELLER S ON(S.S_USER_NO=M.USER_NO) LEFT JOIN BUYER B ON(B.B_USER_NO=M.USER_NO) WHERE STATUS='Y' ORDER BY USER_NO DESC)
;
--------------------------------------------------------
--  DDL for View INQUIARYLIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "INQUIARYLIST" ("RNUM", "BOARD_NO", "INQUIRY_CONTENT", "INQUIRY_YN", "INQUIRY_DATE", "BOARD_TYPE") AS 
  SELECT "RNUM","BOARD_NO","INQUIRY_CONTENT","INQUIRY_YN","INQUIRY_DATE","BOARD_TYPE"
FROM(SELECT ROWNUM RNUM,I.* FROM INQUIARY I LEFT JOIN INQUIARY_TYPE T ON(I.BOARD_TYPE=T.BOARD_TYPE) LEFT JOIN BOARD B ON (I.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE B.BOARD_STATUS='Y' ORDER BY B.BOARD_NO DESC)
;
--------------------------------------------------------
--  DDL for View NOTICELIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "NOTICELIST" ("RNUM", "BOARD_NO", "TITLE", "CONTENT", "USER_NO", "WRITE_DATE", "READ_NUM", "BOARD_CODE", "BOARD_STATUS") AS 
  SELECT "RNUM","BOARD_NO","TITLE","CONTENT","USER_NO","WRITE_DATE","READ_NUM","BOARD_CODE","BOARD_STATUS"
FROM(SELECT ROWNUM RNUM, B.* FROM BOARD B WHERE (BOARD_CODE=20 or board_code=50 or board_code=60) AND BOARD_STATUS='Y' ORDER BY B.BOARD_NO DESC)
;
--------------------------------------------------------
--  DDL for View REPORTLIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "REPORTLIST" ("RNUM", "BOARD_NO", "RE_CONTENT", "RE_YN", "RE_DATE", "SERVICE_NO", "REPORT_TYPE") AS 
  SELECT "RNUM","BOARD_NO","RE_CONTENT","RE_YN","RE_DATE","SERVICE_NO","REPORT_TYPE"
FROM(SELECT ROWNUM RNUM, P.* FROM REPORT P LEFT JOIN REPORT_TYPE R ON (P.REPORT_TYPE=R.REPORT_TYPE) LEFT JOIN BOARD B ON (P.BOARD_NO=B.BOARD_NO) LEFT JOIN MEMBER M ON (B.USER_NO=M.USER_NO) WHERE B.BOARD_CODE=30 AND B.BOARD_STATUS='Y' ORDER BY B.BOARD_NO DESC)
;
--------------------------------------------------------
--  DDL for View REVIEWLIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "REVIEWLIST" ("ROWNUM", "BOARD_NO", "RATING", "SERVICE_NO", "S_USER_NO") AS 
  SELECT "ROWNUM","BOARD_NO","RATING","SERVICE_NO","S_USER_NO"
FROM(SELECT ROWNUM, F.* FROM REVIEW F 
LEFT JOIN BOARD B ON (F.BOARD_NO = B.BOARD_NO) 
LEFT JOIN MEMBER M ON (B.USER_NO = M.USER_NO) 
LEFT JOIN BUYER BE ON (M.USER_NO = BE.B_USER_NO)
LEFT JOIN LIST L ON (BE.B_USER_NO = L.B_USER_NO)
LEFT JOIN SERVICE S ON (L.SERVICE_NO = S.SERVICE_NO)
LEFT JOIN CATEGORY C ON (S.CATEGORY_CODE = C.CATEGORY_CODE) WHERE B.BOARD_CODE=40 AND B.BOARD_STATUS='Y' ORDER BY B.WRITE_DATE DESC)
;
--------------------------------------------------------
--  DDL for View SERVICE_BUY_LIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SERVICE_BUY_LIST" ("CHANGE_NAME", "TITLE", "TRADE_DATE", "USER_NAME", "PHONE", "SERVICE_NO", "B_USER_NO", "CONTENT", "RATING", "PRICE_SALE") AS 
  SELECT SF.CHANGE_NAME
        , S.TITLE
        , L.TRADE_DATE
        , M.USER_NAME
        , M.PHONE
        , S.SERVICE_NO
        , S.B_USER_NO
        , b.content
        , r.rating
        , s.price_sale
FROM SERVICE S
LEFT JOIN SERVICE_FILES SF ON(S.SERVICE_NO = SF.SERVICE_NO)
LEFT JOIN LIST L ON(S.SERVICE_NO = L.SERVICE_NO)
LEFT JOIN SELLER SL ON(S.S_USER_NO = SL.S_USER_NO)
LEFT JOIN MEMBER M ON(SL.S_USER_NO = M.USER_NO)
LEFT JOIN REVIEW R ON(S.SERVICE_NO = r.service_no)
LEFT JOIN BOARD B ON(R.BOARD_NO = B.BOARD_NO)
WHERE SF.FILE_LEVEL=0
;
--------------------------------------------------------
--  DDL for View SERVICE_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SERVICE_INFO" ("SERVICE_NO", "S_USER_NO", "CHANGE_NAME", "PHONE", "CONTACTTIME_START", "CONTACTTIME_FINISH", "SALE_INFO", "S_EXPLAIN", "AVAILABLE_AREA", "AVAILABLE_DATE", "SUBJECT") AS 
  SELECT SV.SERVICE_NO,
            SV.S_USER_NO,
            PF.CHANGE_NAME, 
            M.PHONE,
            SV.CONTACTTIME_START,
            SV.CONTACTTIME_FINISH,
            SV.SALE_INFO,
            SV.S_EXPLAIN,
            SV.AVAILABLE_AREA,
            D.AVAILABLE_DATE,
            SV.SUBJECT
FROM SERVICE SV
LEFT JOIN DAYS D ON(SV.SERVICE_NO = D.SERVICE_NO)
LEFT JOIN SELLER S ON(sv.s_user_no = s.s_user_no)
LEFT JOIN MEMBER M ON(s.s_user_no = m.user_no)
LEFT JOIN PROFILE_FILES PF ON(M.USER_NO = PF.USER_NO)
;
--------------------------------------------------------
--  DDL for View SERVICE_PD
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SERVICE_PD" ("SERVICE_NO", "S_USER_NO", "SALEMETHOD", "CATEGORY_CODE", "CATEGORY_NAME", "CHANGE_NAME", "USER_ID", "TITLE", "PRICE_SALE", "PRICE_BIDDING", "GRADE_NAME", "GRADE_NO", "READCOUNT", "DEADLINE", "SERVICE_STATUS") AS 
  SELECT SV.SERVICE_NO
     , S.S_USER_NO
     , SV.SALEMETHOD
     , SV.CATEGORY_CODE
     , C.CATEGORY_NAME
     , SF.CHANGE_NAME
     , M.USER_ID
     , SV.TITLE
     , SV.PRICE_SALE
     , SV.PRICE_BIDDING
     , G.GRADE_NAME
     , G.GRADE_NO
     , SV.READCOUNT
     , SV.DEADLINE
     , SV.SERVICE_STATUS
    FROM MEMBER M
    JOIN GRADE_CLASS G ON (M.GRADE = G.GRADE_NO)
    JOIN SELLER S ON (M.USER_NO = S.S_USER_NO)
    JOIN SERVICE SV ON (S.S_USER_NO = SV.S_USER_NO)
    JOIN CATEGORY C ON (SV.CATEGORY_CODE = C.CATEGORY_CODE)
    JOIN SERVICE_FILES SF ON (SV.SERVICE_NO = SF.SERVICE_NO)
;
--------------------------------------------------------
--  DDL for View SERVICE_REVIEW_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SERVICE_REVIEW_INFO" ("S_USER_NO", "USER_NO", "USER_ID", "RATING", "CONTENT", "BOARD_STATUS", "WRITE_DATE") AS 
  SELECT R.S_USER_NO, B.USER_NO, M.USER_ID, R.RATING, B.CONTENT, B.BOARD_STATUS,B.WRITE_DATE
FROM MEMBER M  -- ����� ������ ��ȣ / ��, �Խù� �ۼ��ڴ� �������̴�. (������ ���̵�)
JOIN BOARD B ON(B.USER_NO = M.USER_NO) -- �Խù��� �����ڰ� ���信 ���� (����, ����, �ۼ�����, �Խù�����)
JOIN REVIEW R ON(R.BOARD_NO = B.BOARD_NO)
;
--------------------------------------------------------
--  DDL for View SERVICE_SELL_LIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SERVICE_SELL_LIST" ("SERVICE_NO", "S_USER_NO", "TITLE", "SERVICE_STATUS", "USER_NAME", "PHONE", "RATING", "REFUND_YN") AS 
  SELECT S.SERVICE_NO,S.S_USER_NO, S.TITLE, S.SERVICE_STATUS, M.USER_NAME, M.PHONE, R.RATING, l.refund_yn
FROM SERVICE S
LEFT JOIN LIST L ON (S.SERVICE_NO = L.SERVICE_NO)
LEFT JOIN BUYER B ON (L.B_USER_NO = B.B_USER_NO)
LEFT JOIN MEMBER M ON (B.B_USER_NO = M.USER_NO)
LEFT JOIN REVIEW R ON (S.SERVICE_NO = R.SERVICE_NO)
ORDER BY 1 DESC
;
--------------------------------------------------------
--  DDL for View TRANSACTIONLIST
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "TRANSACTIONLIST" ("ROWNUM", "SERVICE_NO", "TRADE_DATE", "S_USER_NO", "B_USER_NO", "REFUND_YN") AS 
  SELECT "ROWNUM","SERVICE_NO","TRADE_DATE","S_USER_NO","B_USER_NO","REFUND_YN" 
FROM (SELECT ROWNUM, L.* FROM LIST L LEFT JOIN SERVICE S ON(L.SERVICE_NO=S.SERVICE_NO) LEFT JOIN MEMBER M ON(S.B_USER_NO=M.USER_NO) ORDER BY TRADE_DATE DESC)
;
REM INSERTING into ACCOUNT
SET DEFINE OFF;
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('11111111111','��������','�׽�Ʈ','2');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('1','��������','�׽�Ʈ','3');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('99999999','admin����','admin','1');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('2','��������','�׽�Ʈ','4');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('3','��������','�׽�Ʈ','5');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('4','��������','�׽�Ʈ','6');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('5','��������','�׽�Ʈ','7');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('6','��������','�׽�Ʈ','8');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('7','��������','�׽�Ʈ','9');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('8','��������','�׽�Ʈ','10');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('9','��������','�׽�Ʈ','11');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('10','��������','�׽�Ʈ','12');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('11','��������','�׽�Ʈ','13');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('12','��������','�׽�Ʈ','14');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('13','��������','�׽�Ʈ','15');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('14','��������','�׽�Ʈ','16');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('15','��������','�׽�Ʈ','17');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('16','��������','�׽�Ʈ','18');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('17','��������','�׽�Ʈ','19');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('18','��������','�׽�Ʈ','20');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('19','��������','�׽�Ʈ','21');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('20','��������','�׽�Ʈ','22');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('21','��������','�׽�Ʈ','23');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('22','��������','�׽�Ʈ','24');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('23','��������','�׽�Ʈ','25');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('24','��������','�׽�Ʈ','26');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('25','��������','�׽�Ʈ','27');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('26','��������','�׽�Ʈ','28');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('27','��������','�׽�Ʈ','29');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('28','��������','�׽�Ʈ','30');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('29','��������','�׽�Ʈ','31');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('30','��������','�׽�Ʈ','32');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('31','��������','�׽�Ʈ','33');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('32','��������','�׽�Ʈ','34');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('33','��������','�׽�Ʈ','35');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('34','��������','�׽�Ʈ','36');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('35','��������','�׽�Ʈ','37');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('36','��������','�׽�Ʈ','38');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('37','��������','�׽�Ʈ','39');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('38','��������','�׽�Ʈ','40');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('39','��������','�׽�Ʈ','41');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('40','��������','�׽�Ʈ','42');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('41','��������','�׽�Ʈ','43');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('42','��������','�׽�Ʈ','44');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('43','��������','�׽�Ʈ','45');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('44','��������','�׽�Ʈ','46');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('45','��������','�׽�Ʈ','47');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('46','��������','�׽�Ʈ','48');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('47','��������','�׽�Ʈ','49');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('48','��������','�׽�Ʈ','50');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('49','��������','�׽�Ʈ','51');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('50','��������','�׽�Ʈ','52');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('55555555','��������','�׽�Ʈ�ټ�','53');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('110330320','��������','������','73');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('1111111111','��������','������','74');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('987654321654987','��������','�Ǹ���','78');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('321654987','IBK����','��������','79');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('1234533336235515','��������','��������','80');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('1111111111112','��������','������','81');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('999999999','��������','������','82');
REM INSERTING into BOARD
SET DEFINE OFF;
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (53,'[����]Ÿ�Ӽ��� �� �ҹ� ȫ���޽��� ���� ����� �� �ļ� ��ġ �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ������Դϴ�.

 

Ÿ�Ӽ����� �̿����ֽð� ������ֽô� �е鿡�� �ҹ̽����� ���� �Ͼ��

�̿� ���� ������� �ø����� ���������� �ۼ��ϰ� �Ǿ����ϴ�.

 

�ֱ� Ÿ�Ӽ����� ���� �������Ʈ�� ȫ���� �޽����� ���Ͽ�

���� ȸ���е��� ���ظ� �����̰� �̿� �����ͷ� ���� ���ؽŰ� �����Ǿ����ϴ�.

�̿� ���� �ļ���ġ�� �ش� IP�� ����, ���� ����� Ÿ�Ӽ��� �̿��� �������� �Ǿ����� �˷��帳�ϴ�.

 

 

 �ش� ID

 

Jande / Angelguy1 / kwgno1 / aosxktmno2 / kyt9011

rlaalstjrno1 / rlaalstjrno2

 

����: �ҹ� �ڻ� ����Ʈ ȫ��

 

���� �������� ����͸��� ���Ͽ� ���ŷ� ���� Ȥ�� ȫ���� �޽��� �߼۰� �����Ͽ�

�� �����ʹ� ���ظ� �Դ� ȸ���� ������ �ʵ��� �Ұ����ϰ� �̿����� ���� �г�Ƽ�� ����� �����Դϴ�.

 

��� ȸ���Ե��� ��� �پ��� ���θ���� ����

���� ������ �帱 �� �ֵ��� ����ϴ� Ÿ�Ӽ����� �ǰڽ��ϴ�.

Ÿ�Ӽ����� �ٶ�ô� ���� �����ôٸ� ������ Ȩ������(www.timeseller.com) �ϴ��� �����ͷ� ���� ��Ź�帮��

�ҹ̽����� �� ���� ���� �����ϴ� Ÿ�Ӽ����� �ǰڽ��ϴ�.

 

���� �̿� ��Ź�帳�ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (54,'[����] īī���� Ÿ�Ӽ��� ��ģ �߰����!','
�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

�� ���� īī������ ������Ʈ�� �����ϸ鼭

�÷���ģ���� �˻��� �� �ִ� ī�װ��� ä�η� ����Ǿ����ϴ�.

�̿� ���� ���� �е��� �÷���ģ������ Ÿ�Ӽ����� ã�� �� ���ٴ� ���Ǹ� ���� ���ְ� ��ŵ���,

�̹� ���������� ���� �˻��ϴ� ����� �˷��帮�ڽ��ϴ�. 
 �Ʒ��� �̹����� ������ �������ּ���.



1. ȭ��ǥ�� ����Ű�� �ִ� ���� Ŭ���Ѵ�.

 
2. �Ʒ��� ȭ���� ��Ÿ���� Ÿ�Ӽ��� Ȥ�� @Ÿ�Ӽ����� �˻��Ѵ�.


3. ģ�� �߰� ��ư�� ������.



���� �̹� ģ�� �߰��� �� ���¶� ��ư�� ������ �ȵǴµ���,

����� ����� ����ִ� ��ư�� �����ø� ģ�� �߰��� �˴ϴ�!

 

�� 3�ܰ踦 ��ġ�� �Ϸ�Ǵ� Ÿ�Ӽ��� ģ�� �߰��ϱ�, �� ����?

 

�����ε� Ÿ�Ӽ��� �÷���ģ���� Ÿ�Ӽ��� ��� �ֿ����ּ���!

�����մϴ�!

 ��....��...�ƴ� �����մϴ�!','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (56,'[����] ���۱� ���� ���� �� �ȳ�����','
�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�!

���� �߿��ٰ� �� �߿��ٰ��� �ݺ��ϰ� �ִ� ������ ������ ã�ƿԽ��ϴ�.

���п� ���⵵ ���� �ɸ��� ���� ���⵵ �������ϰ� �ֽ��ϴ�.

 

���� ��&�����ڴԵ��� �߿��� �κ������� ��ġ�� ��� �е��� ���� ������ �����Ǿ� �̷��� ������ ���� ���޵帳�ϴ�.

���� �帱 ������ �ٷ� ���۱� ���� �����Դϴ�.

 

�Ǹ��ڴԲ����� ��� �Ǹſ� ���õ� ���� �� ���۱ǹ��� ���˵Ǵ� ������ ���� ��� �ش� �Ǹ��� �ݵ�� �����Ͻð�

��� �۾��� ���ּž� ������ �߻����� �ʽ��ϴ�.( ��ü ���̼��� or �̹��� ���̼��� ��)

 

���� ��ɰŷ��ÿ� ���۱ǹ� ���� ������ �߻��Ǿ� �Ҽ۱��� ���� ��찡 �߻����� �ʵ���

�Ǹ��ڴ԰� �����ڴ� ��� ��� ''���۱�''�� �� Ȯ�����ּ���!!!!!!!!

Ư�� �����ڴԵ鲲���� �����ϴ� ����� �����, ������ �� ��� �뵵�� Ȱ���� ���ΰ��� ����

�ش� �Ǹ��ڴԿ��� �� ���Ǹ� ���ּž� �մϴ�!

 

 

���۱� ħ�ذ� �����ɸ��� ������ ���� �� ���� üũ���ֽñ� �ٶ�� ��ȣ ���� �ŷ��� �����ϰ� �̷���� �� �ֱ⸦ �ٶ��ϴ�.

�߿��� ������ ���� �ɸ��� �ʵ��� �����ϼ���!','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (57,'[����]�� 1ȸ Ÿ�Ӽ��� ���� �����մϴ�.','
���ص� ������ ���ƿ� ����!

Ÿ�Ӽ����������� ������ ���ƿ� ������ ����

 

�� ���ص� ������ ��ɽ��� Ȯ�忡 �⿩���ֽ�

��� ����κе��� ���� ���� �غ��߽��ϴ�



 ���ش� �۳⺸�� �����ںе��� ���ϱⰡ �� ������µ���

�� ������ ��� ���� �������� ������ ���� �� �ڿ�

���� �ĺ��ںе鿡�� �����ֺ��� ������ �帮�� �ִ�ϴ�.

 

�ƽ��Ե� �̹� �� 1ȸ ������ ��û ������ �и� ������ ���� �Ͻŵ���

�̹��� ���� �ƽ��� Ÿ�Ӽ�������� �ĺ���

������ ���ϼ����� Ÿ�Ӽ������� �� ����

����Ǹſ� �����ֽ� ��� �е鲲 ������ ������ ���մϴ�.

 
 ���� ������ �̷� 3��

 
�� �̻��� �̷�� ���� �� ���� ȹ������ ����Ʈ ���忡  �� ���� ���� ��� �帮�ڽ��ϴ� !
�����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (58,'[����] ��ɵ�� ������ �������� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

���� ���������� ���� ���� �帱 ������ Ÿ�Ӽ��� ��� Ŭ�� ��å ���࿡ ���� �ȳ��Դϴ�.

 

1. ī�װ� ����ȭ �۾�

 

���Ӱ� ī�װ����� �����Ǿ� ���� ��ɵ鿡 ���� ��ȭ�۾��� ���������� ����ǰ� �ֽ��ϴ�.
�Ǹ��� �е��� ��� ȸ���Ե��� ����� ���� �Ͻþ� ����� ��ǰȭ�Ͽ� �ֽð� ���ο� ī�װ��� �°� �籸�� ��Ź�帳�ϴ�.

 

ī�װ� ��������

 

-  1�� ī�װ��� �ߺ� ��� �ǸźҰ�
-  ���� ī�װ��� ���� ��� �ǸŰ���
-  1�� ī�װ��� �ٸ� ��� �Ǹ� ����(�ܼ� ���� ���� ��� �ش����)
-  ���� ī�װ��� ���� ������ ����� �ϳ��� ���� �Ұ�

 

 

 2. ����� Ÿ�Ӽ����� ���

 

���Ŭ����å�� ȿ�������� ��ϱ� ���Ͽ� ����͸� ������ ī�װ��� �°� ����� ���� ã�Ƶ帮�� ������

��� ���κμ��� �����Ͽ� ������ �ʿ��� ��ɵ鿡 ���Ͽ� ���̵� �ȳ� �۾��� ���� �ϰ� �ֽ��ϴ�. 

���� ȸ���Ե��� ���ع����� ���Ͽ�

��� ä���� �����Ͽ� ������ Ÿ�Ӽ����� ����� ���Ͽ� �δ� ũ�� �߰� û���ϰ� �ִ�ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (59,'[����] ���� ���� �۾����� ���� �̿� ���� ����','2020�� 7�� 2��,  ���ο� ��ȭ�� �ٶ��� �ִϴ� !

���� ������ Ÿ�Ӽ����� ���� �غ� �۾�����,

2020�� 7�� 1�� 22:30 ~ 7�� 2�� 02:00 Ÿ�Ӽ��� �̿��� ���� ��� ���ѵ˴ϴ�.



������ �ٲ�� ?

 

[����������]
Ÿ�Ӽ��������� ��� Ȱ�� �� �������� �� ���� Ȯ���� �� �ֽ��ϴ�.

 

[������]

���� �پ��� �������� �����մϴ�.

 

[�Ǹ�/����]

�� ��Ȳ ���� �ʿ��� ��ư�鸸 ��� �����־�, ���� ������ ���� �ŷ��� �����մϴ�.
���� - �������� ���� > �Ǹ����� �ֹ����� > �ŷ�����
  ���� - �������� ���� > �ŷ����� (�������� ������ ���۵Ǹ�, ��� �ŷ��� ���۵˴ϴ�.)
 

-----------------------------------------------------------------------------------

 

[��Ī]

2020�� 7�� 2�Ϻ���, ��/������ ��ü�� �������� �Ƿ������� �ٲ�ϴ�.

�������� �Ƿ����� ������ų����� ������� �� �ŷ��� ����մϴ�.

 

[�׸��� ��]

�̿ܿ��� ���� �κе��� ���׷��̵� �� Ÿ�Ӽ���, ���ǽó��� ?

�� ���ο��� Ÿ�Ӽ����� ����,

2020�� 7�� 1�� 22:30 ~ 7�� 2�� 02:00 ��ø� ��ٷ��ּ��� !

','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (60,'[����] �������� ���� ����Ʈ �� �ǸŰ��� ������ ���� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�:)

������ Ÿ�Ӽ��� �� ���񽺸� �Ǹ� ���� �������� ���� 

3���� ��ҽ��� ���ص帮���� �մϴ� !

 

 

�ϳ�, ���������� �Ǹ� ���ϸ����� �帳�ϴ�. 

  - ���� ��Ī: ������ ���ϸ���

  - ���� ����: �Ƿ����� ����Ȯ�� ����

  - ���� ����: ���� �Ǹ� �ݾ��� 5%

                 (���� ������ ���� ���� ����, 12.8 (��) ���� 2�� ���� ���۵� �ŷ� �Ǻ��� ���ϸ��� ����)

  - ���ó: Ÿ�Ӽ��� �� �������� ���� ��ǰ (�÷��� ����, �����̾� ����) ���� 

  - ��ȿ�Ⱓ: �������� �������� 1���̸�, ���� ȯ�� �Ǵ� ���� ������ �Ұ����մϴ�.

 

 

��, �ǸŰ��� �������� �� �� �� ���ϰ� �پ������ϴ�. 

  - �ǸŰ��� / ���Ͱ��� / �����ݰ��� / ���� ���� ���� �� ...�پ��� �������� ��� ��ҽ��ϴ�.

 

 

��, �ű� ���������� ���ϸ��� 50,000���� �帳�ϴ�.

  - Ÿ�Ӽ��� ����Ʈ���� ù ���񽺸� ����� �ű� ���������� 50,000���� ������ ���ϸ����� �����ص帳�ϴ�.

     (���� �Ǹ� ����� �̷��� �ִ� �������� �ش���� �ʽ��ϴ�.)

  - ���޵� 50,000���� ����, �������� Ÿ�Ӽ����� �������� ���� ��ǰ���� ������ �� ������ ���ϸ����� ��ȿ�Ⱓ�� 1���Դϴ�.

  - ���� ����� PC������ �����մϴ�.

  - �ش� ���θ���� �ܱ⼺ �̺�Ʈ�ν�, ��������ǰų� ���ϸ��� ���� �ݾ��� ������ �� �ֽ��ϴ�.

 

���� �ǸŰ����� ������ �״�� �����ϰ�, �������� ������ �̹� ����

���� ���� ���� ��Ź�帮�ڽ��ϴ�:)','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (61,'[����](Ÿ�Ӽ����������� ����) TimeSeller+influencer=Tinfluencer','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�:D
Ÿ�Ӽ������� ���� Ư���� ü����� �����մϴ�!Ÿ�Ӽ����� ���񽺸� �����ϰ�
��α�&�ν�Ÿ�׷� � ���� ������ �����ֽ� ũ�������͸� �����մϴ�. ^0^  

�ڼ��� ������ �ϴ� �̹����� �������ּ���!
�Բ��ؿ�, ���÷��!!


-�����Ⱓ �� �ο�: ~2018.5.29 / ��10�� (2020.7.31 ������ǥ) 
-��û����: ��α� �� �湮�� 2000�� �̻�   
-��û���: �ϴ� ���� ���� �ۼ����ּ���:D

 
 
�����ǽ� �е鲲�� ���� ������ �帳�ϴ� :) 


                            ','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (64,'[����]â�� ���� ���� �ŷ� ���ǻ���','
�ȳ��ϼ���. ������ ������ ����, Ÿ�Ӽ����Դϴ�! ��

â�� ������ Ȱ�������� ���ο� ���̵����� ������� ����,
ȸ���Ե鲲���� ''â��'', ''��� ��ȹ''�� ���� ������ ������ �����?
Ÿ�Ӽ��������� �پ��� â�� ���� ���񽺸� �ŷ��Ͻ� �� �ִµ���, 
���� �����ϰ� �������� ����Ͻ��� ���Ͽ� �ŷ� ���� ���� ������ �ݵ�� Ȯ�����ּ��� :D

 
�� ���� ���� 


01. ������ ���� ���� Ȯ��

 ''â��'', ''��� ��ȹ''�� ���õ�  ���񽺸� �����ϴ� ȸ���Ե鲲����, Ÿ�Ӽ������� ���� ������ ������ ������ ''����''�� �ƴ� ''÷�� �� ����'' �� ''������''�̶�� �Ϳ� �������ֽñ� �ٶ��ϴ�. 
  Ư�� ''�����������''�� �����ϴ� ������ ���� ���� ������ ������� �ۼ��ϰų� �̸� ���� �������� ������ ���, ���� ����(������ ������ ���� ����)�� ���� ó���� �� �ֽ��ϴ�. 
 �ҹ̽����� ������ �߻����� �ʵ���, �ŷ� �� ��� ������ ���� Ȯ�����ּ��� :D



Ÿ�Ӽ������� �����ϰ� �ŷڵ� �ִ� �ŷ� ȯ�� ������ ���Ͽ�
���� ���� �� ��ȸ ��信 ���ݵ� �� �ִ� �ŷ� Ȱ���� �����ϰ� �ֽ��ϴ�. 
ȸ������ ����Ͻ��� �� �������̱⸦ �ٶ�� �������� �������ֽñ� �ٶ��ϴ�.
 Ÿ�Ӽ����� �� �����ϰڽ��ϴ� ! �����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (65,'[����] Ÿ�Ӽ��� ���� ���� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

�������� ������ŭ Ÿ�Ӽ����� �Բ� ���������� ����Ͻ� �ϰ� ��Ű���?

 

�ٰ����� 6�� 15��(��)����, Ÿ�Ӽ����� ���� ������ ����� �����Դϴ�.

���� �ð� ���� ����Ʈ �̿��� �Ұ��� �� �̸� ���ظ� ��Ź �帮��, �Ʒ� �ȳ��� �������ּ���.

 

�ӻ���Ʈ ���� �ð� �ȳ�

- ����: 2020�� 6�� 15�� (��)

- �ð�: ���� 8�� ~ 9��(�� 1�ð�)

 

�� ���������� ���񽺸� �����ص帱 �� �ֵ��� �Ĳ��� �����ϰ� ���ƿ��ڽ��ϴ�.

�����մϴ� :D
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (66,'[����]�����ı� �ۼ��� ���� �ȳ�','
�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

�����ı� ���å�� �Ʒ��� ���� ����� �����Դϴ�.
���� ������ Ȯ���Ͻþ� ���� �̿뿡 ���� �����ñ⸦ �ٶ��ϴ�.

 

�Ӻ��� �Ͻ�: 2019�� 11�� 27��(��)

 

�Ӻ��� ����


     ? ���� 
       - �ۼ�����: ����Ȯ�� �ֹ� ���̸� �Ⱓ ���� ���� �����ı� �ۼ� ����
       - ��������: �ۼ��Ͻ� �������� 7�� �̳� ���� �����ϸ�, Ƚ�� ���� ����
   
     ? ���� �� 
       - �ۼ�����: ����Ȯ��(�ŷ� �Ϸ�) �Ͻø� �������� 30�� �̳����� �ۼ� ����
       - ��������: �ۼ��Ͻ� �������� 7�� �̳� ���� �����ϸ�, 1ȸ�� ���� ����
       - ��������: �ۼ��� ȸ�� ������ ���� ������ ��û�ϴ� ������ ����, ���ۼ� �Ұ�


�ŷڵ� ���� �ŷ���ȭ�� ������ ���� ������� �������ֽñ⸦ �ٶ��,
�ۼ����� ���� �����ıⰡ �ִٸ� ������ ���� �̸� �ۼ����ֽ� ���� �ȳ��ص帳�ϴ�.

����� ���� ���񽺸� �����ϱ� ���� ����ϴ� Ÿ�Ӽ����� �ǰڽ��ϴ�.

�����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (67,'[����] ������ � �ð� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.
Ÿ�Ӽ��� �������� � �ð��� ���� �ȳ��ص帳�ϴ�.

��Ȱ�� ���� �̿��� ���� � �ð��� Ȯ�����ֽñ� �ٶ��ϴ�.

 

 

? ������ ��ð�
  -���� 10:30~18:00
 

? ������ �̿�ð�
  -�ſ� ù° �� ������ 14:00~18:00 

 

������ �̿ �ð� �� ���� ������ [1:1����] ä���� ���� �������ֽø�, ���������� �亯�帮�ڽ��ϴ�.

�׻� ���������� ���񽺸� �����ص帮�� ���� ����ϰڽ��ϴ�.

�����մϴ�. ','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (69,'[����] ����������� ���ֵ�, Ÿ�Ӽ������� �����մϴ�!','�ȳ��ϼ���! Ÿ�Ӽ����Դϴ�.

����������� ���ֵ�, Ÿ�Ӽ������� �����Ͻ� �� �ֽ��ϴ� ?

����������� ���ֿ뿪�� Ÿ�Ӽ��� �÷������� ����ϱ⿡ ��������?
2020����� Ÿ�Ӽ����� ����������� �������� ���� ���� ���ϰ� ���ֿ뿪�� ����Ͻ� �� �ֽ��ϴ�.

�Ƿ��ΰ� (��)Ÿ�Ӽ����� ���� �� ���, (��)Ÿ�Ӽ��� ���ݰ�꼭 ���� ��
������������� ������ ���߾� ������ ��������� ���Ͻ� �� �ֽ��ϴ�.


?? ����������� ���� �Ŵ����� ������

     - IT����, ��������, ����ǰ����, ������, ������ �� ��� ���񽺸� one-stop ����
 
?? ���� ����� �䱸 ���׿� �´� ���/���� ��� ����

     - ���ݰ�꼭 �߱�, ��༭ �ۼ� �� �������� ����
     - �ϳ��� ��࿡ ���� �о��� ������ ���� ����
     - (��ȿ� ����) ���� ���� �پ��� ������� ����
 
?? ��� ü�� �� ������ ���� ������ �ܰ���� ���� �Ŵ����� ��� Ŀ�´����̼� ����
 
?? ���� ����Ƽ�� �����̾� ���� ���� ����
 
 
�ŷ� �� �Ʒ� ���̵带 Ȯ���Ͻ� �� Ÿ�Ӽ����� ����������� ���� �Ŵ������� �� ���� �ּ���!
 
 
? ����������� ���� ����
    2020��, �߼Һ�ó����� �� 16�� ��ó �Ұ����� 90���� ��� ����
    �� ����(�̹���)_43�� �ι� �ֿ� ��� ����      
    �� â��������� �̿ܿ��� �پ��� ��������������� ���ֿ뿪�� �����ϰ� �ֽ��ϴ�.
 

�� �о�̳���?

Ÿ�Ӽ����� ���� ���������� ����Ͻ� �Ͻñ⸦ �ٶ��,

�ñ��� ������ �ִٸ� �������� ���� �Ŵ������� �������ּ���.

�����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (70,'[����] 5�� ������ � �� ���� �޹� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

2020�� 5��, Ÿ�Ӽ����� �޹� ������ �̸� �ȳ��帮�� �̿뿡 ���� �����ñ⸦ �ٶ��ϴ�.


  

? 5�� �޹��� �ȳ�   ��
 -5�� 1��(��) �ٷ����� ��
 -5�� 5��(ȭ) ��̳�

 

? ������ �̿� �ȳ�
���޹��Ͽ��� �����͸� ����� �ʽ��ϴ�.
���ñ��Ͻ� ������ �� �Խñ� �ϴ��� [�����ϱ�] ����� ���� ������ �ּ���. 
������ �簳 �� ���������� �亯�帮�ڽ��ϴ�.

 

? ���ͱ� ��� �� ȯ�� ���� �ȳ�
���޹��Ͽ��� ���ͱ� ��� �� ȯ�� ��û�� �����Ͻ� �� �ֽ��ϴ�. 
���ٸ�, �޹��Ͽ� ��û�Ͻ� ���� ���� �簳 �� ���������� ó���ص帮�ڽ��ϴ�.


 

�ٻ�ٳ��ߴ� ���������� ����޴� ������ 5���� �����ñ� �ٶ��,

��� ȸ���Ե��� ������ �� �ູ�ϰ� ���� ��ġ�ñ⸦ �ٶ��ϴ� ��

�����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (71,'[�Ұ�] Ÿ�Ӽ����� � �����ΰ���?','Ÿ�Ӽ����� �� �о��� �������� �����ϴ� ���񽺿� ��ǰ�� �ŷ��� �� �ִ� �������� �����Դϴ�.
���� ��Ŀ� ���� ''����'' ''���� ����'' ''������������'' ���񽺸� �����Ͽ� �̿��Ͻ� �� �ֽ��ϴ�.


  �� Ÿ�Ӽ��� ���� 

      ���񽺿� ��ǰ�� ���� ������ ������ �� �ִ� �������� �����Դϴ�.
      Ÿ�Ӽ����� ���ذ� �������� �򰡸� �������� ������ Prime ���񽺵� �̿��غ�����.   

      �� Ÿ�Ӽ��� ���� �ٷΰ���

 

  �� ���� ����

      ȸ������ ã���ô� ���񽺿� ���� ��������  ''���� ��û''�� �� �ִ� �����Դϴ�.         
      �䱸���׿� �� �´� ���������� ''���� ����''�� �޾� �ŷ��� �����غ�����.

      �� ���� ���� �ٷΰ���

 

  �� ������������

      ��� ȸ���� ������� �� ����, �ƿ��ҽ� �����Դϴ�.
      ������/������ Ž������ �ŷ� ���� ���� Ÿ�Ӽ������� ���� �����ص帳�ϴ�. 

      �� ������������ �ٷΰ���

 
�ڼ��� ������ �� ������ �Ұ� ���������� Ȯ���Ͻ� �� �ֽ��ϴ�. ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (72,'[����/����] Ÿ�Ӽ����� �����ϰ� �ͽ��ϴ�.','���� ���Ǵ� Ÿ�Ӽ��� ���� �ϴ��� �ϴ��� ���� �Ǵ� �������� �����ϱ⸦ �̿��Ͻ� �� �ֽ��ϴ�. 
��������� ''����''�� �����Ͻ� �� ���Ǹ� ������ֽø� ����ڰ� Ȯ�� �� �����帳�ϴ�. (������ ���� 3�� �̳�)','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (73,'[��������] ���������� �����ϰ� ��ȣ�ǳ���?','Ÿ�Ӽ����� �̿����� ���� ���� �� ������ �ŷ��� ���� �ּ��� ���մϴ�. 
 
Ÿ�Ӽ��� �� ����Ʈ�� ���������� �ԷµǴ� ��� ������ SSL(Secure Sockets Layer)�� ����Ǿ��ֽ��ϴ�. 
 
SSL�� �������� ���� ���� ��� �� ������ ��ȣȭ�Ͽ� �����ϰ� ������ �ְ� ���� �� �ֵ��� ���ִ� ��ȣȭ ��� ���������Դϴ�. 
 
SSL�� ����� �������� �� ������ ��ܿ� �ڹ��� ����� �������� ��Ÿ����, �ش� �������� URL�� https�� ǥ�õ˴ϴ�.  
 
�� ������ ����� �ڹ��� ����� �����ܰ� https�� ���۵Ǵ� URL�� ȸ������ ������ �����ϰ� ���޵ǰ� ������ �ǹ��մϴ�. ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (74,'[����/����] ���񽺸� �Ǹ��ϰ� �ͽ��ϴ�.','
�� 14�� �̻��̸� ������ Ÿ�Ӽ����� �������� Ȱ���Ͻ� �� �ֽ��ϴ�. 
������ȸ���� ������ ���������� ���� ��ȯ�Ͻ� �� �ֽ��ϴ�. 
 
[ �α��� > ����Ÿ�Ӽ��� > ��������> �������� > �޴������� + ������ ���� ] ���ֽø� �˴ϴ�.
 
������ ���� ��, ������� ��� ����ڵ����, ����纻 ÷�����ּž� ���ΰ����մϴ�.
���� �������� ���, ���� �ֹε�Ϲ�ȣ �������ֽø� �˴ϴ�.
 
������ȸ������ ��ȯ ��, �Ǹ��Ͻ� ���񽺸� ��� ���ּ���. 
[�α��� > ������ ��� > ���� ����ϱ�]�� ���� ���񽺸� ����Ͻ� �� �ֽ��ϴ�. 
������ ��� �޴����� ''������ ����''�� ���� ���������� ������ ������ ���� �����Ͻø� ���� �����ϴ�. 
 
����Ͻ� ���񽺴� ī�װ��� �ɻ� ������ ���� ���εǸ� ���ε� ���񽺷� �Ǹ��Ͻ� �� �ֽ��ϴ�. 
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (75,'[ȸ������] ���� �� ������ �ȵſ�.','������ �Ͻ� ��� �Ǹ�Ȯ�� ��ϱ���� �����Ͻ� �������� �Ǹ����� ��� ���Ӱ� ���ּž� �մϴ�.

[�Ǹ�Ȯ�� ��ϱ���ȳ�]

- �ڸ���ũ�������(KCB) �� �ٷΰ���   / �� ������: 02-708-1000
- SIREN24 �� �ٷΰ���


����� ���� ����� �Ǹ� ������ ����Ͻ� ���, ���� �ð��� �ҿ�� �� �ִ� �� �������ֽñ⸦ �ٶ��ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (76,'[��������] ���� �� ID �Ǵ� �г����� ������ �� �ֳ���?','
ȸ�� ���� �� ����Ͻ� ID(�̸���)�� ���� ���Ŀ��� �����Ͻ� �� ������ �г����� ���� �� 1ȸ�� ���� ������ �����մϴ�.
 
�ε����� ������ ID �Ǵ� �г����� �߰� ������ �ʿ��Ͻ� ���, �Ʒ� ������ ���� �Ͻþ� �����ͷ� �̸���(help@timeseller.com)�� �����ּ���.
 
�� ���� �̿����� ID(�̸���) �Ǵ� �г���
 
�� �����ϰ��� �ϴ� ID(�̸���) �Ǵ� �г���
 
�� ���� : 
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (77,'[�Ƚɹ�ȣ] �Ƚɹ�ȣ�� ���� �˰�ͽ��ϴ�.','�Ƚɹ�ȣ�� �������� ���� ����ó ��� ������ �����ȣ�� �����Ͽ� ���������� ��ȣ�ϰ� ���� ��� �����ϴ� ����Դϴ�.
 
�Ƿ����� �������� �Ƚɹ�ȣ�� ��ȭ�� �ɸ� �������� ���� ����ó�� ����Ǹ�, �Ƚɹ�ȣ ���� �̿뿡 ���� ���� �̿����� �ΰ����� �ʽ��ϴ�.
 
��, �̿� ���̽� ��Ż��� ��� ��å�� ���� �ΰ���ȭ�ᰡ �߻��� �� ������, �ڼ��� ������ �� ��Ż��� Ȩ�������� �������ֽñ� �ٶ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (78,'[�޴�������] ���� Ȥ�� ���� �޴������� �����޾Ƶ� �ǳ���?','
Ÿ�Ӽ��� ������ ��Ȱ�� �̿��� ���� ������ ������ ������ �Ǹ������� �����Ͻñ� �����ص帳�ϴ�. 
 
Ư�� ���񽺸� �Ǹ��Ͻô� �������� ���, ������ ������ ���ʷ� ���ڼ��ݰ�꼭�� ����ǹǷ� �ݵ�� ���� ���Ƿ� ������ ���ּž� �մϴ�. 
 
Ÿ���� ������ �Ǹ������� �Ͻ� ���, �������� �߻��Ǵ��� ���� �������� �����Ͻ� �� ������ ��� ȯ�� �� ������ ������ ���� ���� Ȥ�� ���� ���� ��û�� �Ǹ������� ���� �����ڿ��� ��û�˴ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (79,'[��������] ��ǰ/���� ���������� �ñ��մϴ�.','
��ǰ/���� ���� �� �Ʒ��� ���������� �̿��Ͻ� �� �ֽ��ϴ�.
 
�� Ÿ�Ӽ���ĳ�� / �ſ�ī�� / �ǽð� ������ü / ������ �Ա� / �޴��� / ���̳��� / ������

','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (80,'[���ݰ�꼭] ���ݰ�꼭 ����, ��� ������� �� �ֳ���?','
���ݰ�꼭�� Ÿ�Ӽ����� ����������κ��� ��������� �� �ֽ��ϴ�.
������������ Ÿ�Ӽ��������� �Ƿ��ο��� ���ݰ�꼭�� �������� ������ �̿뿡 �������ֽñ� �ٶ��ϴ�.
 
�� ���ݰ�꼭 ���డ�� ������ ã��
- ���Ÿ� ���ϴ� ī�װ��� ��ǰ ����Ʈ �� �����ũ�� �ִ� �������� Ȯ���մϴ�.
����Ʈ ������ ���� �׸� �� ''���ݰ�꼭 ����''�� üũ�Ͻø� ���� ������ ���������� ��Ƽ� �� �� �ֽ��ϴ�.
 
�� ���ݰ�꼭 ���� ���� ��ǰ�� ���� �� ''���ݰ�꼭 ����'' �׸��� üũ �� ������ �Է��մϴ�.
 
�� Ÿ�Ӽ���ĳ�ø� ������ ��ü �����ݾ׿� ���� ���ݰ�꼭�� ����˴ϴ�. (���������� ���ܵ�)
 
�� ���ݰ�꼭�� ��ȭ�� �뿪�� ���� ������(������)�� ���޹޴� ��(�Ƿ���)���� �������ִ� ���� ��Ģ�Դϴ�.
���� Ÿ�Ӽ������� �߱��ص帮�� ī��/���ݿ������� �ܼ��� ''����''�� ���� �������νḸ ����Ͻ� �� ������, �ΰ���ġ�� ���Լ��� ������ ���� �� �����ϴ�.
 
Ÿ�Ӽ����� ���ڻ�ŷ� �߰�����ڷ�, �ŷ� �÷����� �����ϴ� ������(Ÿ�Ӽ���)�� �÷����� �����޾� �Ǹ��ϴ� ���޹޴���(������)���� �ŷ��� �������� ���������� �����ῡ ���� ���ݰ�꼭�� �����մϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (81,'[��õ¡��] ��õ¡�� ��� ����','Ÿ�Ӽ����� ���������� ��õ¡�� ���� ���� ��ü�� �����մϴ�.

��, �� ��� ���Լ��� ������ ������ ���⿡ ���μ� �Ű�ÿ� "���"���θ� ó�� �����մϴ�.

Ÿ�Ӽ��� ������ ��� ��� [����Ʈ > �α��� > ���� > �������� > ���ݿ����� or ��ǥ��� Ŭ��]���� Ȯ�ΰ����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (82,' [�ֹ� ���] �ֹ��� ����ϰ� �ͽ��ϴ�.','�Ƿ����� ��Ȯ�� �䱸���� �� ���� �ڷḦ �����Ͽ������� �ұ��ϰ� ���� �ٸ� ��ǰ/���񽺸� �����Ͻ� ��쿡�� �ֹ���� ������ �� �� �ֽ��ϴ�.
 
 
�� ��� ��û ���
�ŷ� �� ��Ҵ� �Ʒ��� ������� �Ͻ� �� �ֽ��ϴ�.
 
(PC ����)
- Ÿ�Ӽ��� ���� > �α��� > ���� > ���Ű��� > �ش� �ŷ� ȭ�� ����> ������ ''���/�����ذ�'' Ŭ�� �� ��� ��û
 
(����Ͼ�)
- Ÿ�Ӽ��� ���� > ����Ÿ�Ӽ��� > �������� �ֹ�> �ش� �ŷ� ȭ�� ����> ���� ����� �޴� ��ư Ŭ��> ''���/�����ذ�'' Ŭ�� �� ��� ��û
 
�� �ֹ���Ҵ� �������� �Ƿ��� ���� ��� ���ǰ� ����Ǿ�� �ϸ�, ��Ҹ� ��û���� ���� ��û�� ��Ҹ� �����ϰų� ������ �� �ֽ��ϴ�.
�� ��� ��û�� ���� ������ �ǻ�ǥ�ø� ���� ���� ���, 24�ð� ��� ������ �ڵ����� �ŷ��� ��ҵ˴ϴ�.
�ذŷ� ��� �� ���� �ݾ��� Ÿ�Ӽ���ĳ�÷� ��ȯ�Ǹ�, �ٸ� ������ ���ſ� ����Ͻðų� ������������ ȯ�ҹ����� �� �ֽ��ϴ�.
 ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (83,'[�ۼ����] �Ϲ��ı�/�����ı� �ۼ� ���','
������ �ۼ���, �Ϲ��ı�/�����ı�� �ۼ��� �� �ֽ��ϴ�.

�� �Ϲ��ı��? �������� ��ǰ/���񽺸� ������ �Ƿ����� ����Ȯ���� �� �ŷ��ǿ� ���ؼ� �ۼ��ϴ� �ı� ����Դϴ�.

�Ϲ� �ı�� ������ ���ۼ��� �� �� �ֽ��ϴ�.

 

�� �����ı��? �������� ��ǰ/���񽺸� ������ �Ƿ����� ����Ȯ���� �� �ŷ��ǿ� ���ؼ� �̹��� ÷�θ� �Ͽ� �ۼ��ϴ� �ı� ����Դϴ�.

���� �ı�� ������ �̹��� ÷��, ���ۼ��� �� �� �ֽ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (84,'[����Ȯ��] �Ǽ��� ����Ȯ���� ������ �� ��� �ؾ� �ϳ���?','����Ȯ���� �ش� �ŷ��� �Ϸ��ϰڴٴ� ���� �ǻ�ǥ���� �����Դϴ�.
���� ����Ȯ���� ó���� ���Ŀ��� ������� ���� ����/��Ұ� �Ұ����մϴ�.
�Ǽ��� ����Ȯ���� Ŭ���Ͻ� ��쿡�� �Ƿ��ΰ� ������ �� ���� �����Ͽ� �ŷ� ���� �Ǵ� ��� ���θ� �������ֽñ� �ٶ��ϴ�.
 
�� �Ǹ� ������� ȯ�ҵ��� �ʽ��ϴ�.
�� �� ����Ȯ������ ���� ���� �߻� ��Ȳ������ �������� ���ͱ��� �̹� �����Ͽ� �Ϲ������� ������ ���� �ʰų� �ֹ����¸� �������� ���ϴ� ���� ������ �߻��� �� ������, ���� �۾����� �޾ƺ��� ���� ���¿����� ����Ȯ�� ��û�� ��ȣ�� �������ֽñ� �ٶ��ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (85,'[�Ƚɹ�ȣ] �Ƚɹ�ȣ�� ���� �˰�ͽ��ϴ�.','�Ƚɹ�ȣ�� �������� ���� ����ó ��� ������ �����ȣ�� �����Ͽ� ���������� ��ȣ�ϰ� ���� ��� �����ϴ� ����Դϴ�.
 
�Ƿ����� �������� �Ƚɹ�ȣ�� ��ȭ�� �ɸ� �������� ���� ����ó�� ����Ǹ�, �Ƚɹ�ȣ ���� �̿뿡 ���� ���� �̿����� �ΰ����� �ʽ��ϴ�.
 
��, �̿� ���̽� ��Ż��� ��� ��å�� ���� �ΰ���ȭ�ᰡ �߻��� �� ������, �ڼ��� ������ �� ��Ż��� Ȩ�������� �������ֽñ� �ٶ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (86,'[ID�ߺ�] �̹� ���Ե� �̸��� �ּҶ�� ǥ�õ˴ϴ�.','�����Ͻ� �̸��� �ּҰ� �̹� Ÿ�Ӽ����� ���ԵǾ��ִٴ� �ǹ��Դϴ�. 

������ �̸��� �������δ� �ߺ� ������ �Ұ����ϹǷ�, �Ʒ��� ��ġ�� �غ��� �� �ֽ��ϴ�. 

���̵�/��й�ȣ ã�⸦ ���� ������ ���� ������ Ȯ���Ͻ� �� �α��� ���ּ���. 
ȸ������ �������� �ʾ������� ���Ͱ��� �޼����� ǥ�õ� ��� �ϴ��Ϲ���/�����ϱ⸦ ���� �Ʒ��� ������ Ÿ�Ӽ����� �����ֽø� �ż��� ��ġ�ص帮�ڽ��ϴ�. 
���� �ּ�
������ �Ǹ�
�Ǹ� ������ ������ �޴��� ��ȣ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (87,'[ȸ��Ż��] ȸ�� Ż�� ����� �ñ��մϴ�.','ȸ�� Ż��� �Ʒ��� ������� �Ͻ� �� �ֽ��ϴ�.
 
  �� Ÿ�Ӽ��� �� > �α��� > ���� ��� �г��� > �������� > ȸ��Ż���ϱ�
    �ظ���� �ۿ����� Ż�� ����� �������� �ʽ��ϴ�.
 
ȸ�� Ż�� �Ͻñ� ��, �ݵ�� �Ʒ��� ���ǻ����� Ȯ�����ֽñ� �ٶ��ϴ�.
   �� Ÿ�Ӽ���ĳ��, �Ǹż��ͱ��� �ִ��� Ȯ�����ּ���.
       �ܿ����� 1���̶� ������ ��� Ż�� ó���� �Ұ����ϴ�, Ż�� �� ���ͱ� ��� �� ĳ�� ȯ���� ��û���ֽñ� �ٶ��ϴ�.
   
   �� ���� ������ ������ ���ϸ����� ����ĳ�ô� ȯ�ҵ��� ������, Ż��� �Բ� �ڵ� �Ҹ�˴ϴ�.
 
   �� ���� ���� �ֹ��̳� �̹߼� ���� �����ִ� ��� Ż���û�� ó������ �ʽ��ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (88,'[ȸ������/�ܱ���] �ܱ��ε� ȸ������ �� �� �ֳ���?','�ܱ����� ȸ�������� �����մϴ�.
�ٸ�, ������ ���š��ǸŸ� ���Ͽ� �޴��� ���� ���� ������ �ʿ��մϴ�.

�޴��� ���� ������ �Ұ����� ��쿡 ��ü ���������� ��ϰ� ���� �ʾ� �̿��� �Ұ��� �� ���� ��Ź�帮��, ���� ������ ��Ȱ�ϰ� ������� ���� ��� [�����ڸ���]�� ���� �ܱ��� ��� ���� Ȯ�� �� �޴����� ���� Ȯ���� ��Ź�帳�ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (89,'[�޴�������] ������ȣ�� ���ŵ��� �ʽ��ϴ�.','�����Ͻ� ��Ż翡�� �����ϴ� �������� �ΰ� ���񽺸� �̿� ���̽� ���, Ư�� �߽Ź�ȣ�� �ڵ����� �������� �з��� �� �ֽ��ϴ�. 
 
�����Ͻ� ��Ż��� �������� ������ ���Թ��� �������� Ȯ�����ּ���. 
Ÿ�Ӽ����� ��ǥ��ȣ 1544-6254�� ���� ��� ����ó�� ��ϵǾ� �ִ��� Ȯ�� ��, �ȳ��� ���� ������ �������ּ���. 
 
   �� ��Ż纰 ���Թ��� ���� ������ �Ʒ��� �����ϴ�.    
 ��Ż�	���ø�Ī 
 SK	T�������͸� 
KT 	 �÷� ��������
 LG	 U+ ��������
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (90,'[����Ȯ��] ����Ȯ�� �Ŀ� �ֹ��� ���/ȯ���� �� �ֳ���?','����Ȯ���� �ش� �ŷ��� �Ϸ��ϰڴٴ� ���� �ǻ�ǥ���� ��������, ����Ȯ�� ���Ŀ��� ��� ��쿡�� �ֹ��� ����Ͻ� �� �����ϴ�.
 
���� ����Ȯ���� ó���� ���Ŀ��� ������� ���� ����/��Ұ� �Ұ����մϴ�.
�׷��� ����Ȯ�� ���Ŀ� ������ ��ǰ/���񽺿� ������ Ȯ�ε� ��쿡�� �Ǹ��ڿ��� ���� ����ó���� ��û�Ͻ� �� �ֽ��ϴ�.
�Ǹ��ڰ� �Ϲ������� ������ ���� �ʴ� ���� ������ ó���� �Ұ��� ��� Ÿ�Ӽ������� �Ǹ��ڿ��� ������ �õ��ϴ� ���� �������� ������ ������ �帱 �� ������, �Ǹ��ڿ� �����ڰ��� ���￡�� �������� �ʽ��ϴ�.
 
�� ����Ȯ�� ���� �߻��Ǵ� �ŷ� ����� ���� ������ Ÿ�Ӽ������� �������� ������, �����ڰ� ���� �ܺ� ���������� �Ҹ� �����Ͻñ� �ٶ��ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (91,'[���Լ��װ���] ���Լ��װ����� �ް�ͽ��ϴ�.','�����Ͻ� ��ǰ/���񽺿� ���� ���Լ��װ����� �Ǹ��ڰ� ''���������''�� ��쿡 �����ϸ�, ����� �Ʒ��� �����ϴ�.
 
�� ������������� ��ǰ/���񽺸� �����մϴ�. (���������� ����)
�� ���� �� ȭ�� �ϴ��� ''���ݰ�꼭 �����û''�� �����մϴ�.
�� �ŷ� �Ϸ� �� �� �ŷ��� �ݾ����� ���ݰ�꼭�� ��������� �� �ֽ��ϴ�. (���������� ���ܵ�)
 
�� ���ǻ���
Ÿ�Ӽ��� ���� �� �������� �� �����ݾ׿� �ΰ����� �����Ͽ� ���ݰ�꼭�� �����ؾ� �մϴ�.
�������κ��� �ΰ��� �߰� ������ ��û������ ���. Ÿ�Ӽ��� ������(02-1544-6254/help@timeseller.com)�� �Ű����ֽñ� �ٶ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (92,'[�ı�] �����ı�� ��� ���⳪��?','�����ı�� ������ ī�װ����� ���񽺸� �����Ͽ�����, �������� jpg/png ������ ���Ϸ� �۾����߼� �ϴ� ��� ����� �� �ֽ��ϴ�.
����Ȯ���� ��¥�κ��� 30�� �̳��� �����ı⸦ ����� ���� �۾����� ���� ''���� ����''�� �����Ͽ� ���� �� �ֽ��ϴ�.

�����ı�� ��� ���� ������ �Ұ��ϸ�, ����(�����)�� �����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (93,'[�Ű��ϱ�] �ҷ� �������� Ÿ�Ӽ����� �Ű��� �� �ֳ���?','�ǰ��� �ŷ���ȭ�� ��ģ�ٰ� �Ǵ��ϴ� ���, �Ƿ����� ���� �ش� �������� ���񽺸� �Ű��� �� ������, ����� �Ʒ��� �����ϴ�.
 
�� �ҷ� ������ �Ű��ϱ�
Ÿ�Ӽ��� ����Ʈ �ϴ��� �����ͷ� �����Ͽ� "���ǵ��" �� ''���ǼҸ�/����''�� �̿�
�� �Ű� �� ���������� ÷�����ֽñ� �ٶ��ϴ�.
 
�� �ŷ���ȭ�� ��ġ�� ����
- ������ ������ ������� ����� ũ�� ���� ���� ���
- ���񽺸� ������ ����, �������� �߰� �۾��� ���� ������ �߰� ������ �䱸�ϴ� ���
- �ܺΰŷ��� �����ϴ� ���(�ܺΰŷ�/�ҹ�ȫ�� �Ű�)
- �ŷ� �߿� ������ ���� �ʴ� ���
- �ŷ� ��뿡 ���� �������� ��� �޽����� �߼��ϴ� ���
 
Ÿ�Ӽ����� �̿��Ͻø鼭 �̿� ���� ������ �ϼ̴ٸ�, ���� ���� �����͸� ���� ������ �ֽñ� �ٶ��ϴ�.
�ִ��� ���� �ð� ���� ������ Ȯ���Ͽ� ���� �帱 �� �ֵ��� ����ϰڽ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),1,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (97,'�������� ó����ħ 2019. 09. 18. ver.','��������ó����ħ

 

l ��1��(��Ģ)

��Ÿ�Ӽ���(���� ''ȸ��''��� ��)�� ȸ���� ������ �����ϰ� �����ϰ� �����ϰ� ��ȣ�ϱ� ���Ͽ� �ּ��� ����� ���ϰ� ������ ����������ȣ�� �� ������ ���̵������ �ؼ��մϴ�.

ȸ��� ȸ���� ���������� �ʿ��� ������ ���� �ּ������� �����ϰ� ������ ������ ���� ������ ���� �������� ����ϸ�, ���� ���� ���� �� ������ �ʰ��Ͽ� �̿��ϰų� �ܺο� �������� �ʽ��ϴ�.

�ٸ�, ������ ������ �ǰ��ϰų�, ������ �� ��������� ���� �Ǵ� ������ �������� ���ɿ� ������ ������ ����� ���� ��û�� ��쿡�� ���� ������ ���� �ּ����� ������ ���Ǿ��� ������ �� �ֽ��ϴ�.

ȸ��� ����������ó����ħ���� �����ϰ� �̸� �ؼ��Ͽ� ȸ���� ���������� �̿� �� ��ȣ�� ���� ��ġ�� �˸���, ���ù��Ը� �ؼ��ϰ� �ֽ��ϴ�.

ȸ���� ����������ó����ħ���� ���ù��� �� ��ħ�� ���� �Ǵ� ���� ���ħ�� ���� ������ ���Ͽ� ������ �� �ֽ��ϴ�.

����������ó����ħ���� ����� ��� ��������� �������� �Ǵ� �̸��� ���� ���������� ���� �����ص帳�ϴ�.

������׿� �ǹ��� ������ ��쿡�� ������ ���μ��� �����Ͻðų� Ȩ�������� �湮�Ͽ� Ȯ���Ͻ� �� �ֽ��ϴ�.

�������� ó����ħ�� �̿� ����� �������� ������ ������ ��� �̿����� �켱 ������ �����ϴ�.

 ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (98,'�������� ó����ħ 2019. 12. 09. ver.','��������ó����ħ

 

l ��1��(��Ģ)

��Ÿ�Ӽ���(���� ''ȸ��''��� ��)�� ȸ���� ������ �����ϰ� �����ϰ� �����ϰ� ��ȣ�ϱ� ���Ͽ� �ּ��� ����� ���ϰ� ������ ����������ȣ�� �� ������ ���̵������ �ؼ��մϴ�.

ȸ��� ȸ���� ���������� �ʿ��� ������ ���� �ּ������� �����ϰ� ������ ������ ���� ������ ���� �������� ����ϸ�, ���� ���� ���� �� ������ �ʰ��Ͽ� �̿��ϰų� �ܺο� �������� �ʽ��ϴ�.

�ٸ�, ������ ������ �ǰ��ϰų�, ������ �� ��������� ���� �Ǵ� ������ �������� ���ɿ� ������ ������ ����� ���� ��û�� ��쿡�� ���� ������ ���� �ּ����� ������ ���Ǿ��� ������ �� �ֽ��ϴ�.

ȸ��� ����������ó����ħ���� �����ϰ� �̸� �ؼ��Ͽ� ȸ���� ���������� �̿� �� ��ȣ�� ���� ��ġ�� �˸���, ���ù��Ը� �ؼ��ϰ� �ֽ��ϴ�.

ȸ���� ����������ó����ħ���� ���ù��� �� ��ħ�� ���� �Ǵ� ���� ���ħ�� ���� ������ ���Ͽ� ������ �� �ֽ��ϴ�.

����������ó����ħ���� ����� ��� ��������� �������� �Ǵ� �̸��� ���� ���������� ���� �����ص帳�ϴ�.

������׿� �ǹ��� ������ ��쿡�� ������ ���μ��� �����Ͻðų� Ȩ�������� �湮�Ͽ� Ȯ���Ͻ� �� �ֽ��ϴ�.

�������� ó����ħ�� �̿� ����� �������� ������ ������ ��� �̿����� �켱 ������ �����ϴ�.

 
                            ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (99,'�������� ó����ħ 2020. 03. 02. ver.','��������ó����ħ

 

l ��1��(��Ģ)

��Ÿ�Ӽ���(���� ''ȸ��''��� ��)�� ȸ���� ������ �����ϰ� �����ϰ� �����ϰ� ��ȣ�ϱ� ���Ͽ� �ּ��� ����� ���ϰ� ������ ����������ȣ�� �� ������ ���̵������ �ؼ��մϴ�.

ȸ��� ȸ���� ���������� �ʿ��� ������ ���� �ּ������� �����ϰ� ������ ������ ���� ������ ���� �������� ����ϸ�, ���� ���� ���� �� ������ �ʰ��Ͽ� �̿��ϰų� �ܺο� �������� �ʽ��ϴ�.

�ٸ�, ������ ������ �ǰ��ϰų�, ������ �� ��������� ���� �Ǵ� ������ �������� ���ɿ� ������ ������ ����� ���� ��û�� ��쿡�� ���� ������ ���� �ּ����� ������ ���Ǿ��� ������ �� �ֽ��ϴ�.

ȸ��� ����������ó����ħ���� �����ϰ� �̸� �ؼ��Ͽ� ȸ���� ���������� �̿� �� ��ȣ�� ���� ��ġ�� �˸���, ���ù��Ը� �ؼ��ϰ� �ֽ��ϴ�.

ȸ���� ����������ó����ħ���� ���ù��� �� ��ħ�� ���� �Ǵ� ���� ���ħ�� ���� ������ ���Ͽ� ������ �� �ֽ��ϴ�.

����������ó����ħ���� ����� ��� ��������� �������� �Ǵ� �̸��� ���� ���������� ���� �����ص帳�ϴ�.

������׿� �ǹ��� ������ ��쿡�� ������ ���μ��� �����Ͻðų� Ȩ�������� �湮�Ͽ� Ȯ���Ͻ� �� �ֽ��ϴ�.

�������� ó����ħ�� �̿� ����� �������� ������ ������ ��� �̿����� �켱 ������ �����ϴ�.

 ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (100,'[����]�ڷγ�19 ��� �������������� ��û�ϼ���!','�ȳ��ϼ���, ��������. ũ���Դϴ�  ?

���뵿�ο����� ���� 6�� 1�Ϻ��� �������������� ������ Ư�����±ٷ������ڸ� �������
''��� ������������''�� �����ϰ� �ֽ��ϴ�.

��� �������Ե��� ������ ��û�� ���� ���Ͽ�, ũ�������� �ʿ� ���� ���� ������Ȯ���ص帮�� �ִµ���.
�ڼ��� ������ �Ʒ��� �ȳ��� ������ �ּ���.

 

 

��? ��û�Ⱓ �� ���
��û �Ⱓ: 2020�� 6�� 1��(��) ~ 7�� 20��(��)

��û���: ����������Ư�����±ٷ�������, ���� �ڿ�����, ���������ٷ���
�� ��������: ��19�� 12�� ~20�� 1��''�� �빫�� �����Ͽ� �ҵ��� �߻��� ��뺸�� �̰�����

��
��? ����(�󼼿��)
����20�� 3~4���� ��� �ҵ�''��, �� ��� �Ⱓ(��19�� �� ��� �ҵ�_19�� 3��, 4��, 12�� / 20�� 1�� �� ����) ����� ���� ���� �̻� ������ ���','1',to_date('20/06/22','RR/MM/DD'),2,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (101,'ī�װ��� ��������� �߰��� ��ȹ�� ������?','���� ����� �ϰ������ ���Ŀ� �߰��� ��ȹ�� �ֳ���?','5',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (102,'�亯�� ���޾Ҿ��.','�� �ð����� ���Ǹ� ����µ� �亯�� �ʹ� �����׿�. 
Ȯ�� ��Ź�帳�ϴ�.','5',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (103,'����Ʈ ���� �ִ�ݾ��� �ʹ� �۾ƿ�.','��ſ� �����Ϸ��µ� �ִ�ݾ��� �ʹ� �۾Ƽ� �����մϴ�. 
�ִ� �ݾ� �ѵ��� �ø� ��ȹ�� ������','5',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (104,'�����ϰ� �ͽ��ϴ�. ','����� kh�ַ�� ��ü�Դϴ�. 
Ÿ�Ӽ����� �����ϰ� �ͽ��ϴ�.','6',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (105,'����ũ �̺�Ʈ ��ȹ�� ������? ','����ũ �����ε� ���� �ȿ� �̺�Ʈ ���� ���ϳ���? �Ф�','6',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (107,'4_review','�� ���� ���̾�','1',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (108,'14_review','�� ���̾�','1',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (109,'sdf','sdf','3',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (110,'�׽�Ʈ�Դϴ�','������������','1',to_date('20/06/22','RR/MM/DD'),1,20,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (112,'������������','��������������','1',to_date('20/06/22','RR/MM/DD'),0,20,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (114,'�׽�Ʈ�׽�Ʈ','��������������','1',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (115,'��������������','��������������������������������������','1',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (116,'���� ��','asdfasdf','3',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (117,'aaasss','aaassss34535','1',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (118,'���� �Ű��ϱ���...','���ٷ�...','13',to_date('20/06/23','RR/MM/DD'),0,30,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (119,'��','����÷�� Ȯ��..','13',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (122,'aaaa','aaaaaa','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (123,'52_review','�׽�Ʈ��','1',to_date('20/06/23','RR/MM/DD'),0,40,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (124,'66_review','������������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (125,'��','����','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (126,'����','������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (127,'������','������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (128,'������','������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (129,'������','����������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (130,'test1','��������������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (131,'��������������','��������������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (132,'��������������','��������������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (133,'��������������','��������������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (134,'��������������','��������������������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (135,'��������������','��������������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (136,'test2','��������������','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (174,'asdf','asdf','0',to_date('20/06/23','RR/MM/DD'),0,30,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (175,'aa','aaa','0',to_date('20/06/23','RR/MM/DD'),0,30,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (179,'aa','aa','0',to_date('20/06/23','RR/MM/DD'),0,30,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (180,'asdfasdf','asdfasdf','0',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (181,'11111','111111','0',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (182,'asdf','asdf','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (183,'11','111','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (185,'133','333','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (186,'33','33','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (187,'���� �Ҹ��׽�Ʈ','�׽�Ʈ��','12',to_date('20/06/23','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (188,'�Ű��ϱ���','�Ű��մϴ�','12',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (189,'�ÿ�����','���Դϴ�.','1',to_date('20/06/23','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (190,'�Ǹ��ڸ� �Ű���','�Ű��մϴ�','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (191,'151_review','���� �����Ѱž�','80',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (192,'445566','1233fggg','78',to_date('20/06/23','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (193,'�����Ϳ��� �Է���','�Է���','78',to_date('20/06/23','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (194,'�Ű��մϴ�','�Ű��','78',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
REM INSERTING into BUYER
SET DEFINE OFF;
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('2',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('3',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('1',0,'3');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('4',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('5',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('6',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('7',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('8',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('9',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('10',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('11',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('12',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('13',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('14',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('15',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('16',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('17',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('18',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('19',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('20',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('21',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('22',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('23',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('24',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('25',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('26',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('27',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('28',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('29',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('30',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('31',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('32',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('33',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('34',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('35',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('36',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('37',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('38',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('39',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('40',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('41',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('42',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('43',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('44',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('45',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('46',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('47',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('48',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('49',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('50',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('51',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('52',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('53',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('73',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('74',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('78',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('79',0,'2');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('80',0,'2');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('81',0,'0');
Insert into BUYER (B_USER_NO,REPORT_NUM,BUYCOUNT) values ('82',0,'0');
REM INSERTING into B_CATEGORY
SET DEFINE OFF;
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('10','1:1����');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('20','��������');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('30','�Ű�');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('40','����');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('50','FAQ');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('60','��������ó����ħ');
REM INSERTING into CATEGORY
SET DEFINE OFF;
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Ar','����');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Re','��ľ�');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Me','�Ƿ�');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Sp','������');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Fa','�м�');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('It','IT');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Fi','����');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Pu','������');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Bu','â��');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Ma','������');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Ev','�̺�Ʈ');
REM INSERTING into DAYS
SET DEFINE OFF;
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',6);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',8);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',56);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',66);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',87);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',88);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',90);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',97);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',101);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',109);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',126);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�ݿ���',151);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',7);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',9);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',10);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',11);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',12);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',13);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',55);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',65);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',76);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',82);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',91);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',102);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',108);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',151);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',6);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',8);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',14);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',54);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',58);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',64);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',68);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',69);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',75);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',86);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',94);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',95);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',96);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',99);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',100);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',101);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',102);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',111);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',6);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',8);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',14);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',54);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',57);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',60);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',63);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',67);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',68);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',69);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',73);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',83);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',84);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',85);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',87);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',88);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',89);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',93);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',98);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',100);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',101);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',102);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',108);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',109);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',117);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',126);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',128);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',129);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',130);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',150);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('������',152);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',8);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',71);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',72);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',79);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',89);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',92);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',103);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',104);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',105);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',106);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',107);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',109);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',110);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',112);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',113);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',114);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',115);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',116);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',117);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',118);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',119);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',120);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',121);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',122);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',123);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',124);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',125);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',127);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',128);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',129);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',130);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',131);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',132);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',133);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�Ͽ���',134);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',7);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',9);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',10);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',11);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',67);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',70);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',78);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',80);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',83);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',103);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',104);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',105);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',106);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',107);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',108);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',110);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',112);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',113);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',114);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',115);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',116);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',117);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',118);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',119);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',120);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',121);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',122);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',123);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',124);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',125);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',126);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',127);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',128);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',130);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',131);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',132);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',133);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('�����',134);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',7);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',9);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',10);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',11);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',12);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',13);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',14);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',53);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',59);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',61);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',62);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',68);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',72);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',74);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',77);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',81);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',85);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',150);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('ȭ����',152);
REM INSERTING into FILES
SET DEFINE OFF;
Insert into FILES (FID,BOARD_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (53,129,'re1.jpg','re1.jpg','C:\semi_project\semiProject\semiProject\web\board_uploadFiles/',to_date('20/06/23','RR/MM/DD'),0,0,'Y');
Insert into FILES (FID,BOARD_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (54,192,'upup1.png','upup1.png','C:\semi_project\semiProject\semiProject\web\board_uploadFiles/',to_date('20/06/23','RR/MM/DD'),0,0,'Y');
REM INSERTING into GRADE_CLASS
SET DEFINE OFF;
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('BRONZE',0,50,'�����');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('SILVER',51,100,'�ǹ�');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('GOLD',101,150,'���');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('PLATINUM',151,200,'�÷�Ƽ��');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('DIAMOND',201,250,'���̾Ƹ��');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('ADMIN',0,0,'������');
REM INSERTING into INQUIARY
SET DEFINE OFF;
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (101,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (102,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (103,'N','N',to_date('20/06/22','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (104,'N','N',to_date('20/06/22','RR/MM/DD'),'A3');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (105,'���մϴ�','Y',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (109,'N','N',to_date('20/06/22','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (114,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (115,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (116,'N','N',to_date('20/06/22','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (117,'N','N',to_date('20/06/22','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (118,null,'Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (119,'aaaaaa','Y',to_date('20/06/23','RR/MM/DD'),'A3');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (122,'asdfasdf','Y',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (125,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (126,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (127,'N','N',to_date('20/06/23','RR/MM/DD'),'A3');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (128,'N','N',to_date('20/06/23','RR/MM/DD'),'A3');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (129,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (130,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (131,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (132,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (133,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (134,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (135,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (136,'N','N',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (187,'�亯�ޱ�','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (189,'�亯�ޱ�','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (192,'�亯�� �޾Ҿ��','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (193,'N','Y',to_date('20/06/23','RR/MM/DD'),'A1');
REM INSERTING into INQUIARY_TYPE
SET DEFINE OFF;
Insert into INQUIARY_TYPE (BOARD_TYPE,INQUIARY_NAME) values ('A1','�̿빮��');
Insert into INQUIARY_TYPE (BOARD_TYPE,INQUIARY_NAME) values ('A2','���� �Ҹ�');
Insert into INQUIARY_TYPE (BOARD_TYPE,INQUIARY_NAME) values ('A3','����');
REM INSERTING into LIST
SET DEFINE OFF;
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (13,to_date('20/06/22','RR/MM/DD'),'73','1','Y');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (12,to_date('20/06/22','RR/MM/DD'),'73','1','Y');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (14,to_date('20/06/22','RR/MM/DD'),'73','1','N');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (4,to_date('20/06/22','RR/MM/DD'),'3','1','N');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (3,to_date('20/06/22','RR/MM/DD'),'3','1','N');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (52,to_date('20/06/22','RR/MM/DD'),'8','1','N');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (1,to_date('20/06/22','RR/MM/DD'),'3','1','N');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (6,to_date('20/06/23','RR/MM/DD'),'10','1','N');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (66,to_date('20/06/23','RR/MM/DD'),'12','1','Y');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (24,to_date('20/06/23','RR/MM/DD'),'3','80','N');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (150,to_date('20/06/23','RR/MM/DD'),'78','79','Y');
Insert into LIST (SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (151,to_date('20/06/23','RR/MM/DD'),'78','80','N');
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('2','test','8divKXK3GO','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',270000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','PLATINUM',151,null,'N','N');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('3','test1','4BaxO98ca8','������','11111111','010-1111-1111','toffg6450@naver.com',800000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','GOLD',101,null,'N','N');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('4','test2','123!@#qweQWE','������','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'N','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('1','admin','1234','admin','99999999','01012341344','nullnull',102560000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,'(null)','N','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('5','test3','123!@#qweQWE','������','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','PLATINUM',151,null,'N','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('6','test4','123!@#qweQWE','������','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','SILVER',51,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('7','test5','123!@#qweQWE','������','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('8','test6','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',5,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('9','test7','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('10','test8','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('11','test9','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('12','test10','123!@#qweQWE','������','19950228','010-1111-1111','toffg6450@naver.com',480000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',5,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('13','test11','123!@#qweQWE','�赿��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('14','test12','123!@#qweQWE','���ŷ�','19930809','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('15','test13','123!@#qweQWE','������','19920101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('16','test14','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('17','test15','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('18','test16','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('19','test17','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('20','test18','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('21','test19','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('22','test20','123!@#qweQWE','�輺��','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('23','test21','123!@#qweQWE','������','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('24','test22','123!@#qweQWE','�ڻＺ','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('25','test23','123!@#qweQWE','�迤��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('26','test24','123!@#qweQWE','������','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('27','test25','123!@#qweQWE','���׷���','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('28','test26','123!@#qweQWE','������','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('29','test27','123!@#qweQWE','�輺��','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('30','test28','123!@#qweQWE','������','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('31','test29','123!@#qweQWE','�ڻＺ','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('32','test30','123!@#qweQWE','�迤��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('33','test31','123!@#qweQWE','������','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('34','test32','123!@#qweQWE','���׷���','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('35','test33','123!@#qweQWE','���¾�','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('36','test34','123!@#qweQWE','������','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('37','test35','123!@#qweQWE','�輺��','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('38','test36','123!@#qweQWE','������','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('39','test37','123!@#qweQWE','�ڻＺ','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('40','test38','123!@#qweQWE','�迤��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('41','test39','123!@#qweQWE','������','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('42','test40','123!@#qweQWE','���׷���','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('43','test41','123!@#qweQWE','���¾�','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('44','test42','123!@#qweQWE','������','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('45','test43','123!@#qweQWE','�輺��','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('46','test44','123!@#qweQWE','������','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('47','test45','123!@#qweQWE','�ڻＺ','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('48','test46','123!@#qweQWE','�迤��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('49','test47','123!@#qweQWE','������','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('50','test48','123!@#qweQWE','���׷���','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('51','test49','123!@#qweQWE','���¾�','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('52','test50','123!@#qweQWE','������','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('53','test51','123!@#qweQWE','�׽�Ʈ','55555555','010-123-1111','123@nate.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('73','tmdgns','sCUoa6M3g3','������','19960227','010-3658-4731','whfkddk12@naver.com',1111777,to_date('20/06/22','RR/MM/DD'),to_date('20/06/22','RR/MM/DD'),'Y','BRONZE',3,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('74','admin234','TMDGNS1!','������','11111111','010-1111-1111','toffg645012@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('78','sell','1234','�Ǹ���','22222222','010-9874-9874','0000@naver.com',100000,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'N','BRONZE',4,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('79','buy1','1234','��������','22222222','010-9874-6547','wlsgml898@naver.com',1000000,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('80','buy2','1234','��������','19960227','010-3214-6547','wlsgml8989123@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('81','admin1234','123!@#qwe','������','11111111','010-1111-1111','00004@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('82','toffg','tmdgns1!','������','19960227','010-111-1222','toffg@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
REM INSERTING into PROFILE_FILES
SET DEFINE OFF;
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (1,'1','fasion.jpg','fasion.jpg','C:\semi_project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/23','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (3,'3','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (2,'2','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (4,'4','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (5,'5','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (6,'6','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (7,'7','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (8,'8','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (9,'9','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (10,'10','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (11,'11','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (12,'12','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (13,'13','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (14,'14','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (15,'15','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (16,'16','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (17,'17','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (18,'18','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (19,'19','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (20,'20','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (21,'21','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (22,'22','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (23,'23','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (24,'24','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (25,'25','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (26,'26','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (27,'27','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (28,'28','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (29,'29','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (30,'30','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (31,'31','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (32,'32','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (33,'33','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (34,'34','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (35,'35','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (36,'36','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (37,'37','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (38,'38','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (39,'39','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (40,'40','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (41,'41','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (42,'42','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (43,'43','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (44,'44','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (45,'45','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (46,'46','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (47,'47','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (48,'48','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (49,'49','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (50,'50','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (51,'51','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (52,'52','peng.jpg','peng3.jpg','C:\semi_Project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (53,'53','0','noimg.gif','0',to_date('20/06/20','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (73,'73','0','noimg.gif','0',to_date('20/06/22','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (74,'74','0','noimg.gif','0',to_date('20/06/23','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (78,'78','0','noimg.gif','0',to_date('20/06/23','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (79,'79','0','noimg.gif','0',to_date('20/06/23','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (80,'80','YS.jpg','YS.jpg','C:\semi_project\semiProject\semiProject\web\profile_imgFiles/',to_date('20/06/23','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (81,'81','0','noimg.gif','0',to_date('20/06/23','RR/MM/DD'),'Y');
Insert into PROFILE_FILES (FID,USER_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,STATUS) values (82,'82','0','noimg.gif','0',to_date('20/06/23','RR/MM/DD'),'Y');
REM INSERTING into REPORT
SET DEFINE OFF;
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (174,'N','Y',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (175,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (179,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (180,null,'Y',to_date('20/06/23','RR/MM/DD'),0,'B2');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (181,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (182,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B2');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (183,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (185,'asdf','Y',to_date('20/06/23','RR/MM/DD'),1234,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (186,'������','Y',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (188,'��������','Y',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (190,'N','N',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (194,'N','N',to_date('20/06/23','RR/MM/DD'),13,'B1');
REM INSERTING into REPORT_TYPE
SET DEFINE OFF;
Insert into REPORT_TYPE (REPORT_TYPE,REPORT_NAME) values ('B1','�Ǹ��� �Ű�');
Insert into REPORT_TYPE (REPORT_TYPE,REPORT_NAME) values ('B2','������ �Ű�');
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (BOARD_NO,RATING,SERVICE_NO,S_USER_NO) values (107,5,4,'3');
Insert into REVIEW (BOARD_NO,RATING,SERVICE_NO,S_USER_NO) values (108,3,14,'73');
Insert into REVIEW (BOARD_NO,RATING,SERVICE_NO,S_USER_NO) values (123,5,52,'8');
Insert into REVIEW (BOARD_NO,RATING,SERVICE_NO,S_USER_NO) values (124,5,66,'12');
Insert into REVIEW (BOARD_NO,RATING,SERVICE_NO,S_USER_NO) values (191,4,151,'78');
REM INSERTING into SELLER
SET DEFINE OFF;
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('2',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('3',0,'5');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('1',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('4',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('5',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('6',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('7',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('8',0,'1');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('9',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('10',0,'1');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('11',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('12',0,'1');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('13',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('14',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('15',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('16',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('17',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('18',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('19',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('20',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('21',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('22',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('23',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('24',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('25',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('26',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('27',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('28',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('29',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('30',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('31',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('32',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('33',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('34',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('35',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('36',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('37',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('38',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('39',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('40',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('41',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('42',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('43',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('44',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('45',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('46',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('47',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('48',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('49',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('50',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('51',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('52',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('53',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('73',0,'5');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('74',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('78',0,'3');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('79',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('80',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('81',0,'0');
Insert into SELLER (S_USER_NO,REPORT_NUM,SELLCOUNT) values ('82',0,'0');
REM INSERTING into SERVICE
SET DEFINE OFF;
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (54,'1','Time Seller ������','����Ư���� ������',0,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/07/01','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'BTS ���� �̺�Ʈ',to_date('20/06/20','RR/MM/DD'),'�� ���� �ƹ̵�� �𿩶�!!
BTS�� ���� �� �ִ� ��ȸ�� Time Seller�� ã�ƿԽ��ϴ�
��Ÿ� ���� BTS���� �ð��� ����� ������!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (55,'1','Time Seller ������','����Ư���� ������',1,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/06/27','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Twice ���� �̺�Ʈ',to_date('20/06/20','RR/MM/DD'),'�������̿� Ʈ���̽��� �´�!!
Ʈ���̵��� ���� ��ȣ�� ��ȸ�� Time Seller���� ������!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (53,'1','Time Seller������','����Ư���� ���ʱ�',1,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/06/27','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�������� ���� �̺�Ʈ �ȳ�',to_date('20/06/20','RR/MM/DD'),'���������� 2020�� 6�� 30�� �ѱ��� �����մϴ�!!
Time Seller���� ��Ÿ� ���� ������������ ������ ��ȸ�� ������!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (56,'1','Time Seller ������','��⵵ ������  ���뱸',2,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/07/02','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�Ｚ ����� ��ȸ�� ���� �̺�Ʈ',to_date('20/06/21','RR/MM/DD'),'�Ｚ ����� ��ȸ��� ������ ���� �� �ִ� ��ȣ�� ��ȸ!!
���� Time Seller������ ���� �� �ִ� Ư���� ��Ÿ� ���� ������','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (57,'1','Time Seller ������','����Ư���� ���ʱ�',0,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/07/02','RR/MM/DD'),30000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� �� ���� �̺�Ʈ',to_date('20/06/21','RR/MM/DD'),'�ٷ��� ǥ��, ȭ���� ������ �ʼ��� �װ� �´�!!
������ ��ȭ�� �� ''��''�� ���ΰ� �� Time Seller���� ���� �� �ִ� ��ȣ�� ����!!
��ſ� �����Ͽ� ��� ���� �� �ִ� ��ȸ�� ��ƺ�����!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (58,'1','Time Seller ������','����Ư���� ���α�',0,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/07/02','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Ʈ���� ����� ���� �̺�Ʈ',to_date('20/06/21','RR/MM/DD'),'�� �̱��� ����� Ʈ������ ���� �� �ִ� ��ȸ�� Time Seller�� ��ư� ���߽��ϴ�!!
��Ÿ� ���Ͽ� Ʈ������ ���� �� �ִ� ��ȸ�� ��ġ�� ������','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (59,'1','Time Seller ������','����Ư���� ���ʱ�',0,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/07/02','RR/MM/DD'),30000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���缮 ���� �̺�Ʈ',to_date('20/06/21','RR/MM/DD'),'���� MC ���缮�� ���� �� �ִ� ��ȣ�� ��ȸ!! Time Seller���� ��ȸ�� ��ƺ�����!!
��Ÿ� ���Ͽ� ���缮���� ������ ��ȸ�� ��ġ�� ������','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (60,'1','Time Seller ������','����Ư���� ���ʱ�',0,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/07/02','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �޽ÿ��� ���� �̺�Ʈ',to_date('20/06/21','RR/MM/DD'),'���� �ְ��� �౸������ �޽ø� ���� �� �ִ� ��ȸ!!
Time Seller���� �޽ø� ���� �� �ִ� ��ȸ�� ��ġ�� ������!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (61,'1','Time Seller ������','����Ư���� ���ʱ�',0,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/07/03','RR/MM/DD'),20000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ���� �̺�Ʈ',to_date('20/06/21','RR/MM/DD'),'���������� 1��1 ������ �� �� �ִ� ��ȣ�� ��ȸ!!
Time Seller���� �����ϴ� ��ȣ�� ��ȸ�� ������ ���� ��ƺ�����!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (62,'1','Time Seller ������','����Ư���� ���ʱ�',2,0,'Y','0','auction','�̺�Ʈ','Ev',to_date('20/07/08','RR/MM/DD'),30000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'����� ���� �̺�Ʈ',to_date('20/06/21','RR/MM/DD'),'EPL �ְ��� �౸ ������ �� ������ �츮���� ������ǥ�� ����� ������ ���� �� �ִ� ��ȸ!!
Time Seller���� �� ��ȸ�� ����������!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (63,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',0,0,'Y','0','general','â��','Bu',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (64,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',0,0,'Y','0','general','â��','Bu',null,0,40000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (65,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',0,0,'Y','0','general','â��','Bu',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (66,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',1,0,'Y','1','general','â��','Bu',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (67,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',0,0,'Y','0','general','â��','Bu',null,0,70000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (68,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',0,0,'Y','0','auction','â��','Bu',to_date('20/06/27','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (69,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',0,0,'Y','0','auction','â��','Bu',to_date('20/06/29','RR/MM/DD'),20000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (70,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',0,0,'Y','0','auction','â��','Bu',to_date('20/06/29','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (71,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',0,0,'Y','0','auction','â��','Bu',to_date('20/06/28','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (72,'12','�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','��⵵ ���ý�',1,0,'Y','0','auction','â��','Bu',to_date('20/07/04','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (73,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','general','������','Ma',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (74,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','general','������','Ma',null,0,40000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (75,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','general','������','Ma',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (76,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','general','������','Ma',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (77,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','general','������','Ma',null,0,70000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (78,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','auction','������','Ma',to_date('20/06/27','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (79,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','auction','������','Ma',to_date('20/06/27','RR/MM/DD'),20000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (80,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','auction','������','Ma',to_date('20/06/27','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (81,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','auction','������','Ma',to_date('20/06/27','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (82,'13','�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','��⵵ ���ν�',0,0,'Y','0','auction','������','Ma',to_date('20/06/27','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ȿ������ ������ ����� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (83,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','general','������','Pu',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (84,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','general','������','Pu',null,0,20000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (85,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','general','������','Pu',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (86,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','general','������','Pu',null,0,40000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (87,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','general','������','Pu',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (88,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','auction','������','Pu',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (89,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','auction','������','Pu',to_date('20/06/30','RR/MM/DD'),20000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (90,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','auction','������','Pu',to_date('20/06/30','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (91,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',1,0,'Y','0','auction','������','Pu',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (92,'14','�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','��û���� õ�Ƚ�',0,0,'Y','0','auction','������','Pu',to_date('20/07/01','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ �غ� �ϴ�⸦ ��� �帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (93,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','general','���','Fi',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (94,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','general','���','Fi',null,0,20000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (95,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','general','���','Fi',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (96,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������
',0,0,'Y','0','general','���','Fi',null,0,40000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (97,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','general','���','Fi',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (98,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','auction','���','Fi',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (99,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','auction','���','Fi',to_date('20/07/01','RR/MM/DD'),20000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (100,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','auction','���','Fi',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (101,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','auction','���','Fi',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (102,'15','�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','����� ������',0,0,'Y','0','auction','���','Fi',to_date('20/07/01','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� ���͵帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (103,'22','�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������','����� �����',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'JAVA ���� ���� �� ���� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (104,'23','�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������','����� ���ǵ���',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,70000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'C# ���� ���� �� ���� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (105,'24','�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������','��⵵ ȭ����',0,0,'Y','0','general','����, IT, ���','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (106,'25','�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������','����Ư���� ���ʱ�',1,0,'Y','0','general','���, IT','It',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (107,'26','�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�','��⵵ ������',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�������� ���ʰ��� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (108,'27','�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','��⵵ �ȼ���',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (109,'27','�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������','����Ư���� ���ʱ�',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���̽� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (110,'28','�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������','��⵵ ���ý�',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'����� �� ����� ���� ���� �մϴ�',to_date('20/06/21','RR/MM/DD'),'����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (111,'29','�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������','����� �����',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'JAVA ���� ���� �� ���� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (112,'30','�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������','����� ���ǵ���',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,70000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'C# ���� ���� �� ���� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (113,'31','�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������','��⵵ ȭ����',0,0,'Y','0','general','����, IT, ���','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (114,'32','�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������','����Ư���� ���ʱ�',0,0,'Y','0','general','���, IT','It',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (115,'33','�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�','��⵵ ������',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�������� ���ʰ��� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (116,'34','�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','��⵵ �ȼ���',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (117,'35','�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������','����Ư���� ���ʱ�',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���̽� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (118,'36','�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������','��⵵ ���ý�',0,0,'Y','0','general','����, IT, �ڵ�','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'����� �� ����� ���� ���� �մϴ�',to_date('20/06/21','RR/MM/DD'),'����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (119,'37','�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������
','����� �����',1,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'JAVA ���� ���� �� ���� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.

','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (120,'38','�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������
','����� ���ǵ���',3,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'C# ���� ���� �� ���� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (121,'39','�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������
','��⵵ ȭ����',0,0,'Y','0','auction','����, IT, ���','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (122,'40','�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������
','����Ư���� ���ʱ�',0,0,'Y','0','auction','���, IT','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (123,'41','�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�
','��⵵ ������',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�������� ���ʰ��� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (124,'42','�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�
','��⵵ �ȼ���',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (125,'43','�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������
','����Ư���� ���ʱ�',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���̽� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (126,'44','�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������
','��⵵ ���ý�',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'����� �� ����� ���� ���� �մϴ�',to_date('20/06/21','RR/MM/DD'),'����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (127,'45','�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������
','����� �����',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'JAVA ���� ���� �� ���� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.

','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (128,'46','�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������
','����� ���ǵ���',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'C# ���� ���� �� ���� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (129,'47','�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������
','��⵵ ȭ����',0,0,'Y','0','auction','����, IT, ���','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (130,'48','�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������
','����Ư���� ���ʱ�',0,0,'Y','0','auction','���, IT','It',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (131,'49','�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�
','��⵵ ������',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�������� ���ʰ��� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (132,'50','�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','��⵵ �ȼ���',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (133,'51','�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������
','����Ư���� ���ʱ�',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���̽� �˷��帳�ϴ�',to_date('20/06/21','RR/MM/DD'),'���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (134,'52','�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������
','��⵵ ���ý�',0,0,'Y','0','auction','����, IT, �ڵ�','It',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'����� �� ����� ���� ���� �մϴ�',to_date('20/06/21','RR/MM/DD'),'����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (1,'3','"�̸� : ������
���� : 25��
�з� : ����
�а� : ������IT
��� : �Ｚ���� �ٹ���, ���� �����ȸ ��� �ټ� 
��� : �ǾƳ�
�����ϴ� ���� : �Ұ��
','������/Ⱦ����',3,0,'Y','0','general','��Ÿ ����','Ar',null,0,1000000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�ܱⰣ�� ��Ÿ ������ �ϴ¹��� �˷��帳�ϴ�.',to_date('20/06/20','RR/MM/DD'),'

�ܱⰣ�� ��Ÿ ������ �ϴ¹��� �˷��帳�ϴ�.
������ ������ �����մϴ�.
�������� Ȯ���ϰ� �������� �� �ְ� �ص帳�ϴ�. 
��, �����Ƹ� �ϰ� ������ʽÿ�! ','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (3,'3','�̸� : ������
���� : 25��
�з� : ����
�а� : ������IT
��� : �Ｚ���� �ٹ���, ���� �����ȸ ��� �ټ� 
��� : ��, ��Ÿ, �뷡
�����ϴ� ���� : �Ұ��
�ϰ������ : �Ұ�� ���ִ»�� ���ѻ�� �ѿ��ְ�','��⵵/������/������',2,0,'Y','0','auction','�� ','Ar',to_date('20/06/16','RR/MM/DD'),200000,200000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��ŵ� ��ź�ҳ���� �� �� �ֽ��ϴ�. ',to_date('20/06/20','RR/MM/DD'),'��ź�ҳ�� �߸�ŭ �߻��������� ������ �߸�ŭ ���� �� �� �ֵ��� �ص帳�ϴ�.
���ʺ��� ���� ��� �� �ִ� �� Ŭ���� !
��ŵ� �����غ�����.','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (2,'3','�̸� : ������
���� : 25��
�з� : ����
�а� : ������IT
��� : �Ｚ���� �ٹ���, ���� �����ȸ ��� �ټ� 
��� : �뷡
�����ϴ� ���� : �Ұ��
�ϰ������ : �Ұ�� ���ִ»�� ���ѻ�� �ѿ��ְ�','��⵵/����/�ϻ꼭��',3,0,'Y','0','auction','�뷡','Ar',to_date('20/06/26','RR/MM/DD'),1000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�ܱⰣ�� ��ȿ�� ����� ����� �帳�ϴ�.  ',to_date('20/06/20','RR/MM/DD'),'
�ܱⰣ�� ��ȿ�� ����ó�� �����帳�ϴ�. 
���� �뷡�濡�� ��ġ �Ⱥ��� ��ȿ�� �뷡 ���� �θ� �� �ֽ��ϴ� !!!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (4,'3','�̸� : ������
���� : 25��
�а� : �ǿ����ǰ�
��� : ��̴��Ӵ� ���� 18 ��� 
��� : ��, �뷡, ��, ��Ÿ
�����ϴ� ���� : ���
','�����/������/���ﵿ',9,0,'Y','1','general','��','Ar',null,0,300000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��ŵ� �������� �� �� �ֽ��ϴ�. ',to_date('20/06/20','RR/MM/DD'),'
������ ��ġ�� ���Ƿ��� ���� �����ʴϱ�? 
�� �ʺ��� ������ ��̴��Ӵ� ����� �� �ִ� �Ƿ����� Ű���帳�ϴ� !
��� �����б� �㵵 �˷��帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (5,'3','�̸� : ������
���� : 25��
�з� : ����
�а� : �ǿ���а� 
��� : ���� ����Ʋ 1�� ���� 
��� : �뷡, ��, ��Ÿ, �� 
�����ϴ� ���� : �ʹ�
','��⵵/���ý�',3,0,'Y','1','auction','�� ','Ar',to_date('20/06/29','RR/MM/DD'),210000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'1�� 3���� �ϴ� ��ſ���',to_date('20/06/20','RR/MM/DD'),'�ٷ��� ǥ���� ��������?
ȭ���� ������ ���ճ���?
�Ź߲��� �˸̳���?
�������� �質��? 
�׷� ����� ���� ����� ��� �غ� �Ǿ��ֽ��ϴ�. ���� �ٷ� �����ϼ��� !','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (21,'3','�̸� : ������
���� : 40��
�з� : ����
�а� : ������IT
��� : �Ｚ���� �ٹ���, ���� �����ȸ ��� �ټ� 
��� : �������
�����ϴ� ���� : ���','��⵵/����',1,0,'Y','0','general','ī�޶�','Ar',null,0,20000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�ʸ�ī�޶� ���� ������ ������ �ͽ��ϴ�. ',to_date('20/06/21','RR/MM/DD'),'
�ʸ�ī�޶�� ����� ������ 10��, ���� �ʸ�ī�޶� ������ ������ �ͽ��ϴ�. 
�ʸ� ī�޶� ���� �˰�����ź�, ������ ī�޶� ����Ͻô� ��� �е� 
ȯ���Դϴ�.  ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (22,'3','�̸� : ������
���� : 48��
�з� : ����
�а� : ȸȭ�� 
��� : ����� ������ �����̼��п� ����  
��� : ��ȭ�׸��� 
','�����/������',0,0,'Y','0','general','�̼�','Ar',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���������� �ٺ�ġó�� �׸��׸��� ',to_date('20/06/21','RR/MM/DD'),'�׸��� �߱׸��� �����ŵ� ����� �𸣽ô� �е��� ���� ������ �غ��غ��ҽ��ϴ�.
���������� �ٺ�ġó�� �׸� �׸��� ��� �˰���� �����ʴϱ�?
�𳪸��� ���� �׸� �ϳ� �׷����� �����ôٸ� ������ �����ϱ� ���� �˷��帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (23,'3','�̸� : ������
���� : 58��
�з� : ����
�а� : ���ؿ�ȭ�� 
��� : �Ѻ��� ����, �Ǳ��� ������ĳ�� �� ��Ʈ�� �ټ� �⿬
','�����/��õ��',0,0,'Y','0','auction','����','Ar',to_date('20/07/01','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ó�� �����ϰ� �����ź�',to_date('20/06/21','RR/MM/DD'),'
���⸦ ����ϴ� ���е�, �����ڰ� �ǰ���� ���е� !
������ó�� �����ϰ� ���� �����ʴϱ� ?
�����λ� 30���� ���� �������ø� �����찰�� ���� ��Ȱ���Ⱑ ���������� �̴ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (24,'3','�̸� : ������
���� : 30��
�з� : ȣ�׿�Ʈ �׸��ɵ��� ���
��� : ��Ʈ�δ��� ��ȯ 
�����ϴ� ���� : ���͸���
','��⵵/����/�ϻ꼭��',10,0,'Y','80','auction','����','Ar',to_date('20/06/23','RR/MM/DD'),800000,800000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ����� �˷��帳�ϴ�. ',to_date('20/06/21','RR/MM/DD'),'
������ �˰�;��ϰ� �ñ��������� �˼� ���� ������ ���� !
���� �����簡 �˷��帳�ϴ�. 
�����ϴ� �̼����� ������ ������ ������ ȣ���� ������ ! ','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (25,'3','�̸� : ������
���� : 35��
�з� : ����
�а� : �ǿ���а�
��� : ���� ���Ӵ�ȸ 2ȸ ���, �ж�뿡�� ���� 
��� : �ܴ�
�����ϴ� ���� : ������
','�����/������/���ﵿ',0,0,'Y','0','general','����','Ar',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���ӿ� ���� �˷��帳�ϴ�. ',to_date('20/06/21','RR/MM/DD'),'
�ű������� �����ϰ� ���� ������ ���踦 �����غ�����.
������ ���Ƽ� �������� 10�� ! 
������ �ñ��� ��ſ��� ���� �̾߱⸦ ����帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (26,'3','�̸� : ������
���� : 30��
�з� : ����
�а� : ����̼��а� 
��� : ���ﵿ ��Ÿ���� �ٸ���Ÿ
��� : �뷡
�����ϴ� ���� : �ٴҶ��
','�����/������/���ﵿ',0,0,'Y','0','general','�󶼾�Ʈ','Ar',null,0,80000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�󶼾�Ʈ�� ���� �˷��帳�ϴ�. ',to_date('20/06/21','RR/MM/DD'),'
�󶼾�Ʈ�� ���迡 ���Ű� ȯ���մϴ�. 
�󶼸� ����ϴ� ��� ���ôµ����� ��ġ�� ���� 
������ ������ �󶼸� �ѹ� �������� !','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (28,'4','�̸� : ������
���� : 48��
�з� : ����
�а� : ȸȭ�� 
��� : ����� ������ �����̼��п� ����  
��� : ��ȭ�׸��� ','��⵵/���ý�',0,0,'Y','0','auction','�̼� ','Ar',to_date('20/06/27','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��ŵ� �𳪸��ڸ� �׸� �� �ֽ��ϴ�. ',to_date('20/06/21','RR/MM/DD'),'�׸��� �߱׸��� �����ŵ� ����� �𸣽ô� �е��� ���� ������ �غ��غ��ҽ��ϴ�.
���������� �ٺ�ġó�� �׸� �׸��� ��� �˰���� �����ʴϱ�?
�𳪸��� ���� �׸� �ϳ� �׷����� �����ôٸ� ������ �����ϱ� ���� �˷��帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (29,'4','�̸� : ������
���� : 58��
�з� : ����
�а� : ���ؿ�ȭ�� 
��� : �Ѻ��� ����, �Ǳ��� ������ĳ�� �� ��Ʈ�� �ټ� �⿬','��û����/õ�Ƚ�',0,0,'Y','0','auction','����','Ar',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ó�� ������ ���� �ǰ� �ͽ��ϱ�?',to_date('20/06/21','RR/MM/DD'),'���⸦ ����ϴ� ���е�, �����ڰ� �ǰ���� ���е� !
������ó�� �����ϰ� ���� �����ʴϱ� ?
�����λ� 30���� ���� �������ø� �����찰�� ���� ��Ȱ���Ⱑ ���������� �̴ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (30,'4','�̸� : ������
���� : 30��
�з� : ȣ�׿�Ʈ �׸��ɵ��� ���
��� : ��Ʈ�δ��� ��ȯ 
�����ϴ� ���� : ���͸���','�����/������',0,0,'Y','0','general','����','Ar',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ���踦 �����帳�ϴ�. ',to_date('20/06/21','RR/MM/DD'),'������ �˰�;��ϰ� �ñ��������� �˼� ���� ������ ���� !
���� �����簡 �˷��帳�ϴ�. 
�����ϴ� �̼����� ������ ������ ������ ȣ���� ������ ! ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (31,'4','�̸� : ������
���� : 30��
�з� : ����
�а� : ����̼��а� 
��� : ���� ���Ӵ�ȸ 3�� ����
��� : �뷡
�����ϴ� ���� : �Ĵϴ�','�����/������/���ﵿ',0,0,'Y','0','auction','����','Ar',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ���踦 �����غ�����.',to_date('20/06/21','RR/MM/DD'),'�ű������� �����ϰ� ���� ������ ���踦 �����غ�����.
������ ���Ƽ� �������� 10�� ! 
������ �ñ��� ��ſ��� ���� �̾߱⸦ ����帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (32,'5','�̸� : ������
���� : 35��
�з� : ����
�а� : ��ǰ�����а�
��� : ���� �丮��ȸ 3ȸ ���
','�����/������/���ﵿ',0,0,'Y','0','general','�丮Ŭ����','Re',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�丮�� ����Ͻô� ��� �е�',to_date('20/06/21','RR/MM/DD'),'�丮�� ����Ͻô� ���е� ���� �Բ� �丮�ؿ�!
�丮�� ���� �پ��� ������ ü���� �ϰ� �ص帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (33,'5','�̸� : ������
���� : 55��
�з� : ����
�а� : ��ǰ�����а� 
��� : ������ �귣�� �Ѱ�����
��� : ��, ��Ÿ, �丮 
�����ϴ� ���� : �Ұ��
','��⵵/������/������',1,0,'Y','0','auction','��ľ�','Re',to_date('20/06/30','RR/MM/DD'),200000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',to_date('20/06/21','RR/MM/DD'),'
��2�� �������� �޲ٴ� ��ſ��Ը� ������ �˷��帮�� ��ľ����� ��� 
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (34,'6','�̸� : ������
���� : 68��
�з� : ����
�а� : ��ǰ��
��� : ����� ������ �����丮�п� ����
��� : �뷡','��⵵/���ý�',1,0,'Y','0','general','���ڿ丮','Re',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� �������� �����帳�ϴ�. ',to_date('20/06/21','RR/MM/DD'),'

40�� ���� �ܱ游 �ɾ�Խ��ϴ�. ���ڿ����� ��� ���� �˷��帳�ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (35,'6','�̸� : ������
���� : 55��
�з� : ����
�а� : ��ǰ�����а� 
��� : ������ �귣�� �Ѱ�����
��� : ��, ��Ÿ, �丮 
�����ϴ� ���� : �Ұ��','�����/������/���ﵿ',2,0,'Y','0','auction','��ľ�','Re',to_date('20/06/29','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',to_date('20/06/21','RR/MM/DD'),'��2�� �������� �޲ٴ� ��ſ��Ը� ������ �˷��帮�� ��ľ����� ��� ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (36,'6','�̸� : ������
���� : 68��
�з� : ����
�а� : ��ǰ��
��� : ����� ������ �����丮�п� ����
��� : �뷡','�����/������/���ﵿ',0,0,'Y','0','auction','���ڿ丮','Re',to_date('20/07/10','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� �������� �����帳�ϴ�. ',to_date('20/06/21','RR/MM/DD'),'40�� ���� �ܱ游 �ɾ�Խ��ϴ�. ���ڿ����� ��� ���� �˷��帳�ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (37,'6','�̸� : ������
���� : 68��
�з� : ����
�а� : ��ǰ��
��� : ����� ������ �����丮�п� ����
��� : �뷡
��⵵/���ý�','�����/������/���ﵿ',0,0,'Y','0','general','���ڿ丮','Re',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� �������� �����帳�ϴ�.',to_date('20/06/21','RR/MM/DD'),'40�� ���� �ܱ游 �ɾ�Խ��ϴ�. ���ڿ����� ��� ���� �˷��帳�ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (38,'6','�̸� : ������
���� : 55��
�з� : ����
�а� : ��ǰ�����а� 
��� : ������ �귣�� �Ѱ�����
��� : ��, ��Ÿ, �丮 
�����ϴ� ���� : �Ұ��','�����/������/���ﵿ',0,0,'Y','0','general','��ľ�','Re',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',to_date('20/06/21','RR/MM/DD'),'��2�� �������� �޲ٴ� ��ſ��Ը� ������ �˷��帮�� ��ľ����� ��� ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (39,'6','�̸� : ������
���� : 35��
�з� : ����
�а� : ��ǰ�����а�
��� : ���� �丮��ȸ 3ȸ ���','��û����/õ�Ƚ�',0,0,'Y','0','general','�丮�� ����Ͻô� ��� �е�','Re',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�丮�� ����Ͻô� ��� �е�',to_date('20/06/21','RR/MM/DD'),'�丮�� ����Ͻô� ���е� ���� �Բ� �丮�ؿ�!
�丮�� ���� �پ��� ������ ü���� �ϰ� �ص帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (40,'6','�̸� : ������
���� : 40��
�з� : ����
�а� : ��ǰ�����а�
��� : ġ�������','�����/������/���ﵿ',0,0,'Y','0','auction','ġ��','Re',to_date('20/06/17','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ġ� ���� �̾߱�',to_date('20/06/21','RR/MM/DD'),'�ٳⰣ ġ� �����߽��ϴ�. ġ� ����Ͻô� �е鿡�� ġ�� �̾߱⸦ ����帮�� �ͽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (41,'6','�̸� : ������
���� : 60��
�з� : ����
�а� : ��ǰ�����а�
��� :  �Ϻ� �ʹ� ���������� ������ �����ܸ��̿��� 20�� �ٹ�','�����/������/���ﵿ',0,0,'Y','0','general','�ʹ�丮','Re',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�ʹ������� ����ִ� �ʹ��̾߱�',to_date('20/06/21','RR/MM/DD'),'30�⵿�� �ʹ丸 �����Խ��ϴ�. �ʹ��� �����Ͻô� ���в� �ʹ��̾߱⸦ 
����帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (42,'7','�̸� : ������
���� : 30��
�з� : ����
�а� : ���а�
��� : ������к������� �ٹ���
','�����/������/���ﵿ',0,0,'Y','0','general','�Ƿ�-���','Me',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��簡 �Ǳ������ ����',to_date('20/06/21','RR/MM/DD'),'
��簡 �Ǳ�� ����� ���, ��簡 �Ǳ������ ����, 
��簡�Ǿ��� ���� ��ǵ� ��
��翡 ���� �ñ��Ͻ� ��� ���� �˷��帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (43,'7','�̸� : ������
���� : 38��
�з� : ����
�а� : ���а� 
��� : ������к������� �ٹ���','�����/��õ��',1,0,'Y','0','auction','�Ƿ�_�ǻ�','Me',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�ǻ簡 �ñ��Ͻ� ��� �е鿡��',to_date('20/06/21','RR/MM/DD'),'�ǻ簡 �Ǳ������ ������ ���ι� ���� ��� �������� �˷��帳�ϴ�.
�� �ñ��� ���׵鿡 ���ؼ��� �����Ӱ� �����ϼŵ� �˴ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (44,'7','�̸� : ������
���� : 28��
�з� : ����
�а� : ���а�
��� : ������к������� �ٹ���','�����/���۱�',0,0,'Y','0','general','�Ƿ�_��缱��','Me',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��缱�翡 ���� �ñ��Ͻ� ���е�',to_date('20/06/21','RR/MM/DD'),'
��缱�簡 �Ǳ������ ����, ��缱�翡���� ���ǰ� ���� ���� 
�����ϰ� �����帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (45,'7','�̸� : ������
���� : 38��
�з� : ����
�а� : ���а� 
��� : ������к������� �ٹ���
�����/��õ��','�����/���۱�',2,0,'Y','0','auction','�Ƿ�_�ǻ�','Me',to_date('20/06/29','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�ǻ簡 �ñ��Ͻ� ���в�',to_date('20/06/21','RR/MM/DD'),'�ǻ簡 �Ǳ������ ������ ���ι� ���� ��� �������� �˷��帳�ϴ�.
�� �ñ��� ���׵鿡 ���ؼ��� �����Ӱ� �����ϼŵ� �˴ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (46,'7','�̸� : ������
���� : 28��
�з� : ����
�а� : ���а�
��� : ������к������� �ٹ���','�����/���۱�',0,0,'Y','0','auction','�Ƿ�_��缱��','Me',to_date('20/07/06','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��缱�翡 ���� �ñ��Ͻ� ���е�',to_date('20/06/21','RR/MM/DD'),'��缱�簡 �Ǳ������ ����, ��缱�翡���� ���ǰ� ���� ���� 
�����ϰ� �����帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (47,'7','�̸� : ������
���� : 30��
�з� : ����
�а� : ���а�
��� : ������к������� �ٹ���','��û����/õ�Ƚ�',1,0,'Y','0','auction','�Ƿ�-���','Me',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��簡 �Ǳ������ ����',to_date('20/06/21','RR/MM/DD'),'��簡 �Ǳ�� ����� ���, ��簡 �Ǳ������ ����, 
��簡�Ǿ��� ���� ��ǵ� ��
��翡 ���� �ñ��Ͻ� ��� ���� �˷��帮�ڽ��ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (48,'7','�̸� : ������
���� : 35��
�з� : ����
�а� : �мǵ������а�
','�����/������/������',0,0,'Y','0','general','�мǵ�����','Fa',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��2�� �ӵ巹���� �޲ٴ� �е鿡�� ',to_date('20/06/21','RR/MM/DD'),'��ŵ� �ӵ巹��ó�� �� �� �ֽ��ϴ�. �мǿ� ���� ������ �˷��帳�ϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (49,'7','�̸� : ������
���� : 35��
�з� : ����
�а� : �мǵ������а�
��� : �м� �����̳ʷ� ������','�����/������',0,0,'Y','0','auction','�м�_��','Fa',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�мǼ����� ��� 84�� �е鲲',to_date('20/06/21','RR/MM/DD'),'
�� ���԰������ �м��׷�����Ʈ�е� ! 
��ŵ� ���� ������ ��������� ������� �ٽ� �¾ �� �ְ� �� ���Դϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (50,'7','�̸� : ������
���� : 35��
�з� : ����
�а� : �мǵ������а�
��� : �м� �����̳ʷ� ������','�����/������',1,0,'Y','0','general','�м�_��','Fa',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�мǼ����� ��� 84�� �е鲲',to_date('20/06/21','RR/MM/DD'),'
�� ���԰������ �м��׷�����Ʈ�е� ! 
��ŵ� ���� ������ ��������� ������� �ٽ� �¾ �� �ְ� �� ���Դϴ�. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (51,'7','�̸� : ������
���� : 30����
��� : �౸ ������ǥ���
','�����/������/���ﵿ',1,0,'Y','0','auction','������_�౸','Sp',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'����� �ϻ��� �޽÷� �����帳�ϴ�. ',to_date('20/06/21','RR/MM/DD'),'
�౸�� ����ϴ� ���е� �ϻ��� �޽÷� �����帳�ϴ�. 
�׿ܿ� �౸ ������ǥ�� �ٸ鼭 �����ߴ� ��� �͵��� �̾߱� �ص帮�ڽ��ϴ�.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (52,'8','�з� ����
�������б� ���硤ü���а�������
��� ����
�λ������ũ �����ࡤ�����౸�ܡ�������15��.0����','�����/������/���ﵿ',1,0,'Y','1','general','������_�౸','Sp',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� ������� �ɼ��ִ� �����౸15���̻� �����԰� �౸���� �帳�ϴ�.',to_date('20/06/21','RR/MM/DD'),'�ȳ��ϼ���.
���� �ְ��� ������ ������ �����Դϴ�.

���� k���׿��� 8�⵿�� �پ���, �߱����۸��׿��� 3��, �±����׿��� 2��.
�������� ������Ȱ���� �������౸���� �Դϴ�.

�౸�� �⺻�Ⱑ ���� �߿�����.
����� �� �౸�� ����������� �౸�� �����ʽ��ϴ�.
�ݺ����� �Ʒ��� �ʿ��ϰ� ü������ ���α׷����� �Ʒ��� �ؾ��մϴ�.

��¥ �౸�� ��������� ��
�������� �౸�� ó���̽� ��
Ȥ�� ����� ���α��� ��� ��̰� �౸�� ���Ǽ��ֽ��ϴ�.


�����౸15���̻��� �Ǹ��Ѽ����԰�
�ְ��� ���α׷����� ���Ǽ��ִ� ��ȸ�Դϴ�.
���� �������� �ø��ȴ�ǥ��� ��ǥ�԰� ���̸��� �߱����۸��� �±����� �ؿܸ��׿���
���������� �� �Ǹ���.�������� �����Ǿ��ֽ��ϴ�.

���� �� �̻� ��.��.���� �ƴ� �׶����� �����ڰ� �Ǿ����.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (6,'10','�з� ����
���δ��б����ݱ������а�������
��� ����
�����ν�������������֡��Ŵ�����0��.4����
������Ʈ�Ͻ�����Ƽ����Ʈ���̳ʡ�1��.0����
���̺���Ʈ�Ͻ�����Ƽ�������塤1��.0����
��Ʈ������Ʈ���̴ס���Ƽ Ʈ���̳ʡ�0��.9����
���� �ڰ���
��Ȱ������������1�ޡ�2014.12���ѱ�ü�������
��Ȱ������������1��(������)��2019.12���ѱ�ü�������
���ν����������ڡ�2017.9���ѱ�ü�������
','��⵵/���ν�',2,0,'Y','1','general','������_������','Sp',null,0,100000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��Ʃ�� ��������ġ�� �ø��ȷ����� �˷� �帳�ϴ�.',to_date('20/06/22','RR/MM/DD'),'������_������
����, �⺻����� �߱�, ��� �������
���̻� ������ ��������� ������ !
������ �ҹ� ! ������ ���� ��� �� �ִ� ������ ��������
����Ʈ ��� �������� �������� ���� ����ְ� �˷��帳�ϴ� !



[ �̷� �е� �� ��õ����� ! ]
���
������ ���̽� �����⼱���� �غ��
ȣ�ż����� ���� ��
�� ��ü�� �����ϰ� ����� ���� ��
�ٸ� �������� �����Ű�� ���� ��
���̻� �������� ����Ʈ �������� �������� �ƴմϴ�.
','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (7,'10','�̸� : ������
���� : 29��
���� : �������а�
��� : ������ǥ �ܰŸ� ���� ���
��� : ���, �Ϻ���� 
','��⵵/���ν�',0,0,'Y','0','auction','������_�ܰŸ� �޸���','Sp',to_date('20/06/26','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'����� ��Ʈó�� �ǰ�����ôٸ� Ŭ���ϼ���',to_date('20/06/22','RR/MM/DD'),'����κ�Ʈó�� �ΰ�źȯ�� �Ǵ� ����� �˷��帳�ϴ�. 
��ŵ� ����� �ΰ�źȯ�� �� �� �ֽ��ϴ�. 
�����ϰ� ��������� ! 

','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (8,'10','�̸� : ������
���� : 40��
���� : ������
��� : ���� ������ȸ �ټ� �Ի�
��� : ���, �Ϻ���� 
','��û���� õ�Ƚ�',0,0,'Y','0','general','������_����','Sp',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������ ���, ���, ��۽�ƿ �Կ��� �帳�ϴ�.',to_date('20/06/22','RR/MM/DD'),' ���� �౸���� ��� �� ��� �Կ��� ���� �����ϰ� ������, �౸���� �������� ���ͺ� �Կ��� �����ϰ� �ֽ��ϴ�. �ټ��� �������� �����Կ��� ���� ��Ȱ�� ��� ������� å�Ӱ� �ִ� �µ��� �ּ��� ���� ���͵帳�ϴ�.

�������� ��ġ�� �߿��� ���忡�� ���� �� ���ϴ�.
�߿��� ������ ��ƾ� �Ѵٸ� ������ ���ݺ��� ������ ���� �۰��� �����ϼ���.


������ ��� �� ���, ������, ��� ��ƿ�Կ��� �ʿ��Ͻ� ���� ������ �����ּ��� *^^*
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (9,'10','���� �̼��� �����ؼ� �мǵ����ΰ��� �ٴϴٰ� ����� �Ϸ���Ʈ�۾��� ���������� ���ϰ� �ִ� APE �Դϴ�.

�̸� : ������
���� : 28��
���� : �̼�_�мǵ����ΰ�
��� : (��) �Ϸ���Ʈ �۾�, ������ ���� ��������
','��⵵/���ν�',0,0,'Y','0','general','�мǵ�����_����','Fa',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�˾Ƶθ� ���� �мǵ����� �Թ��ڸ� ���� ���������� �˷� �帳�ϴ�.',to_date('20/06/22','RR/MM/DD'),'�ȳ��ϼ���.
�мǵ������� �� ������ �����Ͻðų� ����� �ϰ� ��� �Թ��ڴԵ鿡�� ������ �帮�� �ͽ��ϴ�. 
�мǵ������� �����ϱ� �� �����ϴ� ����̳� �ǹ���, �˾Ƶθ� ���� ���ĵ��� �������� �˷��帮�� ��ǥ�� ���� ���ư��µ� ������ �Ǿ����� ���ڽ��ϴ�:)
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (10,'10','<��������� ��Ī ������ �ڱ�Ұ�>
1. �������� �ֿ� �о�:
_ �̷¼�/�ڼҼ� �ۼ�
_ ����м�/�����Ұ�
_ �λ�ä��ý����� ���ؿ� �ܰ躰 �غ�
_ ������Ī
2. �������� ���/�̷»���:
_ ����/�߰߱�� �λ�����&�ӿ�(����/����/�м�/�Ƿ�/�ؿܹ��� �ٹ�����)
_ �������(����/����/�м�/����/�Ǽ�/���� ��)
_ ������, ������� ������������ Ȱ��
_ ���Ư��/���丵 ����(��������ڸ�����, ���� ��)
_ �����������α׷� ���� �� �(������� �� ����)
3. ������ ����:
_ ����غ� �ʿ��� �ñ��� �ؼ� �� ���κ� ���� ����
_ ������ä�ý��ۼ��� �� � ������ �������� �������� ��Ī ����
_ �ڼҼ�/����/�̹�������ŷ
4. ������ ����:
_��Ī ��û-��Ű������ -�ð����(�¶���_īī��������ȭ/���)
5. �ݾ׿� ���� ���� ���� ����:
_ ��Ű�� �ݾ׺� �¶��� ����
','�����/������/������',0,0,'Y','0','auction','��Ƽ������','Fa',to_date('20/06/30','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��Ƽ �̹��� ������ : ���, ����ũ�� ������ �� �帳�ϴ�.',to_date('20/06/22','RR/MM/DD'),'�ȳ��ϼ���.
�������� 20�� ��۰� ��Ƽ �̹���������, ���� �� ���� ����� ������ ��������
���� �Ѻ� �Ѻп��� ���� ���񽺷� ���, ����ũ��, �м��� ���Ͽ츦 ���п��� �´� �������� �� �帳�ϴ�.


<�̷� �п��� ��õ�� �帳�ϴ�~~^^>
*�̹��� ��ȭ�� �ְ� ������ ��
*�� �̹����� �´� ��Ÿ���� ã�� ������ ��
*�� ü���� ��︮�� �ǻ� ������ ���Ͻô� ��
*���� �۽��� �÷��� �˰� ������ ��
*�۽��� ����ũ���� ���Ͻô� ��
*�� �̹����� �´� ��� ��Ÿ���� ã�� �����ź�
*��������ũ�� ��Ż�������� �ް� ������ ��

*���� ȭ��ǰ �Ŀ�ġ �غ����ֽø� �Ŀ�ġ �м� �� ��ǰ���� ���� �� �帳�ϴ�.
*�� ��� ��Ÿ�Ͽ� �°� ���̷�, ���� ��� ����� �˷��帳�ϴ�.
*ü�� �м� ���� �м� ��Ÿ���� ������ �帳�ϴ�.

**���� �� ���ο��� �´� ȭ��ǰ ���� ��� ��ǰ,�ǻ� ���� �����ص帳�ϴ�.**
**���� �� ������ �� �ñ��� ���� �ǵ�� �� �帳�ϴ�.*
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (11,'10','�̸� : ������
���� : 35��
','�����/������/������',13,0,'Y','0','auction','�м�, ���','Fa',to_date('20/06/29','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�мǰ��� ����ñ����� �ذ��� �帳�ϴ�.',to_date('20/06/22','RR/MM/DD'),'����ñ����� �ذ��� �帳�ϴ�.

<��������� ��Ī ������ �ڱ�Ұ�>
1. �������� �ֿ� �о�:
_ �̷¼�/�ڼҼ� �ۼ�
_ ����м�/�����Ұ�
_ �λ�ä��ý����� ���ؿ� �ܰ躰 �غ�
_ ������Ī
2. �������� ���/�̷»���:
_ ����/�߰߱�� �λ�����&�ӿ�(����/����/�м�/�Ƿ�/�ؿܹ��� �ٹ�����)
_ �������(����/����/�м�/����/�Ǽ�/���� ��)
_ ������, ������� ������������ Ȱ��
_ ���Ư��/���丵 ����(��������ڸ�����, ���� ��)
_ �����������α׷� ���� �� �(������� �� ����)
3. ������ ����:
_ ����غ� �ʿ��� �ñ��� �ؼ� �� ���κ� ���� ����
_ ������ä�ý��ۼ��� �� � ������ �������� �������� ��Ī ����
_ �ڼҼ�/����/�̹�������ŷ
4. ������ ����:
_��Ī ��û-��Ű������ -�ð����(�¶���_īī��������ȭ/���)
5. �ݾ׿� ���� ���� ���� ����:
_ ��Ű�� �ݾ׺� �¶��� ����
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (12,'73','������
���� 490��
','��û���� õ�Ƚ�',1,0,'Y','0','auction','������_����','Re',to_date('20/06/19','RR/MM/DD'),1111777,1111777,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�������',to_date('20/06/22','RR/MM/DD'),'����ƽ �ٸ��¹�','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (13,'73','������
���� 490��
','��û���� õ�Ƚ�',2,0,'Y','0','auction','������_����','Re',to_date('20/06/19','RR/MM/DD'),1111777,1111777,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�������',to_date('20/06/22','RR/MM/DD'),'����ƽ �ٸ��¹�','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (14,'73','��������','��û���� õ�Ƚ�',3,0,'Y','1','auction','���','Ar',to_date('20/06/22','RR/MM/DD'),60000,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�Խñ� ��ϵǳ�',to_date('20/06/22','RR/MM/DD'),'��°� ��������','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (150,'78','��� ��� ','��⵵/���ν�',102,0,'Y','79','general','���','Ar',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��ʹ��',to_date('20/06/23','RR/MM/DD'),'��� ���','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (151,'78','���� ���','�泲 õ�Ƚ�',113,0,'Y','80','auction','������_����','Ar',to_date('20/06/23','RR/MM/DD'),100000,100000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��Ű� ��',to_date('20/06/23','RR/MM/DD'),'��Ű� ��','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (152,'3','�̸� : ����
���� : 25��
��� : kh���������� �ֿ��� ����
��� : �Ƹ��Ա�
�����ϴ� ���� : �Ƹ��','�����/������/���ﵿ',1,0,'Y','0','auction','IT_JAVA','It',to_date('20/06/30','RR/MM/DD'),300000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�ڹ� �������ϰ��ص帳�ϴ�. ',to_date('20/06/23','RR/MM/DD'),'�ڹ��� ''��''�ڵ� �𸣽ô� �е鵵 �ڹ� ������ �ϰ� �ص帳�ϴ�. ','Y');
REM INSERTING into SERVICE_FILES
SET DEFINE OFF;
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (54,54,'bts.png','bts.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (55,55,'twice.png','twice.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (53,53,'bill.png','bill.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (56,56,'lee.png','lee.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (57,57,'rain.jpg','rain.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (58,58,'trump.jpg','trump.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (59,59,'yjs.jpg','yjs.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (60,60,'messi.jpg','messi.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (61,61,'sjs.jpg','sjs.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (62,62,'sonjpg.jpg','sonjpg.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (63,63,'up.jpg','up.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (64,64,'up.jpg','up1.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (65,65,'up.jpg','up2.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (66,66,'up.jpg','up3.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (67,67,'up.jpg','up4.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (68,68,'up.jpg','up5.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (69,69,'up.jpg','up6.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (70,70,'up.jpg','up7.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (71,71,'up.jpg','up8.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (72,72,'up.jpg','up9.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (73,73,'marketing.png','marketing.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (74,74,'marketing.png','marketing1.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (75,75,'marketing.png','marketing2.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (76,76,'marketing.png','marketing3.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (77,77,'marketing.png','marketing4.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (78,78,'marketing.png','marketing5.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (79,79,'marketing.png','marketing6.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (80,80,'marketing.png','marketing7.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (81,81,'marketing.png','marketing8.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (82,82,'marketing.png','marketing9.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (83,83,'gmw.jpg','gmw.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (84,84,'gmw.jpg','gmw1.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (85,85,'gmw.jpg','gmw2.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (86,86,'gmw.jpg','gmw3.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (87,87,'gmw.jpg','gmw4.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (88,88,'gmw.jpg','gmw5.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (89,89,'gmw.jpg','gmw6.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (90,90,'gmw.jpg','gmw7.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (91,91,'gmw.jpg','gmw8.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (92,92,'gmw.jpg','gmw9.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (93,93,'bank.jpg','bank.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (94,94,'bank.jpg','bank1.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (95,95,'bank.jpg','bank2.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (96,96,'bank.jpg','bank3.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (97,97,'bank.jpg','bank4.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (98,98,'bank.jpg','bank5.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (99,99,'bank.jpg','bank6.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (100,100,'bank.jpg','bank7.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (101,101,'bank.jpg','bank8.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (102,102,'bank.jpg','bank9.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (103,103,'eclipse.png','eclipse.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (104,104,'C.png','C.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (105,105,'samsung.jpg','samsung.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (106,106,'LGelect.png','LGelect.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (107,107,'vs.png','vs.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (108,108,'graphic.jpg','graphic.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (109,109,'python.jpg','python.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (110,110,'app.jpg','app.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (111,111,'eclipse.png','eclipse1.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (112,112,'C.png','C1.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (113,113,'samsung.jpg','samsung1.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (114,114,'LGelect.png','LGelect1.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (115,115,'vs.png','vs1.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (116,116,'graphic.jpg','graphic1.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (117,117,'python.jpg','python1.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (118,118,'app.jpg','app1.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (119,119,'eclipse.png','eclipse2.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (120,120,'C.png','C2.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (121,121,'samsung.jpg','samsung2.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (122,122,'LGelect.png','LGelect2.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (123,123,'vs.png','vs2.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (124,124,'graphic.jpg','graphic2.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (125,125,'python.jpg','python2.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (126,126,'app.jpg','app2.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (127,127,'eclipse.png','eclipse3.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (128,128,'C.png','C3.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (129,129,'samsung.jpg','samsung3.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (130,130,'LGelect.png','LGelect3.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (131,131,'vs.png','vs3.png','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (132,132,'graphic.jpg','graphic3.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (133,133,'python.jpg','python3.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (134,134,'app.jpg','app3.jpg','C:\semi_Project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (3,3,'����.jpg','����.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (1,1,'11.jpg','ȿ����.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (2,2,'ȿ����.jpg','ȿ����.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (4,4,'���.jpg','���.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (5,5,'kkang.jpg','kkang.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (21,21,'camera.PNG','camera.PNG','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (22,22,'mona.jpg','mona.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (23,23,'ha.jpg','ha.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (24,24,'magic.jpg','magic.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (25,25,'maaaaaaaaaaaa.jpg','maaaaaaaaaaaa.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (26,26,'latteeee.jpg','latteeee.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (16,150,'re.jpg','re1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/23','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (28,28,'mona.jpg','mona1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (29,29,'ha.jpg','ha1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (30,30,'magic.jpg','magic1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (31,31,'maaaaaaaaaaaa.jpg','maaaaaaaaaaaa1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (32,32,'egg.jpg','egg.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (33,33,'back.jpg','back.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (34,34,'pizza.jpg','pizza.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (35,35,'back.jpg','back1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (36,36,'pizza.jpg','pizza1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (37,37,'pizza.jpg','pizza2.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (38,38,'back.jpg','back2.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (39,39,'egg.jpg','egg1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (40,40,'cheese.jpg','cheese.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (41,41,'cho.jpg','cho.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (42,42,'medi.jpg','medi.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (43,43,'doctor.jpg','doctor.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (44,44,'bang.jpg','bang.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (45,45,'doctor.jpg','doctor1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (46,46,'bang.jpg','bang1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (47,47,'medi.jpg','medi1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (48,48,'fassion.jpg','fassion.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (49,49,'kian.jpg','kian.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (50,50,'kian.jpg','kian1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (51,51,'me.jpg','me.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (52,52,'son.jpg','son.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/21','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (6,6,'people.jpg','people.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (7,6,'re.jpg','re.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),1,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (8,7,'wooooo.jpg','wooooo.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (9,8,'pick.jpg','pick.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (10,9,'fasion.jpg','fasion.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (11,10,'beauty.jpg','beauty.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (12,11,'upup.png','upup.png','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (13,12,'beauty.jpg','beauty4.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (14,13,'beauty.jpg','beauty5.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (15,14,'fasion.jpg','fasion1.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/22','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (17,151,'fasion.jpg','fasion2.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/23','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (18,152,'YS.jpg','YS.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/23','RR/MM/DD'),0,0,'Y');
REM INSERTING into GRADELIST
SET DEFINE OFF;
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (1,'9','test7','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (2,'82','toffg','tmdgns1!','������','19960227','010-111-1222','toffg@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (3,'81','admin1234','123!@#qwe','������','11111111','010-1111-1111','00004@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (4,'80','buy2','1234','��������','19960227','010-3214-6547','wlsgml8989123@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (5,'8','test6','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',5,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (6,'79','buy1','1234','��������','22222222','010-9874-6547','wlsgml898@naver.com',1000000,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (7,'74','admin234','TMDGNS1!','������','11111111','010-1111-1111','toffg645012@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (8,'73','tmdgns','sCUoa6M3g3','������','19960227','010-3658-4731','whfkddk12@naver.com',1111777,to_date('20/06/22','RR/MM/DD'),to_date('20/06/22','RR/MM/DD'),'Y','BRONZE',3,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (9,'7','test5','123!@#qweQWE','������','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (10,'6','test4','123!@#qweQWE','������','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','SILVER',51,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (11,'53','test51','123!@#qweQWE','�׽�Ʈ','55555555','010-123-1111','123@nate.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (12,'52','test50','123!@#qweQWE','������','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (13,'51','test49','123!@#qweQWE','���¾�','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (14,'50','test48','123!@#qweQWE','���׷���','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (15,'5','test3','123!@#qweQWE','������','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','PLATINUM',151,null,'N','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (16,'49','test47','123!@#qweQWE','������','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (17,'48','test46','123!@#qweQWE','�迤��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (18,'47','test45','123!@#qweQWE','�ڻＺ','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (19,'46','test44','123!@#qweQWE','������','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (20,'45','test43','123!@#qweQWE','�輺��','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (21,'44','test42','123!@#qweQWE','������','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (22,'43','test41','123!@#qweQWE','���¾�','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (23,'42','test40','123!@#qweQWE','���׷���','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (24,'41','test39','123!@#qweQWE','������','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (25,'40','test38','123!@#qweQWE','�迤��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (26,'4','test2','123!@#qweQWE','������','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'N','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (27,'39','test37','123!@#qweQWE','�ڻＺ','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (28,'38','test36','123!@#qweQWE','������','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (29,'37','test35','123!@#qweQWE','�輺��','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (30,'36','test34','123!@#qweQWE','������','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (31,'35','test33','123!@#qweQWE','���¾�','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (32,'34','test32','123!@#qweQWE','���׷���','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (33,'33','test31','123!@#qweQWE','������','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (34,'32','test30','123!@#qweQWE','�迤��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (35,'31','test29','123!@#qweQWE','�ڻＺ','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (36,'30','test28','123!@#qweQWE','������','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (37,'3','test1','4BaxO98ca8','������','11111111','010-1111-1111','toffg6450@naver.com',800000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','GOLD',101,null,'N','N');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (38,'29','test27','123!@#qweQWE','�輺��','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (39,'28','test26','123!@#qweQWE','������','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (40,'27','test25','123!@#qweQWE','���׷���','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (41,'26','test24','123!@#qweQWE','������','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (42,'25','test23','123!@#qweQWE','�迤��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (43,'24','test22','123!@#qweQWE','�ڻＺ','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (44,'23','test21','123!@#qweQWE','������','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (45,'22','test20','123!@#qweQWE','�輺��','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (46,'21','test19','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (47,'20','test18','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (48,'2','test','8divKXK3GO','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',270000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','PLATINUM',151,null,'N','N');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (49,'19','test17','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (50,'18','test16','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (51,'17','test15','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (52,'16','test14','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (53,'15','test13','123!@#qweQWE','������','19920101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (54,'14','test12','123!@#qweQWE','���ŷ�','19930809','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (55,'13','test11','123!@#qweQWE','�赿��','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (56,'12','test10','123!@#qweQWE','������','19950228','010-1111-1111','toffg6450@naver.com',480000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',5,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (57,'11','test9','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (58,'10','test8','123!@#qweQWE','�׽�Ʈ','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (59,'1','admin','1234','admin','99999999','01012341344','nullnull',102560000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,'(null)','N','Y');
REM INSERTING into INQUIARYLIST
SET DEFINE OFF;
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (9,193,'N','Y',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (8,192,'�亯�� �޾Ҿ��','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (7,189,'�亯�ޱ�','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (6,187,'�亯�ޱ�','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (5,105,'���մϴ�','Y',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (4,104,'N','N',to_date('20/06/22','RR/MM/DD'),'A3');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (3,103,'N','N',to_date('20/06/22','RR/MM/DD'),'A1');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (2,102,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (1,101,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
REM INSERTING into NOTICELIST
SET DEFINE OFF;
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (41,100,'[����]�ڷγ�19 ��� �������������� ��û�ϼ���!','�ȳ��ϼ���, ��������. ũ���Դϴ�  ?

���뵿�ο����� ���� 6�� 1�Ϻ��� �������������� ������ Ư�����±ٷ������ڸ� �������
''��� ������������''�� �����ϰ� �ֽ��ϴ�.

��� �������Ե��� ������ ��û�� ���� ���Ͽ�, ũ�������� �ʿ� ���� ���� ������Ȯ���ص帮�� �ִµ���.
�ڼ��� ������ �Ʒ��� �ȳ��� ������ �ּ���.

 

 

��? ��û�Ⱓ �� ���
��û �Ⱓ: 2020�� 6�� 1��(��) ~ 7�� 20��(��)

��û���: ����������Ư�����±ٷ�������, ���� �ڿ�����, ���������ٷ���
�� ��������: ��19�� 12�� ~20�� 1��''�� �빫�� �����Ͽ� �ҵ��� �߻��� ��뺸�� �̰�����

��
��? ����(�󼼿��)
����20�� 3~4���� ��� �ҵ�''��, �� ��� �Ⱓ(��19�� �� ��� �ҵ�_19�� 3��, 4��, 12�� / 20�� 1�� �� ����) ����� ���� ���� �̻� ������ ���','1',to_date('20/06/22','RR/MM/DD'),2,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (40,99,'�������� ó����ħ 2020. 03. 02. ver.','��������ó����ħ

 

l ��1��(��Ģ)

��Ÿ�Ӽ���(���� ''ȸ��''��� ��)�� ȸ���� ������ �����ϰ� �����ϰ� �����ϰ� ��ȣ�ϱ� ���Ͽ� �ּ��� ����� ���ϰ� ������ ����������ȣ�� �� ������ ���̵������ �ؼ��մϴ�.

ȸ��� ȸ���� ���������� �ʿ��� ������ ���� �ּ������� �����ϰ� ������ ������ ���� ������ ���� �������� ����ϸ�, ���� ���� ���� �� ������ �ʰ��Ͽ� �̿��ϰų� �ܺο� �������� �ʽ��ϴ�.

�ٸ�, ������ ������ �ǰ��ϰų�, ������ �� ��������� ���� �Ǵ� ������ �������� ���ɿ� ������ ������ ����� ���� ��û�� ��쿡�� ���� ������ ���� �ּ����� ������ ���Ǿ��� ������ �� �ֽ��ϴ�.

ȸ��� ����������ó����ħ���� �����ϰ� �̸� �ؼ��Ͽ� ȸ���� ���������� �̿� �� ��ȣ�� ���� ��ġ�� �˸���, ���ù��Ը� �ؼ��ϰ� �ֽ��ϴ�.

ȸ���� ����������ó����ħ���� ���ù��� �� ��ħ�� ���� �Ǵ� ���� ���ħ�� ���� ������ ���Ͽ� ������ �� �ֽ��ϴ�.

����������ó����ħ���� ����� ��� ��������� �������� �Ǵ� �̸��� ���� ���������� ���� �����ص帳�ϴ�.

������׿� �ǹ��� ������ ��쿡�� ������ ���μ��� �����Ͻðų� Ȩ�������� �湮�Ͽ� Ȯ���Ͻ� �� �ֽ��ϴ�.

�������� ó����ħ�� �̿� ����� �������� ������ ������ ��� �̿����� �켱 ������ �����ϴ�.

 ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (39,98,'�������� ó����ħ 2019. 12. 09. ver.','��������ó����ħ

 

l ��1��(��Ģ)

��Ÿ�Ӽ���(���� ''ȸ��''��� ��)�� ȸ���� ������ �����ϰ� �����ϰ� �����ϰ� ��ȣ�ϱ� ���Ͽ� �ּ��� ����� ���ϰ� ������ ����������ȣ�� �� ������ ���̵������ �ؼ��մϴ�.

ȸ��� ȸ���� ���������� �ʿ��� ������ ���� �ּ������� �����ϰ� ������ ������ ���� ������ ���� �������� ����ϸ�, ���� ���� ���� �� ������ �ʰ��Ͽ� �̿��ϰų� �ܺο� �������� �ʽ��ϴ�.

�ٸ�, ������ ������ �ǰ��ϰų�, ������ �� ��������� ���� �Ǵ� ������ �������� ���ɿ� ������ ������ ����� ���� ��û�� ��쿡�� ���� ������ ���� �ּ����� ������ ���Ǿ��� ������ �� �ֽ��ϴ�.

ȸ��� ����������ó����ħ���� �����ϰ� �̸� �ؼ��Ͽ� ȸ���� ���������� �̿� �� ��ȣ�� ���� ��ġ�� �˸���, ���ù��Ը� �ؼ��ϰ� �ֽ��ϴ�.

ȸ���� ����������ó����ħ���� ���ù��� �� ��ħ�� ���� �Ǵ� ���� ���ħ�� ���� ������ ���Ͽ� ������ �� �ֽ��ϴ�.

����������ó����ħ���� ����� ��� ��������� �������� �Ǵ� �̸��� ���� ���������� ���� �����ص帳�ϴ�.

������׿� �ǹ��� ������ ��쿡�� ������ ���μ��� �����Ͻðų� Ȩ�������� �湮�Ͽ� Ȯ���Ͻ� �� �ֽ��ϴ�.

�������� ó����ħ�� �̿� ����� �������� ������ ������ ��� �̿����� �켱 ������ �����ϴ�.

 
                            ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (38,97,'�������� ó����ħ 2019. 09. 18. ver.','��������ó����ħ

 

l ��1��(��Ģ)

��Ÿ�Ӽ���(���� ''ȸ��''��� ��)�� ȸ���� ������ �����ϰ� �����ϰ� �����ϰ� ��ȣ�ϱ� ���Ͽ� �ּ��� ����� ���ϰ� ������ ����������ȣ�� �� ������ ���̵������ �ؼ��մϴ�.

ȸ��� ȸ���� ���������� �ʿ��� ������ ���� �ּ������� �����ϰ� ������ ������ ���� ������ ���� �������� ����ϸ�, ���� ���� ���� �� ������ �ʰ��Ͽ� �̿��ϰų� �ܺο� �������� �ʽ��ϴ�.

�ٸ�, ������ ������ �ǰ��ϰų�, ������ �� ��������� ���� �Ǵ� ������ �������� ���ɿ� ������ ������ ����� ���� ��û�� ��쿡�� ���� ������ ���� �ּ����� ������ ���Ǿ��� ������ �� �ֽ��ϴ�.

ȸ��� ����������ó����ħ���� �����ϰ� �̸� �ؼ��Ͽ� ȸ���� ���������� �̿� �� ��ȣ�� ���� ��ġ�� �˸���, ���ù��Ը� �ؼ��ϰ� �ֽ��ϴ�.

ȸ���� ����������ó����ħ���� ���ù��� �� ��ħ�� ���� �Ǵ� ���� ���ħ�� ���� ������ ���Ͽ� ������ �� �ֽ��ϴ�.

����������ó����ħ���� ����� ��� ��������� �������� �Ǵ� �̸��� ���� ���������� ���� �����ص帳�ϴ�.

������׿� �ǹ��� ������ ��쿡�� ������ ���μ��� �����Ͻðų� Ȩ�������� �湮�Ͽ� Ȯ���Ͻ� �� �ֽ��ϴ�.

�������� ó����ħ�� �̿� ����� �������� ������ ������ ��� �̿����� �켱 ������ �����ϴ�.

 ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (37,93,'[�Ű��ϱ�] �ҷ� �������� Ÿ�Ӽ����� �Ű��� �� �ֳ���?','�ǰ��� �ŷ���ȭ�� ��ģ�ٰ� �Ǵ��ϴ� ���, �Ƿ����� ���� �ش� �������� ���񽺸� �Ű��� �� ������, ����� �Ʒ��� �����ϴ�.
 
�� �ҷ� ������ �Ű��ϱ�
Ÿ�Ӽ��� ����Ʈ �ϴ��� �����ͷ� �����Ͽ� "���ǵ��" �� ''���ǼҸ�/����''�� �̿�
�� �Ű� �� ���������� ÷�����ֽñ� �ٶ��ϴ�.
 
�� �ŷ���ȭ�� ��ġ�� ����
- ������ ������ ������� ����� ũ�� ���� ���� ���
- ���񽺸� ������ ����, �������� �߰� �۾��� ���� ������ �߰� ������ �䱸�ϴ� ���
- �ܺΰŷ��� �����ϴ� ���(�ܺΰŷ�/�ҹ�ȫ�� �Ű�)
- �ŷ� �߿� ������ ���� �ʴ� ���
- �ŷ� ��뿡 ���� �������� ��� �޽����� �߼��ϴ� ���
 
Ÿ�Ӽ����� �̿��Ͻø鼭 �̿� ���� ������ �ϼ̴ٸ�, ���� ���� �����͸� ���� ������ �ֽñ� �ٶ��ϴ�.
�ִ��� ���� �ð� ���� ������ Ȯ���Ͽ� ���� �帱 �� �ֵ��� ����ϰڽ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),1,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (36,92,'[�ı�] �����ı�� ��� ���⳪��?','�����ı�� ������ ī�װ����� ���񽺸� �����Ͽ�����, �������� jpg/png ������ ���Ϸ� �۾����߼� �ϴ� ��� ����� �� �ֽ��ϴ�.
����Ȯ���� ��¥�κ��� 30�� �̳��� �����ı⸦ ����� ���� �۾����� ���� ''���� ����''�� �����Ͽ� ���� �� �ֽ��ϴ�.

�����ı�� ��� ���� ������ �Ұ��ϸ�, ����(�����)�� �����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (35,91,'[���Լ��װ���] ���Լ��װ����� �ް�ͽ��ϴ�.','�����Ͻ� ��ǰ/���񽺿� ���� ���Լ��װ����� �Ǹ��ڰ� ''���������''�� ��쿡 �����ϸ�, ����� �Ʒ��� �����ϴ�.
 
�� ������������� ��ǰ/���񽺸� �����մϴ�. (���������� ����)
�� ���� �� ȭ�� �ϴ��� ''���ݰ�꼭 �����û''�� �����մϴ�.
�� �ŷ� �Ϸ� �� �� �ŷ��� �ݾ����� ���ݰ�꼭�� ��������� �� �ֽ��ϴ�. (���������� ���ܵ�)
 
�� ���ǻ���
Ÿ�Ӽ��� ���� �� �������� �� �����ݾ׿� �ΰ����� �����Ͽ� ���ݰ�꼭�� �����ؾ� �մϴ�.
�������κ��� �ΰ��� �߰� ������ ��û������ ���. Ÿ�Ӽ��� ������(02-1544-6254/help@timeseller.com)�� �Ű����ֽñ� �ٶ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (34,90,'[����Ȯ��] ����Ȯ�� �Ŀ� �ֹ��� ���/ȯ���� �� �ֳ���?','����Ȯ���� �ش� �ŷ��� �Ϸ��ϰڴٴ� ���� �ǻ�ǥ���� ��������, ����Ȯ�� ���Ŀ��� ��� ��쿡�� �ֹ��� ����Ͻ� �� �����ϴ�.
 
���� ����Ȯ���� ó���� ���Ŀ��� ������� ���� ����/��Ұ� �Ұ����մϴ�.
�׷��� ����Ȯ�� ���Ŀ� ������ ��ǰ/���񽺿� ������ Ȯ�ε� ��쿡�� �Ǹ��ڿ��� ���� ����ó���� ��û�Ͻ� �� �ֽ��ϴ�.
�Ǹ��ڰ� �Ϲ������� ������ ���� �ʴ� ���� ������ ó���� �Ұ��� ��� Ÿ�Ӽ������� �Ǹ��ڿ��� ������ �õ��ϴ� ���� �������� ������ ������ �帱 �� ������, �Ǹ��ڿ� �����ڰ��� ���￡�� �������� �ʽ��ϴ�.
 
�� ����Ȯ�� ���� �߻��Ǵ� �ŷ� ����� ���� ������ Ÿ�Ӽ������� �������� ������, �����ڰ� ���� �ܺ� ���������� �Ҹ� �����Ͻñ� �ٶ��ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (33,89,'[�޴�������] ������ȣ�� ���ŵ��� �ʽ��ϴ�.','�����Ͻ� ��Ż翡�� �����ϴ� �������� �ΰ� ���񽺸� �̿� ���̽� ���, Ư�� �߽Ź�ȣ�� �ڵ����� �������� �з��� �� �ֽ��ϴ�. 
 
�����Ͻ� ��Ż��� �������� ������ ���Թ��� �������� Ȯ�����ּ���. 
Ÿ�Ӽ����� ��ǥ��ȣ 1544-6254�� ���� ��� ����ó�� ��ϵǾ� �ִ��� Ȯ�� ��, �ȳ��� ���� ������ �������ּ���. 
 
   �� ��Ż纰 ���Թ��� ���� ������ �Ʒ��� �����ϴ�.    
 ��Ż�	���ø�Ī 
 SK	T�������͸� 
KT 	 �÷� ��������
 LG	 U+ ��������
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (32,88,'[ȸ������/�ܱ���] �ܱ��ε� ȸ������ �� �� �ֳ���?','�ܱ����� ȸ�������� �����մϴ�.
�ٸ�, ������ ���š��ǸŸ� ���Ͽ� �޴��� ���� ���� ������ �ʿ��մϴ�.

�޴��� ���� ������ �Ұ����� ��쿡 ��ü ���������� ��ϰ� ���� �ʾ� �̿��� �Ұ��� �� ���� ��Ź�帮��, ���� ������ ��Ȱ�ϰ� ������� ���� ��� [�����ڸ���]�� ���� �ܱ��� ��� ���� Ȯ�� �� �޴����� ���� Ȯ���� ��Ź�帳�ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (31,87,'[ȸ��Ż��] ȸ�� Ż�� ����� �ñ��մϴ�.','ȸ�� Ż��� �Ʒ��� ������� �Ͻ� �� �ֽ��ϴ�.
 
  �� Ÿ�Ӽ��� �� > �α��� > ���� ��� �г��� > �������� > ȸ��Ż���ϱ�
    �ظ���� �ۿ����� Ż�� ����� �������� �ʽ��ϴ�.
 
ȸ�� Ż�� �Ͻñ� ��, �ݵ�� �Ʒ��� ���ǻ����� Ȯ�����ֽñ� �ٶ��ϴ�.
   �� Ÿ�Ӽ���ĳ��, �Ǹż��ͱ��� �ִ��� Ȯ�����ּ���.
       �ܿ����� 1���̶� ������ ��� Ż�� ó���� �Ұ����ϴ�, Ż�� �� ���ͱ� ��� �� ĳ�� ȯ���� ��û���ֽñ� �ٶ��ϴ�.
   
   �� ���� ������ ������ ���ϸ����� ����ĳ�ô� ȯ�ҵ��� ������, Ż��� �Բ� �ڵ� �Ҹ�˴ϴ�.
 
   �� ���� ���� �ֹ��̳� �̹߼� ���� �����ִ� ��� Ż���û�� ó������ �ʽ��ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (30,86,'[ID�ߺ�] �̹� ���Ե� �̸��� �ּҶ�� ǥ�õ˴ϴ�.','�����Ͻ� �̸��� �ּҰ� �̹� Ÿ�Ӽ����� ���ԵǾ��ִٴ� �ǹ��Դϴ�. 

������ �̸��� �������δ� �ߺ� ������ �Ұ����ϹǷ�, �Ʒ��� ��ġ�� �غ��� �� �ֽ��ϴ�. 

���̵�/��й�ȣ ã�⸦ ���� ������ ���� ������ Ȯ���Ͻ� �� �α��� ���ּ���. 
ȸ������ �������� �ʾ������� ���Ͱ��� �޼����� ǥ�õ� ��� �ϴ��Ϲ���/�����ϱ⸦ ���� �Ʒ��� ������ Ÿ�Ӽ����� �����ֽø� �ż��� ��ġ�ص帮�ڽ��ϴ�. 
���� �ּ�
������ �Ǹ�
�Ǹ� ������ ������ �޴��� ��ȣ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (29,85,'[�Ƚɹ�ȣ] �Ƚɹ�ȣ�� ���� �˰�ͽ��ϴ�.','�Ƚɹ�ȣ�� �������� ���� ����ó ��� ������ �����ȣ�� �����Ͽ� ���������� ��ȣ�ϰ� ���� ��� �����ϴ� ����Դϴ�.
 
�Ƿ����� �������� �Ƚɹ�ȣ�� ��ȭ�� �ɸ� �������� ���� ����ó�� ����Ǹ�, �Ƚɹ�ȣ ���� �̿뿡 ���� ���� �̿����� �ΰ����� �ʽ��ϴ�.
 
��, �̿� ���̽� ��Ż��� ��� ��å�� ���� �ΰ���ȭ�ᰡ �߻��� �� ������, �ڼ��� ������ �� ��Ż��� Ȩ�������� �������ֽñ� �ٶ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (28,84,'[����Ȯ��] �Ǽ��� ����Ȯ���� ������ �� ��� �ؾ� �ϳ���?','����Ȯ���� �ش� �ŷ��� �Ϸ��ϰڴٴ� ���� �ǻ�ǥ���� �����Դϴ�.
���� ����Ȯ���� ó���� ���Ŀ��� ������� ���� ����/��Ұ� �Ұ����մϴ�.
�Ǽ��� ����Ȯ���� Ŭ���Ͻ� ��쿡�� �Ƿ��ΰ� ������ �� ���� �����Ͽ� �ŷ� ���� �Ǵ� ��� ���θ� �������ֽñ� �ٶ��ϴ�.
 
�� �Ǹ� ������� ȯ�ҵ��� �ʽ��ϴ�.
�� �� ����Ȯ������ ���� ���� �߻� ��Ȳ������ �������� ���ͱ��� �̹� �����Ͽ� �Ϲ������� ������ ���� �ʰų� �ֹ����¸� �������� ���ϴ� ���� ������ �߻��� �� ������, ���� �۾����� �޾ƺ��� ���� ���¿����� ����Ȯ�� ��û�� ��ȣ�� �������ֽñ� �ٶ��ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (27,83,'[�ۼ����] �Ϲ��ı�/�����ı� �ۼ� ���','
������ �ۼ���, �Ϲ��ı�/�����ı�� �ۼ��� �� �ֽ��ϴ�.

�� �Ϲ��ı��? �������� ��ǰ/���񽺸� ������ �Ƿ����� ����Ȯ���� �� �ŷ��ǿ� ���ؼ� �ۼ��ϴ� �ı� ����Դϴ�.

�Ϲ� �ı�� ������ ���ۼ��� �� �� �ֽ��ϴ�.

 

�� �����ı��? �������� ��ǰ/���񽺸� ������ �Ƿ����� ����Ȯ���� �� �ŷ��ǿ� ���ؼ� �̹��� ÷�θ� �Ͽ� �ۼ��ϴ� �ı� ����Դϴ�.

���� �ı�� ������ �̹��� ÷��, ���ۼ��� �� �� �ֽ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (26,82,' [�ֹ� ���] �ֹ��� ����ϰ� �ͽ��ϴ�.','�Ƿ����� ��Ȯ�� �䱸���� �� ���� �ڷḦ �����Ͽ������� �ұ��ϰ� ���� �ٸ� ��ǰ/���񽺸� �����Ͻ� ��쿡�� �ֹ���� ������ �� �� �ֽ��ϴ�.
 
 
�� ��� ��û ���
�ŷ� �� ��Ҵ� �Ʒ��� ������� �Ͻ� �� �ֽ��ϴ�.
 
(PC ����)
- Ÿ�Ӽ��� ���� > �α��� > ���� > ���Ű��� > �ش� �ŷ� ȭ�� ����> ������ ''���/�����ذ�'' Ŭ�� �� ��� ��û
 
(����Ͼ�)
- Ÿ�Ӽ��� ���� > ����Ÿ�Ӽ��� > �������� �ֹ�> �ش� �ŷ� ȭ�� ����> ���� ����� �޴� ��ư Ŭ��> ''���/�����ذ�'' Ŭ�� �� ��� ��û
 
�� �ֹ���Ҵ� �������� �Ƿ��� ���� ��� ���ǰ� ����Ǿ�� �ϸ�, ��Ҹ� ��û���� ���� ��û�� ��Ҹ� �����ϰų� ������ �� �ֽ��ϴ�.
�� ��� ��û�� ���� ������ �ǻ�ǥ�ø� ���� ���� ���, 24�ð� ��� ������ �ڵ����� �ŷ��� ��ҵ˴ϴ�.
�ذŷ� ��� �� ���� �ݾ��� Ÿ�Ӽ���ĳ�÷� ��ȯ�Ǹ�, �ٸ� ������ ���ſ� ����Ͻðų� ������������ ȯ�ҹ����� �� �ֽ��ϴ�.
 ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (25,81,'[��õ¡��] ��õ¡�� ��� ����','Ÿ�Ӽ����� ���������� ��õ¡�� ���� ���� ��ü�� �����մϴ�.

��, �� ��� ���Լ��� ������ ������ ���⿡ ���μ� �Ű�ÿ� "���"���θ� ó�� �����մϴ�.

Ÿ�Ӽ��� ������ ��� ��� [����Ʈ > �α��� > ���� > �������� > ���ݿ����� or ��ǥ��� Ŭ��]���� Ȯ�ΰ����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (24,80,'[���ݰ�꼭] ���ݰ�꼭 ����, ��� ������� �� �ֳ���?','
���ݰ�꼭�� Ÿ�Ӽ����� ����������κ��� ��������� �� �ֽ��ϴ�.
������������ Ÿ�Ӽ��������� �Ƿ��ο��� ���ݰ�꼭�� �������� ������ �̿뿡 �������ֽñ� �ٶ��ϴ�.
 
�� ���ݰ�꼭 ���డ�� ������ ã��
- ���Ÿ� ���ϴ� ī�װ��� ��ǰ ����Ʈ �� �����ũ�� �ִ� �������� Ȯ���մϴ�.
����Ʈ ������ ���� �׸� �� ''���ݰ�꼭 ����''�� üũ�Ͻø� ���� ������ ���������� ��Ƽ� �� �� �ֽ��ϴ�.
 
�� ���ݰ�꼭 ���� ���� ��ǰ�� ���� �� ''���ݰ�꼭 ����'' �׸��� üũ �� ������ �Է��մϴ�.
 
�� Ÿ�Ӽ���ĳ�ø� ������ ��ü �����ݾ׿� ���� ���ݰ�꼭�� ����˴ϴ�. (���������� ���ܵ�)
 
�� ���ݰ�꼭�� ��ȭ�� �뿪�� ���� ������(������)�� ���޹޴� ��(�Ƿ���)���� �������ִ� ���� ��Ģ�Դϴ�.
���� Ÿ�Ӽ������� �߱��ص帮�� ī��/���ݿ������� �ܼ��� ''����''�� ���� �������νḸ ����Ͻ� �� ������, �ΰ���ġ�� ���Լ��� ������ ���� �� �����ϴ�.
 
Ÿ�Ӽ����� ���ڻ�ŷ� �߰�����ڷ�, �ŷ� �÷����� �����ϴ� ������(Ÿ�Ӽ���)�� �÷����� �����޾� �Ǹ��ϴ� ���޹޴���(������)���� �ŷ��� �������� ���������� �����ῡ ���� ���ݰ�꼭�� �����մϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (23,79,'[��������] ��ǰ/���� ���������� �ñ��մϴ�.','
��ǰ/���� ���� �� �Ʒ��� ���������� �̿��Ͻ� �� �ֽ��ϴ�.
 
�� Ÿ�Ӽ���ĳ�� / �ſ�ī�� / �ǽð� ������ü / ������ �Ա� / �޴��� / ���̳��� / ������

','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (22,78,'[�޴�������] ���� Ȥ�� ���� �޴������� �����޾Ƶ� �ǳ���?','
Ÿ�Ӽ��� ������ ��Ȱ�� �̿��� ���� ������ ������ ������ �Ǹ������� �����Ͻñ� �����ص帳�ϴ�. 
 
Ư�� ���񽺸� �Ǹ��Ͻô� �������� ���, ������ ������ ���ʷ� ���ڼ��ݰ�꼭�� ����ǹǷ� �ݵ�� ���� ���Ƿ� ������ ���ּž� �մϴ�. 
 
Ÿ���� ������ �Ǹ������� �Ͻ� ���, �������� �߻��Ǵ��� ���� �������� �����Ͻ� �� ������ ��� ȯ�� �� ������ ������ ���� ���� Ȥ�� ���� ���� ��û�� �Ǹ������� ���� �����ڿ��� ��û�˴ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (21,77,'[�Ƚɹ�ȣ] �Ƚɹ�ȣ�� ���� �˰�ͽ��ϴ�.','�Ƚɹ�ȣ�� �������� ���� ����ó ��� ������ �����ȣ�� �����Ͽ� ���������� ��ȣ�ϰ� ���� ��� �����ϴ� ����Դϴ�.
 
�Ƿ����� �������� �Ƚɹ�ȣ�� ��ȭ�� �ɸ� �������� ���� ����ó�� ����Ǹ�, �Ƚɹ�ȣ ���� �̿뿡 ���� ���� �̿����� �ΰ����� �ʽ��ϴ�.
 
��, �̿� ���̽� ��Ż��� ��� ��å�� ���� �ΰ���ȭ�ᰡ �߻��� �� ������, �ڼ��� ������ �� ��Ż��� Ȩ�������� �������ֽñ� �ٶ��ϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (20,76,'[��������] ���� �� ID �Ǵ� �г����� ������ �� �ֳ���?','
ȸ�� ���� �� ����Ͻ� ID(�̸���)�� ���� ���Ŀ��� �����Ͻ� �� ������ �г����� ���� �� 1ȸ�� ���� ������ �����մϴ�.
 
�ε����� ������ ID �Ǵ� �г����� �߰� ������ �ʿ��Ͻ� ���, �Ʒ� ������ ���� �Ͻþ� �����ͷ� �̸���(help@timeseller.com)�� �����ּ���.
 
�� ���� �̿����� ID(�̸���) �Ǵ� �г���
 
�� �����ϰ��� �ϴ� ID(�̸���) �Ǵ� �г���
 
�� ���� : 
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (19,75,'[ȸ������] ���� �� ������ �ȵſ�.','������ �Ͻ� ��� �Ǹ�Ȯ�� ��ϱ���� �����Ͻ� �������� �Ǹ����� ��� ���Ӱ� ���ּž� �մϴ�.

[�Ǹ�Ȯ�� ��ϱ���ȳ�]

- �ڸ���ũ�������(KCB) �� �ٷΰ���   / �� ������: 02-708-1000
- SIREN24 �� �ٷΰ���


����� ���� ����� �Ǹ� ������ ����Ͻ� ���, ���� �ð��� �ҿ�� �� �ִ� �� �������ֽñ⸦ �ٶ��ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (18,74,'[����/����] ���񽺸� �Ǹ��ϰ� �ͽ��ϴ�.','
�� 14�� �̻��̸� ������ Ÿ�Ӽ����� �������� Ȱ���Ͻ� �� �ֽ��ϴ�. 
������ȸ���� ������ ���������� ���� ��ȯ�Ͻ� �� �ֽ��ϴ�. 
 
[ �α��� > ����Ÿ�Ӽ��� > ��������> �������� > �޴������� + ������ ���� ] ���ֽø� �˴ϴ�.
 
������ ���� ��, ������� ��� ����ڵ����, ����纻 ÷�����ּž� ���ΰ����մϴ�.
���� �������� ���, ���� �ֹε�Ϲ�ȣ �������ֽø� �˴ϴ�.
 
������ȸ������ ��ȯ ��, �Ǹ��Ͻ� ���񽺸� ��� ���ּ���. 
[�α��� > ������ ��� > ���� ����ϱ�]�� ���� ���񽺸� ����Ͻ� �� �ֽ��ϴ�. 
������ ��� �޴����� ''������ ����''�� ���� ���������� ������ ������ ���� �����Ͻø� ���� �����ϴ�. 
 
����Ͻ� ���񽺴� ī�װ��� �ɻ� ������ ���� ���εǸ� ���ε� ���񽺷� �Ǹ��Ͻ� �� �ֽ��ϴ�. 
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (17,73,'[��������] ���������� �����ϰ� ��ȣ�ǳ���?','Ÿ�Ӽ����� �̿����� ���� ���� �� ������ �ŷ��� ���� �ּ��� ���մϴ�. 
 
Ÿ�Ӽ��� �� ����Ʈ�� ���������� �ԷµǴ� ��� ������ SSL(Secure Sockets Layer)�� ����Ǿ��ֽ��ϴ�. 
 
SSL�� �������� ���� ���� ��� �� ������ ��ȣȭ�Ͽ� �����ϰ� ������ �ְ� ���� �� �ֵ��� ���ִ� ��ȣȭ ��� ���������Դϴ�. 
 
SSL�� ����� �������� �� ������ ��ܿ� �ڹ��� ����� �������� ��Ÿ����, �ش� �������� URL�� https�� ǥ�õ˴ϴ�.  
 
�� ������ ����� �ڹ��� ����� �����ܰ� https�� ���۵Ǵ� URL�� ȸ������ ������ �����ϰ� ���޵ǰ� ������ �ǹ��մϴ�. ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (16,72,'[����/����] Ÿ�Ӽ����� �����ϰ� �ͽ��ϴ�.','���� ���Ǵ� Ÿ�Ӽ��� ���� �ϴ��� �ϴ��� ���� �Ǵ� �������� �����ϱ⸦ �̿��Ͻ� �� �ֽ��ϴ�. 
��������� ''����''�� �����Ͻ� �� ���Ǹ� ������ֽø� ����ڰ� Ȯ�� �� �����帳�ϴ�. (������ ���� 3�� �̳�)','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (15,71,'[�Ұ�] Ÿ�Ӽ����� � �����ΰ���?','Ÿ�Ӽ����� �� �о��� �������� �����ϴ� ���񽺿� ��ǰ�� �ŷ��� �� �ִ� �������� �����Դϴ�.
���� ��Ŀ� ���� ''����'' ''���� ����'' ''������������'' ���񽺸� �����Ͽ� �̿��Ͻ� �� �ֽ��ϴ�.


  �� Ÿ�Ӽ��� ���� 

      ���񽺿� ��ǰ�� ���� ������ ������ �� �ִ� �������� �����Դϴ�.
      Ÿ�Ӽ����� ���ذ� �������� �򰡸� �������� ������ Prime ���񽺵� �̿��غ�����.   

      �� Ÿ�Ӽ��� ���� �ٷΰ���

 

  �� ���� ����

      ȸ������ ã���ô� ���񽺿� ���� ��������  ''���� ��û''�� �� �ִ� �����Դϴ�.         
      �䱸���׿� �� �´� ���������� ''���� ����''�� �޾� �ŷ��� �����غ�����.

      �� ���� ���� �ٷΰ���

 

  �� ������������

      ��� ȸ���� ������� �� ����, �ƿ��ҽ� �����Դϴ�.
      ������/������ Ž������ �ŷ� ���� ���� Ÿ�Ӽ������� ���� �����ص帳�ϴ�. 

      �� ������������ �ٷΰ���

 
�ڼ��� ������ �� ������ �Ұ� ���������� Ȯ���Ͻ� �� �ֽ��ϴ�. ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (14,70,'[����] 5�� ������ � �� ���� �޹� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

2020�� 5��, Ÿ�Ӽ����� �޹� ������ �̸� �ȳ��帮�� �̿뿡 ���� �����ñ⸦ �ٶ��ϴ�.


  

? 5�� �޹��� �ȳ�   ��
 -5�� 1��(��) �ٷ����� ��
 -5�� 5��(ȭ) ��̳�

 

? ������ �̿� �ȳ�
���޹��Ͽ��� �����͸� ����� �ʽ��ϴ�.
���ñ��Ͻ� ������ �� �Խñ� �ϴ��� [�����ϱ�] ����� ���� ������ �ּ���. 
������ �簳 �� ���������� �亯�帮�ڽ��ϴ�.

 

? ���ͱ� ��� �� ȯ�� ���� �ȳ�
���޹��Ͽ��� ���ͱ� ��� �� ȯ�� ��û�� �����Ͻ� �� �ֽ��ϴ�. 
���ٸ�, �޹��Ͽ� ��û�Ͻ� ���� ���� �簳 �� ���������� ó���ص帮�ڽ��ϴ�.


 

�ٻ�ٳ��ߴ� ���������� ����޴� ������ 5���� �����ñ� �ٶ��,

��� ȸ���Ե��� ������ �� �ູ�ϰ� ���� ��ġ�ñ⸦ �ٶ��ϴ� ��

�����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (13,69,'[����] ����������� ���ֵ�, Ÿ�Ӽ������� �����մϴ�!','�ȳ��ϼ���! Ÿ�Ӽ����Դϴ�.

����������� ���ֵ�, Ÿ�Ӽ������� �����Ͻ� �� �ֽ��ϴ� ?

����������� ���ֿ뿪�� Ÿ�Ӽ��� �÷������� ����ϱ⿡ ��������?
2020����� Ÿ�Ӽ����� ����������� �������� ���� ���� ���ϰ� ���ֿ뿪�� ����Ͻ� �� �ֽ��ϴ�.

�Ƿ��ΰ� (��)Ÿ�Ӽ����� ���� �� ���, (��)Ÿ�Ӽ��� ���ݰ�꼭 ���� ��
������������� ������ ���߾� ������ ��������� ���Ͻ� �� �ֽ��ϴ�.


?? ����������� ���� �Ŵ����� ������

     - IT����, ��������, ����ǰ����, ������, ������ �� ��� ���񽺸� one-stop ����
 
?? ���� ����� �䱸 ���׿� �´� ���/���� ��� ����

     - ���ݰ�꼭 �߱�, ��༭ �ۼ� �� �������� ����
     - �ϳ��� ��࿡ ���� �о��� ������ ���� ����
     - (��ȿ� ����) ���� ���� �پ��� ������� ����
 
?? ��� ü�� �� ������ ���� ������ �ܰ���� ���� �Ŵ����� ��� Ŀ�´����̼� ����
 
?? ���� ����Ƽ�� �����̾� ���� ���� ����
 
 
�ŷ� �� �Ʒ� ���̵带 Ȯ���Ͻ� �� Ÿ�Ӽ����� ����������� ���� �Ŵ������� �� ���� �ּ���!
 
 
? ����������� ���� ����
    2020��, �߼Һ�ó����� �� 16�� ��ó �Ұ����� 90���� ��� ����
    �� ����(�̹���)_43�� �ι� �ֿ� ��� ����      
    �� â��������� �̿ܿ��� �پ��� ��������������� ���ֿ뿪�� �����ϰ� �ֽ��ϴ�.
 

�� �о�̳���?

Ÿ�Ӽ����� ���� ���������� ����Ͻ� �Ͻñ⸦ �ٶ��,

�ñ��� ������ �ִٸ� �������� ���� �Ŵ������� �������ּ���.

�����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (12,67,'[����] ������ � �ð� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.
Ÿ�Ӽ��� �������� � �ð��� ���� �ȳ��ص帳�ϴ�.

��Ȱ�� ���� �̿��� ���� � �ð��� Ȯ�����ֽñ� �ٶ��ϴ�.

 

 

? ������ ��ð�
  -���� 10:30~18:00
 

? ������ �̿�ð�
  -�ſ� ù° �� ������ 14:00~18:00 

 

������ �̿ �ð� �� ���� ������ [1:1����] ä���� ���� �������ֽø�, ���������� �亯�帮�ڽ��ϴ�.

�׻� ���������� ���񽺸� �����ص帮�� ���� ����ϰڽ��ϴ�.

�����մϴ�. ','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (11,66,'[����]�����ı� �ۼ��� ���� �ȳ�','
�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

�����ı� ���å�� �Ʒ��� ���� ����� �����Դϴ�.
���� ������ Ȯ���Ͻþ� ���� �̿뿡 ���� �����ñ⸦ �ٶ��ϴ�.

 

�Ӻ��� �Ͻ�: 2019�� 11�� 27��(��)

 

�Ӻ��� ����


     ? ���� 
       - �ۼ�����: ����Ȯ�� �ֹ� ���̸� �Ⱓ ���� ���� �����ı� �ۼ� ����
       - ��������: �ۼ��Ͻ� �������� 7�� �̳� ���� �����ϸ�, Ƚ�� ���� ����
   
     ? ���� �� 
       - �ۼ�����: ����Ȯ��(�ŷ� �Ϸ�) �Ͻø� �������� 30�� �̳����� �ۼ� ����
       - ��������: �ۼ��Ͻ� �������� 7�� �̳� ���� �����ϸ�, 1ȸ�� ���� ����
       - ��������: �ۼ��� ȸ�� ������ ���� ������ ��û�ϴ� ������ ����, ���ۼ� �Ұ�


�ŷڵ� ���� �ŷ���ȭ�� ������ ���� ������� �������ֽñ⸦ �ٶ��,
�ۼ����� ���� �����ıⰡ �ִٸ� ������ ���� �̸� �ۼ����ֽ� ���� �ȳ��ص帳�ϴ�.

����� ���� ���񽺸� �����ϱ� ���� ����ϴ� Ÿ�Ӽ����� �ǰڽ��ϴ�.

�����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (10,65,'[����] Ÿ�Ӽ��� ���� ���� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

�������� ������ŭ Ÿ�Ӽ����� �Բ� ���������� ����Ͻ� �ϰ� ��Ű���?

 

�ٰ����� 6�� 15��(��)����, Ÿ�Ӽ����� ���� ������ ����� �����Դϴ�.

���� �ð� ���� ����Ʈ �̿��� �Ұ��� �� �̸� ���ظ� ��Ź �帮��, �Ʒ� �ȳ��� �������ּ���.

 

�ӻ���Ʈ ���� �ð� �ȳ�

- ����: 2020�� 6�� 15�� (��)

- �ð�: ���� 8�� ~ 9��(�� 1�ð�)

 

�� ���������� ���񽺸� �����ص帱 �� �ֵ��� �Ĳ��� �����ϰ� ���ƿ��ڽ��ϴ�.

�����մϴ� :D
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (9,64,'[����]â�� ���� ���� �ŷ� ���ǻ���','
�ȳ��ϼ���. ������ ������ ����, Ÿ�Ӽ����Դϴ�! ��

â�� ������ Ȱ�������� ���ο� ���̵����� ������� ����,
ȸ���Ե鲲���� ''â��'', ''��� ��ȹ''�� ���� ������ ������ �����?
Ÿ�Ӽ��������� �پ��� â�� ���� ���񽺸� �ŷ��Ͻ� �� �ִµ���, 
���� �����ϰ� �������� ����Ͻ��� ���Ͽ� �ŷ� ���� ���� ������ �ݵ�� Ȯ�����ּ��� :D

 
�� ���� ���� 


01. ������ ���� ���� Ȯ��

 ''â��'', ''��� ��ȹ''�� ���õ�  ���񽺸� �����ϴ� ȸ���Ե鲲����, Ÿ�Ӽ������� ���� ������ ������ ������ ''����''�� �ƴ� ''÷�� �� ����'' �� ''������''�̶�� �Ϳ� �������ֽñ� �ٶ��ϴ�. 
  Ư�� ''�����������''�� �����ϴ� ������ ���� ���� ������ ������� �ۼ��ϰų� �̸� ���� �������� ������ ���, ���� ����(������ ������ ���� ����)�� ���� ó���� �� �ֽ��ϴ�. 
 �ҹ̽����� ������ �߻����� �ʵ���, �ŷ� �� ��� ������ ���� Ȯ�����ּ��� :D



Ÿ�Ӽ������� �����ϰ� �ŷڵ� �ִ� �ŷ� ȯ�� ������ ���Ͽ�
���� ���� �� ��ȸ ��信 ���ݵ� �� �ִ� �ŷ� Ȱ���� �����ϰ� �ֽ��ϴ�. 
ȸ������ ����Ͻ��� �� �������̱⸦ �ٶ�� �������� �������ֽñ� �ٶ��ϴ�.
 Ÿ�Ӽ����� �� �����ϰڽ��ϴ� ! �����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (8,61,'[����](Ÿ�Ӽ����������� ����) TimeSeller+influencer=Tinfluencer','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�:D
Ÿ�Ӽ������� ���� Ư���� ü����� �����մϴ�!Ÿ�Ӽ����� ���񽺸� �����ϰ�
��α�&�ν�Ÿ�׷� � ���� ������ �����ֽ� ũ�������͸� �����մϴ�. ^0^  

�ڼ��� ������ �ϴ� �̹����� �������ּ���!
�Բ��ؿ�, ���÷��!!


-�����Ⱓ �� �ο�: ~2018.5.29 / ��10�� (2020.7.31 ������ǥ) 
-��û����: ��α� �� �湮�� 2000�� �̻�   
-��û���: �ϴ� ���� ���� �ۼ����ּ���:D

 
 
�����ǽ� �е鲲�� ���� ������ �帳�ϴ� :) 


                            ','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (7,60,'[����] �������� ���� ����Ʈ �� �ǸŰ��� ������ ���� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�:)

������ Ÿ�Ӽ��� �� ���񽺸� �Ǹ� ���� �������� ���� 

3���� ��ҽ��� ���ص帮���� �մϴ� !

 

 

�ϳ�, ���������� �Ǹ� ���ϸ����� �帳�ϴ�. 

  - ���� ��Ī: ������ ���ϸ���

  - ���� ����: �Ƿ����� ����Ȯ�� ����

  - ���� ����: ���� �Ǹ� �ݾ��� 5%

                 (���� ������ ���� ���� ����, 12.8 (��) ���� 2�� ���� ���۵� �ŷ� �Ǻ��� ���ϸ��� ����)

  - ���ó: Ÿ�Ӽ��� �� �������� ���� ��ǰ (�÷��� ����, �����̾� ����) ���� 

  - ��ȿ�Ⱓ: �������� �������� 1���̸�, ���� ȯ�� �Ǵ� ���� ������ �Ұ����մϴ�.

 

 

��, �ǸŰ��� �������� �� �� �� ���ϰ� �پ������ϴ�. 

  - �ǸŰ��� / ���Ͱ��� / �����ݰ��� / ���� ���� ���� �� ...�پ��� �������� ��� ��ҽ��ϴ�.

 

 

��, �ű� ���������� ���ϸ��� 50,000���� �帳�ϴ�.

  - Ÿ�Ӽ��� ����Ʈ���� ù ���񽺸� ����� �ű� ���������� 50,000���� ������ ���ϸ����� �����ص帳�ϴ�.

     (���� �Ǹ� ����� �̷��� �ִ� �������� �ش���� �ʽ��ϴ�.)

  - ���޵� 50,000���� ����, �������� Ÿ�Ӽ����� �������� ���� ��ǰ���� ������ �� ������ ���ϸ����� ��ȿ�Ⱓ�� 1���Դϴ�.

  - ���� ����� PC������ �����մϴ�.

  - �ش� ���θ���� �ܱ⼺ �̺�Ʈ�ν�, ��������ǰų� ���ϸ��� ���� �ݾ��� ������ �� �ֽ��ϴ�.

 

���� �ǸŰ����� ������ �״�� �����ϰ�, �������� ������ �̹� ����

���� ���� ���� ��Ź�帮�ڽ��ϴ�:)','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (6,59,'[����] ���� ���� �۾����� ���� �̿� ���� ����','2020�� 7�� 2��,  ���ο� ��ȭ�� �ٶ��� �ִϴ� !

���� ������ Ÿ�Ӽ����� ���� �غ� �۾�����,

2020�� 7�� 1�� 22:30 ~ 7�� 2�� 02:00 Ÿ�Ӽ��� �̿��� ���� ��� ���ѵ˴ϴ�.



������ �ٲ�� ?

 

[����������]
Ÿ�Ӽ��������� ��� Ȱ�� �� �������� �� ���� Ȯ���� �� �ֽ��ϴ�.

 

[������]

���� �پ��� �������� �����մϴ�.

 

[�Ǹ�/����]

�� ��Ȳ ���� �ʿ��� ��ư�鸸 ��� �����־�, ���� ������ ���� �ŷ��� �����մϴ�.
���� - �������� ���� > �Ǹ����� �ֹ����� > �ŷ�����
  ���� - �������� ���� > �ŷ����� (�������� ������ ���۵Ǹ�, ��� �ŷ��� ���۵˴ϴ�.)
 

-----------------------------------------------------------------------------------

 

[��Ī]

2020�� 7�� 2�Ϻ���, ��/������ ��ü�� �������� �Ƿ������� �ٲ�ϴ�.

�������� �Ƿ����� ������ų����� ������� �� �ŷ��� ����մϴ�.

 

[�׸��� ��]

�̿ܿ��� ���� �κе��� ���׷��̵� �� Ÿ�Ӽ���, ���ǽó��� ?

�� ���ο��� Ÿ�Ӽ����� ����,

2020�� 7�� 1�� 22:30 ~ 7�� 2�� 02:00 ��ø� ��ٷ��ּ��� !

','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (5,58,'[����] ��ɵ�� ������ �������� �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

���� ���������� ���� ���� �帱 ������ Ÿ�Ӽ��� ��� Ŭ�� ��å ���࿡ ���� �ȳ��Դϴ�.

 

1. ī�װ� ����ȭ �۾�

 

���Ӱ� ī�װ����� �����Ǿ� ���� ��ɵ鿡 ���� ��ȭ�۾��� ���������� ����ǰ� �ֽ��ϴ�.
�Ǹ��� �е��� ��� ȸ���Ե��� ����� ���� �Ͻþ� ����� ��ǰȭ�Ͽ� �ֽð� ���ο� ī�װ��� �°� �籸�� ��Ź�帳�ϴ�.

 

ī�װ� ��������

 

-  1�� ī�װ��� �ߺ� ��� �ǸźҰ�
-  ���� ī�װ��� ���� ��� �ǸŰ���
-  1�� ī�װ��� �ٸ� ��� �Ǹ� ����(�ܼ� ���� ���� ��� �ش����)
-  ���� ī�װ��� ���� ������ ����� �ϳ��� ���� �Ұ�

 

 

 2. ����� Ÿ�Ӽ����� ���

 

���Ŭ����å�� ȿ�������� ��ϱ� ���Ͽ� ����͸� ������ ī�װ��� �°� ����� ���� ã�Ƶ帮�� ������

��� ���κμ��� �����Ͽ� ������ �ʿ��� ��ɵ鿡 ���Ͽ� ���̵� �ȳ� �۾��� ���� �ϰ� �ֽ��ϴ�. 

���� ȸ���Ե��� ���ع����� ���Ͽ�

��� ä���� �����Ͽ� ������ Ÿ�Ӽ����� ����� ���Ͽ� �δ� ũ�� �߰� û���ϰ� �ִ�ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (4,57,'[����]�� 1ȸ Ÿ�Ӽ��� ���� �����մϴ�.','
���ص� ������ ���ƿ� ����!

Ÿ�Ӽ����������� ������ ���ƿ� ������ ����

 

�� ���ص� ������ ��ɽ��� Ȯ�忡 �⿩���ֽ�

��� ����κе��� ���� ���� �غ��߽��ϴ�



 ���ش� �۳⺸�� �����ںе��� ���ϱⰡ �� ������µ���

�� ������ ��� ���� �������� ������ ���� �� �ڿ�

���� �ĺ��ںе鿡�� �����ֺ��� ������ �帮�� �ִ�ϴ�.

 

�ƽ��Ե� �̹� �� 1ȸ ������ ��û ������ �и� ������ ���� �Ͻŵ���

�̹��� ���� �ƽ��� Ÿ�Ӽ�������� �ĺ���

������ ���ϼ����� Ÿ�Ӽ������� �� ����

����Ǹſ� �����ֽ� ��� �е鲲 ������ ������ ���մϴ�.

 
 ���� ������ �̷� 3��

 
�� �̻��� �̷�� ���� �� ���� ȹ������ ����Ʈ ���忡  �� ���� ���� ��� �帮�ڽ��ϴ� !
�����մϴ�.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (3,56,'[����] ���۱� ���� ���� �� �ȳ�����','
�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�!

���� �߿��ٰ� �� �߿��ٰ��� �ݺ��ϰ� �ִ� ������ ������ ã�ƿԽ��ϴ�.

���п� ���⵵ ���� �ɸ��� ���� ���⵵ �������ϰ� �ֽ��ϴ�.

 

���� ��&�����ڴԵ��� �߿��� �κ������� ��ġ�� ��� �е��� ���� ������ �����Ǿ� �̷��� ������ ���� ���޵帳�ϴ�.

���� �帱 ������ �ٷ� ���۱� ���� �����Դϴ�.

 

�Ǹ��ڴԲ����� ��� �Ǹſ� ���õ� ���� �� ���۱ǹ��� ���˵Ǵ� ������ ���� ��� �ش� �Ǹ��� �ݵ�� �����Ͻð�

��� �۾��� ���ּž� ������ �߻����� �ʽ��ϴ�.( ��ü ���̼��� or �̹��� ���̼��� ��)

 

���� ��ɰŷ��ÿ� ���۱ǹ� ���� ������ �߻��Ǿ� �Ҽ۱��� ���� ��찡 �߻����� �ʵ���

�Ǹ��ڴ԰� �����ڴ� ��� ��� ''���۱�''�� �� Ȯ�����ּ���!!!!!!!!

Ư�� �����ڴԵ鲲���� �����ϴ� ����� �����, ������ �� ��� �뵵�� Ȱ���� ���ΰ��� ����

�ش� �Ǹ��ڴԿ��� �� ���Ǹ� ���ּž� �մϴ�!

 

 

���۱� ħ�ذ� �����ɸ��� ������ ���� �� ���� üũ���ֽñ� �ٶ�� ��ȣ ���� �ŷ��� �����ϰ� �̷���� �� �ֱ⸦ �ٶ��ϴ�.

�߿��� ������ ���� �ɸ��� �ʵ��� �����ϼ���!','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (2,54,'[����] īī���� Ÿ�Ӽ��� ��ģ �߰����!','
�ȳ��ϼ���, Ÿ�Ӽ����Դϴ�.

�� ���� īī������ ������Ʈ�� �����ϸ鼭

�÷���ģ���� �˻��� �� �ִ� ī�װ��� ä�η� ����Ǿ����ϴ�.

�̿� ���� ���� �е��� �÷���ģ������ Ÿ�Ӽ����� ã�� �� ���ٴ� ���Ǹ� ���� ���ְ� ��ŵ���,

�̹� ���������� ���� �˻��ϴ� ����� �˷��帮�ڽ��ϴ�. 
 �Ʒ��� �̹����� ������ �������ּ���.



1. ȭ��ǥ�� ����Ű�� �ִ� ���� Ŭ���Ѵ�.

 
2. �Ʒ��� ȭ���� ��Ÿ���� Ÿ�Ӽ��� Ȥ�� @Ÿ�Ӽ����� �˻��Ѵ�.


3. ģ�� �߰� ��ư�� ������.



���� �̹� ģ�� �߰��� �� ���¶� ��ư�� ������ �ȵǴµ���,

����� ����� ����ִ� ��ư�� �����ø� ģ�� �߰��� �˴ϴ�!

 

�� 3�ܰ踦 ��ġ�� �Ϸ�Ǵ� Ÿ�Ӽ��� ģ�� �߰��ϱ�, �� ����?

 

�����ε� Ÿ�Ӽ��� �÷���ģ���� Ÿ�Ӽ��� ��� �ֿ����ּ���!

�����մϴ�!

 ��....��...�ƴ� �����մϴ�!','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (1,53,'[����]Ÿ�Ӽ��� �� �ҹ� ȫ���޽��� ���� ����� �� �ļ� ��ġ �ȳ�','�ȳ��ϼ���, Ÿ�Ӽ������Դϴ�.

 

Ÿ�Ӽ����� �̿����ֽð� ������ֽô� �е鿡�� �ҹ̽����� ���� �Ͼ��

�̿� ���� ������� �ø����� ���������� �ۼ��ϰ� �Ǿ����ϴ�.

 

�ֱ� Ÿ�Ӽ����� ���� �������Ʈ�� ȫ���� �޽����� ���Ͽ�

���� ȸ���е��� ���ظ� �����̰� �̿� �����ͷ� ���� ���ؽŰ� �����Ǿ����ϴ�.

�̿� ���� �ļ���ġ�� �ش� IP�� ����, ���� ����� Ÿ�Ӽ��� �̿��� �������� �Ǿ����� �˷��帳�ϴ�.

 

 

 �ش� ID

 

Jande / Angelguy1 / kwgno1 / aosxktmno2 / kyt9011

rlaalstjrno1 / rlaalstjrno2

 

����: �ҹ� �ڻ� ����Ʈ ȫ��

 

���� �������� ����͸��� ���Ͽ� ���ŷ� ���� Ȥ�� ȫ���� �޽��� �߼۰� �����Ͽ�

�� �����ʹ� ���ظ� �Դ� ȸ���� ������ �ʵ��� �Ұ����ϰ� �̿����� ���� �г�Ƽ�� ����� �����Դϴ�.

 

��� ȸ���Ե��� ��� �پ��� ���θ���� ����

���� ������ �帱 �� �ֵ��� ����ϴ� Ÿ�Ӽ����� �ǰڽ��ϴ�.

Ÿ�Ӽ����� �ٶ�ô� ���� �����ôٸ� ������ Ȩ������(www.timeseller.com) �ϴ��� �����ͷ� ���� ��Ź�帮��

�ҹ̽����� �� ���� ���� �����ϴ� Ÿ�Ӽ����� �ǰڽ��ϴ�.

 

���� �̿� ��Ź�帳�ϴ�.
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
REM INSERTING into REPORTLIST
SET DEFINE OFF;
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (1,194,'N','N',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (2,190,'N','N',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (3,188,'��������','Y',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (4,186,'������','Y',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (5,185,'asdf','Y',to_date('20/06/23','RR/MM/DD'),1234,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (6,183,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (7,182,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B2');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (8,181,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (9,180,null,'Y',to_date('20/06/23','RR/MM/DD'),0,'B2');
REM INSERTING into REVIEWLIST
SET DEFINE OFF;
REM INSERTING into SERVICE_BUY_LIST
SET DEFINE OFF;
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('���.jpg','��ŵ� �������� �� �� �ֽ��ϴ�. ',to_date('20/06/22','RR/MM/DD'),'������','010-1111-1111',4,'1','�� ���� ���̾�',5,300000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('fasion1.jpg','�Խñ� ��ϵǳ�',to_date('20/06/22','RR/MM/DD'),'������','010-3658-4731',14,'1','�� ���̾�',3,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('son.jpg','���� ������� �ɼ��ִ� �����౸15���̻� �����԰� �౸���� �帳�ϴ�.',to_date('20/06/22','RR/MM/DD'),'�׽�Ʈ','010-1111-1111',52,'1','�׽�Ʈ��',5,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up3.jpg','â���� ���ʸ� �˷��帳�ϴ�',to_date('20/06/23','RR/MM/DD'),'������','010-1111-1111',66,'1','������������',5,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('fasion2.jpg','��Ű� ��',to_date('20/06/23','RR/MM/DD'),'�Ǹ���','010-9874-9874',151,'80','���� �����Ѱž�',4,100000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('YS.jpg','�ڹ� �������ϰ��ص帳�ϴ�. ',null,'������','010-1111-1111',152,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('re1.jpg','��ʹ��',to_date('20/06/23','RR/MM/DD'),'�Ǹ���','010-9874-9874',150,'79',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('beauty5.jpg','�������',to_date('20/06/22','RR/MM/DD'),'������','010-3658-4731',13,'0',null,null,1111777);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('beauty4.jpg','�������',to_date('20/06/22','RR/MM/DD'),'������','010-3658-4731',12,'0',null,null,1111777);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('upup.png','�мǰ��� ����ñ����� �ذ��� �帳�ϴ�.',null,'�׽�Ʈ','010-1111-1111',11,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('beauty.jpg','��Ƽ �̹��� ������ : ���, ����ũ�� ������ �� �帳�ϴ�.',null,'�׽�Ʈ','010-1111-1111',10,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('fasion.jpg','�˾Ƶθ� ���� �мǵ����� �Թ��ڸ� ���� ���������� �˷� �帳�ϴ�.',null,'�׽�Ʈ','010-1111-1111',9,'0',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('pick.jpg','������ ���, ���, ��۽�ƿ �Կ��� �帳�ϴ�.',null,'�׽�Ʈ','010-1111-1111',8,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('wooooo.jpg','����� ��Ʈó�� �ǰ�����ôٸ� Ŭ���ϼ���',null,'�׽�Ʈ','010-1111-1111',7,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('people.jpg','��Ʃ�� ��������ġ�� �ø��ȷ����� �˷� �帳�ϴ�.',to_date('20/06/23','RR/MM/DD'),'�׽�Ʈ','010-1111-1111',6,'1',null,null,100000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('me.jpg','����� �ϻ��� �޽÷� �����帳�ϴ�. ',null,'������','010-1111-1111',51,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('kian1.jpg','�мǼ����� ��� 84�� �е鲲',null,'������','010-1111-1111',50,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('kian.jpg','�мǼ����� ��� 84�� �е鲲',null,'������','010-1111-1111',49,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('fassion.jpg','��2�� �ӵ巹���� �޲ٴ� �е鿡�� ',null,'������','010-1111-1111',48,'0',null,null,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('medi1.jpg','��簡 �Ǳ������ ����',null,'������','010-1111-1111',47,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bang1.jpg','��缱�翡 ���� �ñ��Ͻ� ���е�',null,'������','010-1111-1111',46,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('doctor1.jpg','�ǻ簡 �ñ��Ͻ� ���в�',null,'������','010-1111-1111',45,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bang.jpg','��缱�翡 ���� �ñ��Ͻ� ���е�',null,'������','010-1111-1111',44,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('doctor.jpg','�ǻ簡 �ñ��Ͻ� ��� �е鿡��',null,'������','010-1111-1111',43,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('medi.jpg','��簡 �Ǳ������ ����',null,'������','010-1111-1111',42,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('cho.jpg','�ʹ������� ����ִ� �ʹ��̾߱�',null,'������','010-1111-1111',41,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('cheese.jpg','ġ� ���� �̾߱�',null,'������','010-1111-1111',40,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('egg1.jpg','�丮�� ����Ͻô� ��� �е�',null,'������','010-1111-1111',39,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('back2.jpg','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',null,'������','010-1111-1111',38,'0',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('pizza2.jpg','���� �������� �����帳�ϴ�.',null,'������','010-1111-1111',37,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('pizza1.jpg','���� �������� �����帳�ϴ�. ',null,'������','010-1111-1111',36,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('back1.jpg','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',null,'������','010-1111-1111',35,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('pizza.jpg','���� �������� �����帳�ϴ�. ',null,'������','010-1111-1111',34,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('back.jpg','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',null,'������','010-1111-1111',33,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('egg.jpg','�丮�� ����Ͻô� ��� �е�',null,'������','010-1111-1111',32,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('maaaaaaaaaaaa1.jpg','������ ���踦 �����غ�����.',null,'������','010-1111-1111',31,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('magic1.jpg','������ ���踦 �����帳�ϴ�. ',null,'������','010-1111-1111',30,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('ha1.jpg','������ó�� ������ ���� �ǰ� �ͽ��ϱ�?',null,'������','010-1111-1111',29,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('mona1.jpg','��ŵ� �𳪸��ڸ� �׸� �� �ֽ��ϴ�. ',null,'������','010-1111-1111',28,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('latteeee.jpg','�󶼾�Ʈ�� ���� �˷��帳�ϴ�. ',null,'������','010-1111-1111',26,'0',null,null,80000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('maaaaaaaaaaaa.jpg','���ӿ� ���� �˷��帳�ϴ�. ',null,'������','010-1111-1111',25,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('magic.jpg','������ ����� �˷��帳�ϴ�. ',to_date('20/06/23','RR/MM/DD'),'������','010-1111-1111',24,'80',null,null,800000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('ha.jpg','������ó�� �����ϰ� �����ź�',null,'������','010-1111-1111',23,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('mona.jpg','���������� �ٺ�ġó�� �׸��׸��� ',null,'������','010-1111-1111',22,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('camera.PNG','�ʸ�ī�޶� ���� ������ ������ �ͽ��ϴ�. ',null,'������','010-1111-1111',21,'0',null,null,20000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('kkang.jpg','1�� 3���� �ϴ� ��ſ���',null,'������','010-1111-1111',5,'1',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('ȿ����.jpg','�ܱⰣ�� ��ȿ�� ����� ����� �帳�ϴ�.  ',null,'������','010-1111-1111',2,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('����.jpg','��ŵ� ��ź�ҳ���� �� �� �ֽ��ϴ�. ',to_date('20/06/22','RR/MM/DD'),'������','010-1111-1111',3,'0',null,null,200000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('ȿ����.jpg','�ܱⰣ�� ��Ÿ ������ �ϴ¹��� �˷��帳�ϴ�.',to_date('20/06/22','RR/MM/DD'),'������','010-1111-1111',1,'0',null,null,1000000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('app3.jpg','����� �� ����� ���� ���� �մϴ�',null,'������','010-1111-1111',134,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('python3.jpg','���̽� �˷��帳�ϴ�',null,'���¾�','010-1111-1111',133,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('graphic3.jpg','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',null,'���׷���','010-1111-1111',132,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('vs3.png','�������� ���ʰ��� �ص帳�ϴ�',null,'������','010-1111-1111',131,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('LGelect3.png','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',null,'�迤��','010-1111-1111',130,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('samsung3.jpg','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',null,'�ڻＺ','010-1111-1111',129,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('C3.png','C# ���� ���� �� ���� �ص帳�ϴ�',null,'������','010-1111-1111',128,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('eclipse3.png','JAVA ���� ���� �� ���� �ص帳�ϴ�',null,'�輺��','010-1111-1111',127,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('app2.jpg','����� �� ����� ���� ���� �մϴ�',null,'������','010-1111-1111',126,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('python2.jpg','���̽� �˷��帳�ϴ�',null,'���¾�','010-1111-1111',125,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('graphic2.jpg','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',null,'���׷���','010-1111-1111',124,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('vs2.png','�������� ���ʰ��� �ص帳�ϴ�',null,'������','010-1111-1111',123,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('LGelect2.png','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',null,'�迤��','010-1111-1111',122,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('samsung2.jpg','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',null,'�ڻＺ','010-1111-1111',121,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('C2.png','C# ���� ���� �� ���� �ص帳�ϴ�',null,'������','010-1111-1111',120,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('eclipse2.png','JAVA ���� ���� �� ���� �ص帳�ϴ�',null,'�輺��','010-1111-1111',119,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('app1.jpg','����� �� ����� ���� ���� �մϴ�',null,'������','010-1111-1111',118,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('python1.jpg','���̽� �˷��帳�ϴ�',null,'���¾�','010-1111-1111',117,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('graphic1.jpg','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',null,'���׷���','010-1111-1111',116,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('vs1.png','�������� ���ʰ��� �ص帳�ϴ�',null,'������','010-1111-1111',115,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('LGelect1.png','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',null,'�迤��','010-1111-1111',114,'0',null,null,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('samsung1.jpg','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',null,'�ڻＺ','010-1111-1111',113,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('C1.png','C# ���� ���� �� ���� �ص帳�ϴ�',null,'������','010-1111-1111',112,'0',null,null,70000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('eclipse1.png','JAVA ���� ���� �� ���� �ص帳�ϴ�',null,'�輺��','010-1111-1111',111,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('app.jpg','����� �� ����� ���� ���� �մϴ�',null,'������','010-1111-1111',110,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('python.jpg','���̽� �˷��帳�ϴ�',null,'���׷���','010-1111-1111',109,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('graphic.jpg','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',null,'���׷���','010-1111-1111',108,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('vs.png','�������� ���ʰ��� �ص帳�ϴ�',null,'������','010-1111-1111',107,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('LGelect.png','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',null,'�迤��','010-1111-1111',106,'0',null,null,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('samsung.jpg','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',null,'�ڻＺ','010-1111-1111',105,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('C.png','C# ���� ���� �� ���� �ص帳�ϴ�',null,'������','010-1111-1111',104,'0',null,null,70000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('eclipse.png','JAVA ���� ���� �� ���� �ص帳�ϴ�',null,'�輺��','010-1111-1111',103,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank9.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',102,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank8.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',101,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank7.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',100,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank6.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',99,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank5.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',98,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank4.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',97,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank3.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',96,'0',null,null,40000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank2.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',95,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank1.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',94,'0',null,null,20000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank.jpg','������ ����� ���͵帳�ϴ�',null,'������','010-1111-1111',93,'0',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw9.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',92,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw8.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',91,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw7.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',90,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw6.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',89,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw5.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',88,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw4.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',87,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw3.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',86,'0',null,null,40000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw2.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',85,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw1.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',84,'0',null,null,20000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw.jpg','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',null,'���ŷ�','010-1111-1111',83,'0',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing9.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',82,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing8.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',81,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing7.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',80,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing6.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',79,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing5.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',78,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing4.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',77,'0',null,null,70000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing3.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',76,'0',null,null,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing2.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',75,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing1.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',74,'0',null,null,40000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing.png','ȿ������ ������ ����� �˷��帳�ϴ�',null,'�赿��','010-1111-1111',73,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up9.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',72,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up8.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',71,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up7.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',70,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up6.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',69,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up5.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',68,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up4.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',67,'0',null,null,70000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up2.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',65,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up1.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',64,'0',null,null,40000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up.jpg','â���� ���ʸ� �˷��帳�ϴ�',null,'������','010-1111-1111',63,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('sonjpg.jpg','����� ���� �̺�Ʈ',null,'admin','01012341344',62,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('sjs.jpg','������ ���� �̺�Ʈ',null,'admin','01012341344',61,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('messi.jpg','������ �޽ÿ��� ���� �̺�Ʈ',null,'admin','01012341344',60,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('yjs.jpg','���缮 ���� �̺�Ʈ',null,'admin','01012341344',59,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('trump.jpg','Ʈ���� ����� ���� �̺�Ʈ',null,'admin','01012341344',58,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('rain.jpg','���� �� ���� �̺�Ʈ',null,'admin','01012341344',57,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('lee.png','�Ｚ ����� ��ȸ�� ���� �̺�Ʈ',null,'admin','01012341344',56,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bill.png','�������� ���� �̺�Ʈ �ȳ�',null,'admin','01012341344',53,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('twice.png','Twice ���� �̺�Ʈ',null,'admin','01012341344',55,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bts.png','BTS ���� �̺�Ʈ',null,'admin','01012341344',54,'0',null,null,0);
REM INSERTING into SERVICE_INFO
SET DEFINE OFF;
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (54,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','�� ���� �ƹ̵�� �𿩶�!!
BTS�� ���� �� �ִ� ��ȸ�� Time Seller�� ã�ƿԽ��ϴ�
��Ÿ� ���� BTS���� �ð��� ����� ������!!','����Ư���� ������','������','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (54,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','�� ���� �ƹ̵�� �𿩶�!!
BTS�� ���� �� �ִ� ��ȸ�� Time Seller�� ã�ƿԽ��ϴ�
��Ÿ� ���� BTS���� �ð��� ����� ������!!','����Ư���� ������','������','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (55,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','�������̿� Ʈ���̽��� �´�!!
Ʈ���̵��� ���� ��ȣ�� ��ȸ�� Time Seller���� ������!!','����Ư���� ������','�����','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (53,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller������','���������� 2020�� 6�� 30�� �ѱ��� �����մϴ�!!
Time Seller���� ��Ÿ� ���� ������������ ������ ��ȸ�� ������!!','����Ư���� ���ʱ�','ȭ����','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (56,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','�Ｚ ����� ��ȸ��� ������ ���� �� �ִ� ��ȣ�� ��ȸ!!
���� Time Seller������ ���� �� �ִ� Ư���� ��Ÿ� ���� ������','��⵵ ������  ���뱸','�ݿ���','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (57,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','�ٷ��� ǥ��, ȭ���� ������ �ʼ��� �װ� �´�!!
������ ��ȭ�� �� ''��''�� ���ΰ� �� Time Seller���� ���� �� �ִ� ��ȣ�� ����!!
��ſ� �����Ͽ� ��� ���� �� �ִ� ��ȸ�� ��ƺ�����!!','����Ư���� ���ʱ�','������','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (58,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','�� �̱��� ����� Ʈ������ ���� �� �ִ� ��ȸ�� Time Seller�� ��ư� ���߽��ϴ�!!
��Ÿ� ���Ͽ� Ʈ������ ���� �� �ִ� ��ȸ�� ��ġ�� ������','����Ư���� ���α�','������','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (59,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','���� MC ���缮�� ���� �� �ִ� ��ȣ�� ��ȸ!! Time Seller���� ��ȸ�� ��ƺ�����!!
��Ÿ� ���Ͽ� ���缮���� ������ ��ȸ�� ��ġ�� ������','����Ư���� ���ʱ�','ȭ����','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (60,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','���� �ְ��� �౸������ �޽ø� ���� �� �ִ� ��ȸ!!
Time Seller���� �޽ø� ���� �� �ִ� ��ȸ�� ��ġ�� ������!!','����Ư���� ���ʱ�','������','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (61,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','���������� 1��1 ������ �� �� �ִ� ��ȣ�� ��ȸ!!
Time Seller���� �����ϴ� ��ȣ�� ��ȸ�� ������ ���� ��ƺ�����!!','����Ư���� ���ʱ�','ȭ����','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (62,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller ������','EPL �ְ��� �౸ ������ �� ������ �츮���� ������ǥ�� ����� ������ ���� �� �ִ� ��ȸ!!
Time Seller���� �� ��ȸ�� ����������!!','����Ư���� ���ʱ�','ȭ����','�̺�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (63,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','������','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (64,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','������','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (65,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','�����','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (66,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','�ݿ���','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (67,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','�����','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (67,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','������','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (68,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','ȭ����','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (68,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','������','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (68,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','������','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (69,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','������','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (69,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','������','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (70,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','�����','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (71,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!','��⵵ ���ý�','�Ͽ���','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (72,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!
','��⵵ ���ý�','ȭ����','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (72,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ����濵���а�
��� : â�� ������ ���� �ټ�','â���� ''â''�ڵ� �𸣰ڴ� �Ͻô� �е鿡�� â���� ���ʸ� �˷��帳�ϴ�
���� ��� ��� ���� ������ ���� â���� ���� ���ʿ� ������ ������ ������ �帳�ϴ�!!
','��⵵ ���ý�','�Ͽ���','â��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (73,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!','��⵵ ���ν�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (74,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','��⵵ ���ν�','ȭ����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (75,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!','��⵵ ���ν�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (76,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','��⵵ ���ν�','�����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (77,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','��⵵ ���ν�','ȭ����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (78,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','��⵵ ���ν�','�����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (79,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!','��⵵ ���ν�','�Ͽ���','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (80,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','��⵵ ���ν�','�����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (81,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','��⵵ ���ν�','ȭ����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (82,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �赿��
���� : 27��
�з� : ����
�а� : �濵�а�
��� : ������ �μ� ��� 2��','�������� �ϴµ� ����� ��뵵 ���� �ǽó���??
�ǹ����� �޾ ������ ���� �������� ���� ȿ�������� �ϴ� ����� �˷��帳�ϴ�!!
','��⵵ ���ν�','�����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (83,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!','��û���� õ�Ƚ�','�����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (83,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!','��û���� õ�Ƚ�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (84,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (85,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','ȭ����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (85,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (86,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (87,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (87,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','�ݿ���','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (88,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (88,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','�ݿ���','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (89,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!
','��û���� õ�Ƚ�','�Ͽ���','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (89,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!
','��û���� õ�Ƚ�','������','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (90,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!','��û���� õ�Ƚ�','�ݿ���','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (91,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!
','��û���� õ�Ƚ�','�����','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (92,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���ŷ�
���� : 28��
�з� : ����
�а� : �濵�а�
��� : 5�� ������','������ �غ� �ϴµ� ���� �п��� �ٴϸ鼭 ���θ� �Ͻó���??
�� ������ �غ� �ϴ��� ���� ȿ�������� ������ �غ��ϴ� ����� �˷��帳�ϴ�!!
','��û���� õ�Ƚ�','�Ͽ���','������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (93,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (94,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (95,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (96,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!
','����� ������
','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (97,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!
','����� ������','�ݿ���','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (98,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (99,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (100,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!
','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (100,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!
','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (101,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (101,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (101,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','�ݿ���','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (102,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (102,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (102,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
�з� : ����
�а� : �濵�а�
��� : �������� ������','������ ����� ���� ����ϴ� �����е鿡�� ������ �Ǳ� ���� ������ �˷��帳�ϴ�!!
�ܼ��� ī�䳪 ��α׿��� ��� �������� �� �� �� ���� ������ �Ǹ��� ��� �����մϴ�!!','����� ������','�����','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (103,'22','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������','JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.
','����� �����','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (103,'22','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������','JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.
','����� �����','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (104,'23','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.','����� ���ǵ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (104,'23','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.','����� ���ǵ���','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (105,'24','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������','�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.','��⵵ ȭ����','�����','����, IT, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (105,'24','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������','�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.','��⵵ ȭ����','�Ͽ���','����, IT, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (106,'25','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.','����Ư���� ���ʱ�','�����','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (106,'25','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.','����Ư���� ���ʱ�','�Ͽ���','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (107,'26','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�','�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.','��⵵ ������','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (107,'26','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�','�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.','��⵵ ������','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (108,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.','��⵵ �ȼ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (108,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.','��⵵ �ȼ���','������','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (108,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.','��⵵ �ȼ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (109,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.','����Ư���� ���ʱ�','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (109,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.','����Ư���� ���ʱ�','������','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (109,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.','����Ư���� ���ʱ�','�ݿ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (110,'28','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.','��⵵ ���ý�','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (110,'28','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.','��⵵ ���ý�','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (111,'29','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������','JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.
','����� �����','������','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (112,'30','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.','����� ���ǵ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (112,'30','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.','����� ���ǵ���','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (113,'31','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������','�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.','��⵵ ȭ����','�����','����, IT, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (113,'31','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������','�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.','��⵵ ȭ����','�Ͽ���','����, IT, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (114,'32','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.','����Ư���� ���ʱ�','�����','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (114,'32','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.','����Ư���� ���ʱ�','�Ͽ���','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (115,'33','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�','�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.','��⵵ ������','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (115,'33','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�','�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.','��⵵ ������','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (116,'34','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.','��⵵ �ȼ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (116,'34','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.','��⵵ �ȼ���','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (117,'35','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.','����Ư���� ���ʱ�','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (117,'35','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.','����Ư���� ���ʱ�','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (117,'35','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.','����Ư���� ���ʱ�','������','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (118,'36','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.','��⵵ ���ý�','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (118,'36','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.','��⵵ ���ý�','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (119,'37','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������
','JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.

','����� �����','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (119,'37','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������
','JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.

','����� �����','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (120,'38','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������
','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.
','����� ���ǵ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (120,'38','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������
','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.
','����� ���ǵ���','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (121,'39','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������
','�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.
','��⵵ ȭ����','�����','����, IT, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (121,'39','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������
','�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.
','��⵵ ȭ����','�Ͽ���','����, IT, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (122,'40','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������
','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.
','����Ư���� ���ʱ�','�����','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (122,'40','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������
','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.
','����Ư���� ���ʱ�','�Ͽ���','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (123,'41','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�
','�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.
','��⵵ ������','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (123,'41','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�
','�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.
','��⵵ ������','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (124,'42','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�
','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.
','��⵵ �ȼ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (124,'42','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�
','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.
','��⵵ �ȼ���','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (125,'43','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������
','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.
','����Ư���� ���ʱ�','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (125,'43','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������
','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.
','����Ư���� ���ʱ�','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (126,'44','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������
','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.
','��⵵ ���ý�','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (126,'44','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������
','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.
','��⵵ ���ý�','������','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (126,'44','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������
','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.
','��⵵ ���ý�','�ݿ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (127,'45','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������
','JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.

','����� �����','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (127,'45','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �輺��
���� : 26��
�з� : ����
�а� : ��ǻ�Ͱ��а�
��� : ���㾾�ؾ� ������
','JAVA�� �𸣰ų� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� ���� �����ϴ� ������Ʈ�� ���� ���� �� �ڵ带 ÷�� �ص帳�ϴ�.

','����� �����','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (128,'46','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������
','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.
','����� ���ǵ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (128,'46','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������
','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.
','����� ���ǵ���','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (128,'46','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 26��
�з� : ����
�а� : ��ǻ�� ���а�
��� :  Travleport ������
','C#�� ó�� ���Ͻô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
���� ���� �����ϰ� �ִ� ������Ʈ�� ���� ���� �� �ణ�� �ڵ� ÷���� �ص帳�ϴ�.
','����� ���ǵ���','������','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (129,'47','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������
','�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.
','��⵵ ȭ����','�Ͽ���','����, IT, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (129,'47','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �ڻＺ
���� : 27��
�з� : ����
�а� : �ݵ�ü �а�
��� : �Ｚ���� DS ������
','�Ｚ �ݵ�ü �о߿� ����� �� ������ �Դϴ�.
������ ���Ͽ츦 ���Ͽ� �Ի縦 �ϰ� �Ǿ��� �̿� ���� ���Ͽ츦 �˷��帱 �� �ֽ��ϴ�.
���� �Ի� �� ��Ȯ�ϰ� � ���� �ϴ��� �˷��帮�� ��� ���� �� ���忡�� ���ϴ� �̾߱⸦ ��� ������ �е鿡�� ���� ��ȸ�� �����մϴ�.
','��⵵ ȭ����','������','����, IT, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (130,'48','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������
','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.
','����Ư���� ���ʱ�','�����','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (130,'48','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������
','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.
','����Ư���� ���ʱ�','�Ͽ���','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (130,'48','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : �迤��
���� : 27��
�з� : ����
�а� : ���ڰ��а�
��� : LG���� ������
','LG���ڿ� �����ϰ� ������ �е� Ȥ�� LG���ڸ� �޲����� ��Ȯ�ϰ� ������ �ϴ��� ���� ������ �´��� �𸣰ڴٴ� �е��� ���� ������ �ǰ��� �Ͽ� ���� ���� �Ǿ����ϴ�.
�Ϲ����� ���� �ƴ� ���� �߿��ϰ� �ۿ��� �� �ִ� ������ �˷��帮�� � ���� �ϴ����� ���� ���ϰ� �˷� �帮�ڽ��ϴ�.
','����Ư���� ���ʱ�','������','���, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (131,'49','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�
','�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.
','��⵵ ������','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (131,'49','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �������� ������Ʈ ���� �ټ�
','�������̳ʸ� �޲����� �ƹ��͵� �𸣽ô� �е��� ���� ���� ���Ǹ� �ص帳�ϴ�.
�������� ���� �� css���� ������ �帳�ϴ�.
','��⵵ ������','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (132,'50','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.
','��⵵ �ȼ���','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (132,'50','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���׷���
���� : 30��
�з� : ����
�а� : ��ǻ�� ���а�
��� : �׷��� �����̳� ������Ʈ ���� �ټ�','�׷��� �����̳ʿ� ������ ������ �е鿡�� ������ �ǰ��� ���� �÷Ƚ��ϴ�.
�׷��� �����̳ʰ� �Ǳ� ���� ���� ���� �͵���� �ؼ� ���⼺�� ��Ƶ帳�ϴ�.
','��⵵ �ȼ���','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (133,'51','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������
','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.
','����Ư���� ���ʱ�','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (133,'51','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ���¾�
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ���̽� ���� ��� ������
','���̽㿡 ���ؼ� ������ �ְų� ���� ���� �е��� ���� �˱� ���� ������ �帳�ϴ�.
','����Ư���� ���ʱ�','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (134,'52','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������
','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.
','��⵵ ���ý�','�����','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (134,'52','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 32��
�з� : ����
�а� : ��ǻ�� ���а�
��� : ����� �� ���� ȸ�� ������
','����� ���� ����� ���� ���� �е��� ���� ���� ���Ǹ� �����մϴ�.
���� �� �о߷� �����ϰ� ���� �е鿡�� ����� �����̸� �ص帳�ϴ�.
','��⵵ ���ý�','�Ͽ���','����, IT, �ڵ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (1,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'"�̸� : ������
���� : 25��
�з� : ����
�а� : ������IT
��� : �Ｚ���� �ٹ���, ���� �����ȸ ��� �ټ� 
��� : �ǾƳ�
�����ϴ� ���� : �Ұ��
','

�ܱⰣ�� ��Ÿ ������ �ϴ¹��� �˷��帳�ϴ�.
������ ������ �����մϴ�.
�������� Ȯ���ϰ� �������� �� �ְ� �ص帳�ϴ�. 
��, �����Ƹ� �ϰ� ������ʽÿ�! ','������/Ⱦ����',null,'��Ÿ ����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (3,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 25��
�з� : ����
�а� : ������IT
��� : �Ｚ���� �ٹ���, ���� �����ȸ ��� �ټ� 
��� : ��, ��Ÿ, �뷡
�����ϴ� ���� : �Ұ��
�ϰ������ : �Ұ�� ���ִ»�� ���ѻ�� �ѿ��ְ�','��ź�ҳ�� �߸�ŭ �߻��������� ������ �߸�ŭ ���� �� �� �ֵ��� �ص帳�ϴ�.
���ʺ��� ���� ��� �� �ִ� �� Ŭ���� !
��ŵ� �����غ�����.','��⵵/������/������',null,'�� ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (2,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 25��
�з� : ����
�а� : ������IT
��� : �Ｚ���� �ٹ���, ���� �����ȸ ��� �ټ� 
��� : �뷡
�����ϴ� ���� : �Ұ��
�ϰ������ : �Ұ�� ���ִ»�� ���ѻ�� �ѿ��ְ�','
�ܱⰣ�� ��ȿ�� ����ó�� �����帳�ϴ�. 
���� �뷡�濡�� ��ġ �Ⱥ��� ��ȿ�� �뷡 ���� �θ� �� �ֽ��ϴ� !!!!','��⵵/����/�ϻ꼭��',null,'�뷡');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (4,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 25��
�а� : �ǿ����ǰ�
��� : ��̴��Ӵ� ���� 18 ��� 
��� : ��, �뷡, ��, ��Ÿ
�����ϴ� ���� : ���
','
������ ��ġ�� ���Ƿ��� ���� �����ʴϱ�? 
�� �ʺ��� ������ ��̴��Ӵ� ����� �� �ִ� �Ƿ����� Ű���帳�ϴ� !
��� �����б� �㵵 �˷��帮�ڽ��ϴ�. ','�����/������/���ﵿ',null,'��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (5,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 25��
�з� : ����
�а� : �ǿ���а� 
��� : ���� ����Ʋ 1�� ���� 
��� : �뷡, ��, ��Ÿ, �� 
�����ϴ� ���� : �ʹ�
','�ٷ��� ǥ���� ��������?
ȭ���� ������ ���ճ���?
�Ź߲��� �˸̳���?
�������� �質��? 
�׷� ����� ���� ����� ��� �غ� �Ǿ��ֽ��ϴ�. ���� �ٷ� �����ϼ��� !','��⵵/���ý�',null,'�� ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (21,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 40��
�з� : ����
�а� : ������IT
��� : �Ｚ���� �ٹ���, ���� �����ȸ ��� �ټ� 
��� : �������
�����ϴ� ���� : ���','
�ʸ�ī�޶�� ����� ������ 10��, ���� �ʸ�ī�޶� ������ ������ �ͽ��ϴ�. 
�ʸ� ī�޶� ���� �˰�����ź�, ������ ī�޶� ����Ͻô� ��� �е� 
ȯ���Դϴ�.  ','��⵵/����',null,'ī�޶�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (22,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 48��
�з� : ����
�а� : ȸȭ�� 
��� : ����� ������ �����̼��п� ����  
��� : ��ȭ�׸��� 
','�׸��� �߱׸��� �����ŵ� ����� �𸣽ô� �е��� ���� ������ �غ��غ��ҽ��ϴ�.
���������� �ٺ�ġó�� �׸� �׸��� ��� �˰���� �����ʴϱ�?
�𳪸��� ���� �׸� �ϳ� �׷����� �����ôٸ� ������ �����ϱ� ���� �˷��帮�ڽ��ϴ�. ','�����/������',null,'�̼�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (23,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 58��
�з� : ����
�а� : ���ؿ�ȭ�� 
��� : �Ѻ��� ����, �Ǳ��� ������ĳ�� �� ��Ʈ�� �ټ� �⿬
','
���⸦ ����ϴ� ���е�, �����ڰ� �ǰ���� ���е� !
������ó�� �����ϰ� ���� �����ʴϱ� ?
�����λ� 30���� ���� �������ø� �����찰�� ���� ��Ȱ���Ⱑ ���������� �̴ϴ�. ','�����/��õ��',null,'����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (24,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 30��
�з� : ȣ�׿�Ʈ �׸��ɵ��� ���
��� : ��Ʈ�δ��� ��ȯ 
�����ϴ� ���� : ���͸���
','
������ �˰�;��ϰ� �ñ��������� �˼� ���� ������ ���� !
���� �����簡 �˷��帳�ϴ�. 
�����ϴ� �̼����� ������ ������ ������ ȣ���� ������ ! ','��⵵/����/�ϻ꼭��',null,'����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (25,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
�з� : ����
�а� : �ǿ���а�
��� : ���� ���Ӵ�ȸ 2ȸ ���, �ж�뿡�� ���� 
��� : �ܴ�
�����ϴ� ���� : ������
','
�ű������� �����ϰ� ���� ������ ���踦 �����غ�����.
������ ���Ƽ� �������� 10�� ! 
������ �ñ��� ��ſ��� ���� �̾߱⸦ ����帮�ڽ��ϴ�. ','�����/������/���ﵿ',null,'����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (26,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 30��
�з� : ����
�а� : ����̼��а� 
��� : ���ﵿ ��Ÿ���� �ٸ���Ÿ
��� : �뷡
�����ϴ� ���� : �ٴҶ��
','
�󶼾�Ʈ�� ���迡 ���Ű� ȯ���մϴ�. 
�󶼸� ����ϴ� ��� ���ôµ����� ��ġ�� ���� 
������ ������ �󶼸� �ѹ� �������� !','�����/������/���ﵿ',null,'�󶼾�Ʈ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (28,'4','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 48��
�з� : ����
�а� : ȸȭ�� 
��� : ����� ������ �����̼��п� ����  
��� : ��ȭ�׸��� ','�׸��� �߱׸��� �����ŵ� ����� �𸣽ô� �е��� ���� ������ �غ��غ��ҽ��ϴ�.
���������� �ٺ�ġó�� �׸� �׸��� ��� �˰���� �����ʴϱ�?
�𳪸��� ���� �׸� �ϳ� �׷����� �����ôٸ� ������ �����ϱ� ���� �˷��帮�ڽ��ϴ�. ','��⵵/���ý�',null,'�̼� ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (29,'4','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 58��
�з� : ����
�а� : ���ؿ�ȭ�� 
��� : �Ѻ��� ����, �Ǳ��� ������ĳ�� �� ��Ʈ�� �ټ� �⿬','���⸦ ����ϴ� ���е�, �����ڰ� �ǰ���� ���е� !
������ó�� �����ϰ� ���� �����ʴϱ� ?
�����λ� 30���� ���� �������ø� �����찰�� ���� ��Ȱ���Ⱑ ���������� �̴ϴ�. ','��û����/õ�Ƚ�',null,'����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (30,'4','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 30��
�з� : ȣ�׿�Ʈ �׸��ɵ��� ���
��� : ��Ʈ�δ��� ��ȯ 
�����ϴ� ���� : ���͸���','������ �˰�;��ϰ� �ñ��������� �˼� ���� ������ ���� !
���� �����簡 �˷��帳�ϴ�. 
�����ϴ� �̼����� ������ ������ ������ ȣ���� ������ ! ','�����/������',null,'����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (31,'4','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 30��
�з� : ����
�а� : ����̼��а� 
��� : ���� ���Ӵ�ȸ 3�� ����
��� : �뷡
�����ϴ� ���� : �Ĵϴ�','�ű������� �����ϰ� ���� ������ ���踦 �����غ�����.
������ ���Ƽ� �������� 10�� ! 
������ �ñ��� ��ſ��� ���� �̾߱⸦ ����帮�ڽ��ϴ�. ','�����/������/���ﵿ',null,'����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (32,'5','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
�з� : ����
�а� : ��ǰ�����а�
��� : ���� �丮��ȸ 3ȸ ���
','�丮�� ����Ͻô� ���е� ���� �Բ� �丮�ؿ�!
�丮�� ���� �پ��� ������ ü���� �ϰ� �ص帮�ڽ��ϴ�. ','�����/������/���ﵿ',null,'�丮Ŭ����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (33,'5','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 55��
�з� : ����
�а� : ��ǰ�����а� 
��� : ������ �귣�� �Ѱ�����
��� : ��, ��Ÿ, �丮 
�����ϴ� ���� : �Ұ��
','
��2�� �������� �޲ٴ� ��ſ��Ը� ������ �˷��帮�� ��ľ����� ��� 
','��⵵/������/������',null,'��ľ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (34,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 68��
�з� : ����
�а� : ��ǰ��
��� : ����� ������ �����丮�п� ����
��� : �뷡','

40�� ���� �ܱ游 �ɾ�Խ��ϴ�. ���ڿ����� ��� ���� �˷��帳�ϴ�. ','��⵵/���ý�',null,'���ڿ丮');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (35,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 55��
�з� : ����
�а� : ��ǰ�����а� 
��� : ������ �귣�� �Ѱ�����
��� : ��, ��Ÿ, �丮 
�����ϴ� ���� : �Ұ��','��2�� �������� �޲ٴ� ��ſ��Ը� ������ �˷��帮�� ��ľ����� ��� ','�����/������/���ﵿ',null,'��ľ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (36,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 68��
�з� : ����
�а� : ��ǰ��
��� : ����� ������ �����丮�п� ����
��� : �뷡','40�� ���� �ܱ游 �ɾ�Խ��ϴ�. ���ڿ����� ��� ���� �˷��帳�ϴ�.','�����/������/���ﵿ',null,'���ڿ丮');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (37,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 68��
�з� : ����
�а� : ��ǰ��
��� : ����� ������ �����丮�п� ����
��� : �뷡
��⵵/���ý�','40�� ���� �ܱ游 �ɾ�Խ��ϴ�. ���ڿ����� ��� ���� �˷��帳�ϴ�. ','�����/������/���ﵿ',null,'���ڿ丮');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (38,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 55��
�з� : ����
�а� : ��ǰ�����а� 
��� : ������ �귣�� �Ѱ�����
��� : ��, ��Ÿ, �丮 
�����ϴ� ���� : �Ұ��','��2�� �������� �޲ٴ� ��ſ��Ը� ������ �˷��帮�� ��ľ����� ��� ','�����/������/���ﵿ',null,'��ľ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (39,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
�з� : ����
�а� : ��ǰ�����а�
��� : ���� �丮��ȸ 3ȸ ���','�丮�� ����Ͻô� ���е� ���� �Բ� �丮�ؿ�!
�丮�� ���� �پ��� ������ ü���� �ϰ� �ص帮�ڽ��ϴ�. ','��û����/õ�Ƚ�',null,'�丮�� ����Ͻô� ��� �е�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (40,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 40��
�з� : ����
�а� : ��ǰ�����а�
��� : ġ�������','�ٳⰣ ġ� �����߽��ϴ�. ġ� ����Ͻô� �е鿡�� ġ�� �̾߱⸦ ����帮�� �ͽ��ϴ�. ','�����/������/���ﵿ',null,'ġ��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (41,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 60��
�з� : ����
�а� : ��ǰ�����а�
��� :  �Ϻ� �ʹ� ���������� ������ �����ܸ��̿��� 20�� �ٹ�','30�⵿�� �ʹ丸 �����Խ��ϴ�. �ʹ��� �����Ͻô� ���в� �ʹ��̾߱⸦ 
����帮�ڽ��ϴ�. ','�����/������/���ﵿ',null,'�ʹ�丮');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (42,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 30��
�з� : ����
�а� : ���а�
��� : ������к������� �ٹ���
','
��簡 �Ǳ�� ����� ���, ��簡 �Ǳ������ ����, 
��簡�Ǿ��� ���� ��ǵ� ��
��翡 ���� �ñ��Ͻ� ��� ���� �˷��帮�ڽ��ϴ�. ','�����/������/���ﵿ',null,'�Ƿ�-���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (43,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 38��
�з� : ����
�а� : ���а� 
��� : ������к������� �ٹ���','�ǻ簡 �Ǳ������ ������ ���ι� ���� ��� �������� �˷��帳�ϴ�.
�� �ñ��� ���׵鿡 ���ؼ��� �����Ӱ� �����ϼŵ� �˴ϴ�. ','�����/��õ��',null,'�Ƿ�_�ǻ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (44,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ���а�
��� : ������к������� �ٹ���','
��缱�簡 �Ǳ������ ����, ��缱�翡���� ���ǰ� ���� ���� 
�����ϰ� �����帮�ڽ��ϴ�. ','�����/���۱�',null,'�Ƿ�_��缱��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (45,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 38��
�з� : ����
�а� : ���а� 
��� : ������к������� �ٹ���
�����/��õ��','�ǻ簡 �Ǳ������ ������ ���ι� ���� ��� �������� �˷��帳�ϴ�.
�� �ñ��� ���׵鿡 ���ؼ��� �����Ӱ� �����ϼŵ� �˴ϴ�. ','�����/���۱�',null,'�Ƿ�_�ǻ�');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (46,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 28��
�з� : ����
�а� : ���а�
��� : ������к������� �ٹ���','��缱�簡 �Ǳ������ ����, ��缱�翡���� ���ǰ� ���� ���� 
�����ϰ� �����帮�ڽ��ϴ�. ','�����/���۱�',null,'�Ƿ�_��缱��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (47,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 30��
�з� : ����
�а� : ���а�
��� : ������к������� �ٹ���','��簡 �Ǳ�� ����� ���, ��簡 �Ǳ������ ����, 
��簡�Ǿ��� ���� ��ǵ� ��
��翡 ���� �ñ��Ͻ� ��� ���� �˷��帮�ڽ��ϴ�. ','��û����/õ�Ƚ�',null,'�Ƿ�-���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (48,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
�з� : ����
�а� : �мǵ������а�
','��ŵ� �ӵ巹��ó�� �� �� �ֽ��ϴ�. �мǿ� ���� ������ �˷��帳�ϴ�. ','�����/������/������',null,'�мǵ�����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (49,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
�з� : ����
�а� : �мǵ������а�
��� : �м� �����̳ʷ� ������','
�� ���԰������ �м��׷�����Ʈ�е� ! 
��ŵ� ���� ������ ��������� ������� �ٽ� �¾ �� �ְ� �� ���Դϴ�. ','�����/������',null,'�м�_��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (50,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
�з� : ����
�а� : �мǵ������а�
��� : �м� �����̳ʷ� ������','
�� ���԰������ �м��׷�����Ʈ�е� ! 
��ŵ� ���� ������ ��������� ������� �ٽ� �¾ �� �ְ� �� ���Դϴ�. ','�����/������',null,'�м�_��');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (51,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 30����
��� : �౸ ������ǥ���
','
�౸�� ����ϴ� ���е� �ϻ��� �޽÷� �����帳�ϴ�. 
�׿ܿ� �౸ ������ǥ�� �ٸ鼭 �����ߴ� ��� �͵��� �̾߱� �ص帮�ڽ��ϴ�.','�����/������/���ﵿ',null,'������_�౸');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (52,'8','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�з� ����
�������б� ���硤ü���а�������
��� ����
�λ������ũ �����ࡤ�����౸�ܡ�������15��.0����','�ȳ��ϼ���.
���� �ְ��� ������ ������ �����Դϴ�.

���� k���׿��� 8�⵿�� �پ���, �߱����۸��׿��� 3��, �±����׿��� 2��.
�������� ������Ȱ���� �������౸���� �Դϴ�.

�౸�� �⺻�Ⱑ ���� �߿�����.
����� �� �౸�� ����������� �౸�� �����ʽ��ϴ�.
�ݺ����� �Ʒ��� �ʿ��ϰ� ü������ ���α׷����� �Ʒ��� �ؾ��մϴ�.

��¥ �౸�� ��������� ��
�������� �౸�� ó���̽� ��
Ȥ�� ����� ���α��� ��� ��̰� �౸�� ���Ǽ��ֽ��ϴ�.


�����౸15���̻��� �Ǹ��Ѽ����԰�
�ְ��� ���α׷����� ���Ǽ��ִ� ��ȸ�Դϴ�.
���� �������� �ø��ȴ�ǥ��� ��ǥ�԰� ���̸��� �߱����۸��� �±����� �ؿܸ��׿���
���������� �� �Ǹ���.�������� �����Ǿ��ֽ��ϴ�.

���� �� �̻� ��.��.���� �ƴ� �׶����� �����ڰ� �Ǿ����.','�����/������/���ﵿ',null,'������_�౸');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (6,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�з� ����
���δ��б����ݱ������а�������
��� ����
�����ν�������������֡��Ŵ�����0��.4����
������Ʈ�Ͻ�����Ƽ����Ʈ���̳ʡ�1��.0����
���̺���Ʈ�Ͻ�����Ƽ�������塤1��.0����
��Ʈ������Ʈ���̴ס���Ƽ Ʈ���̳ʡ�0��.9����
���� �ڰ���
��Ȱ������������1�ޡ�2014.12���ѱ�ü�������
��Ȱ������������1��(������)��2019.12���ѱ�ü�������
���ν����������ڡ�2017.9���ѱ�ü�������
','������_������
����, �⺻����� �߱�, ��� �������
���̻� ������ ��������� ������ !
������ �ҹ� ! ������ ���� ��� �� �ִ� ������ ��������
����Ʈ ��� �������� �������� ���� ����ְ� �˷��帳�ϴ� !



[ �̷� �е� �� ��õ����� ! ]
���
������ ���̽� �����⼱���� �غ��
ȣ�ż����� ���� ��
�� ��ü�� �����ϰ� ����� ���� ��
�ٸ� �������� �����Ű�� ���� ��
���̻� �������� ����Ʈ �������� �������� �ƴմϴ�.
','��⵵/���ν�','������','������_������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (6,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�з� ����
���δ��б����ݱ������а�������
��� ����
�����ν�������������֡��Ŵ�����0��.4����
������Ʈ�Ͻ�����Ƽ����Ʈ���̳ʡ�1��.0����
���̺���Ʈ�Ͻ�����Ƽ�������塤1��.0����
��Ʈ������Ʈ���̴ס���Ƽ Ʈ���̳ʡ�0��.9����
���� �ڰ���
��Ȱ������������1�ޡ�2014.12���ѱ�ü�������
��Ȱ������������1��(������)��2019.12���ѱ�ü�������
���ν����������ڡ�2017.9���ѱ�ü�������
','������_������
����, �⺻����� �߱�, ��� �������
���̻� ������ ��������� ������ !
������ �ҹ� ! ������ ���� ��� �� �ִ� ������ ��������
����Ʈ ��� �������� �������� ���� ����ְ� �˷��帳�ϴ� !



[ �̷� �е� �� ��õ����� ! ]
���
������ ���̽� �����⼱���� �غ��
ȣ�ż����� ���� ��
�� ��ü�� �����ϰ� ����� ���� ��
�ٸ� �������� �����Ű�� ���� ��
���̻� �������� ����Ʈ �������� �������� �ƴմϴ�.
','��⵵/���ν�','������','������_������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (6,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�з� ����
���δ��б����ݱ������а�������
��� ����
�����ν�������������֡��Ŵ�����0��.4����
������Ʈ�Ͻ�����Ƽ����Ʈ���̳ʡ�1��.0����
���̺���Ʈ�Ͻ�����Ƽ�������塤1��.0����
��Ʈ������Ʈ���̴ס���Ƽ Ʈ���̳ʡ�0��.9����
���� �ڰ���
��Ȱ������������1�ޡ�2014.12���ѱ�ü�������
��Ȱ������������1��(������)��2019.12���ѱ�ü�������
���ν����������ڡ�2017.9���ѱ�ü�������
','������_������
����, �⺻����� �߱�, ��� �������
���̻� ������ ��������� ������ !
������ �ҹ� ! ������ ���� ��� �� �ִ� ������ ��������
����Ʈ ��� �������� �������� ���� ����ְ� �˷��帳�ϴ� !



[ �̷� �е� �� ��õ����� ! ]
���
������ ���̽� �����⼱���� �غ��
ȣ�ż����� ���� ��
�� ��ü�� �����ϰ� ����� ���� ��
�ٸ� �������� �����Ű�� ���� ��
���̻� �������� ����Ʈ �������� �������� �ƴմϴ�.
','��⵵/���ν�','�ݿ���','������_������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (7,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
���� : �������а�
��� : ������ǥ �ܰŸ� ���� ���
��� : ���, �Ϻ���� 
','����κ�Ʈó�� �ΰ�źȯ�� �Ǵ� ����� �˷��帳�ϴ�. 
��ŵ� ����� �ΰ�źȯ�� �� �� �ֽ��ϴ�. 
�����ϰ� ��������� ! 

','��⵵/���ν�','ȭ����','������_�ܰŸ� �޸���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (7,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
���� : �������а�
��� : ������ǥ �ܰŸ� ���� ���
��� : ���, �Ϻ���� 
','����κ�Ʈó�� �ΰ�źȯ�� �Ǵ� ����� �˷��帳�ϴ�. 
��ŵ� ����� �ΰ�źȯ�� �� �� �ֽ��ϴ�. 
�����ϰ� ��������� ! 

','��⵵/���ν�','�����','������_�ܰŸ� �޸���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (7,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 29��
���� : �������а�
��� : ������ǥ �ܰŸ� ���� ���
��� : ���, �Ϻ���� 
','����κ�Ʈó�� �ΰ�źȯ�� �Ǵ� ����� �˷��帳�ϴ�. 
��ŵ� ����� �ΰ�źȯ�� �� �� �ֽ��ϴ�. 
�����ϰ� ��������� ! 

','��⵵/���ν�','�����','������_�ܰŸ� �޸���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (8,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 40��
���� : ������
��� : ���� ������ȸ �ټ� �Ի�
��� : ���, �Ϻ���� 
',' ���� �౸���� ��� �� ��� �Կ��� ���� �����ϰ� ������, �౸���� �������� ���ͺ� �Կ��� �����ϰ� �ֽ��ϴ�. �ټ��� �������� �����Կ��� ���� ��Ȱ�� ��� ������� å�Ӱ� �ִ� �µ��� �ּ��� ���� ���͵帳�ϴ�.

�������� ��ġ�� �߿��� ���忡�� ���� �� ���ϴ�.
�߿��� ������ ��ƾ� �Ѵٸ� ������ ���ݺ��� ������ ���� �۰��� �����ϼ���.


������ ��� �� ���, ������, ��� ��ƿ�Կ��� �ʿ��Ͻ� ���� ������ �����ּ��� *^^*
','��û���� õ�Ƚ�','�Ͽ���','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (8,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 40��
���� : ������
��� : ���� ������ȸ �ټ� �Ի�
��� : ���, �Ϻ���� 
',' ���� �౸���� ��� �� ��� �Կ��� ���� �����ϰ� ������, �౸���� �������� ���ͺ� �Կ��� �����ϰ� �ֽ��ϴ�. �ټ��� �������� �����Կ��� ���� ��Ȱ�� ��� ������� å�Ӱ� �ִ� �µ��� �ּ��� ���� ���͵帳�ϴ�.

�������� ��ġ�� �߿��� ���忡�� ���� �� ���ϴ�.
�߿��� ������ ��ƾ� �Ѵٸ� ������ ���ݺ��� ������ ���� �۰��� �����ϼ���.


������ ��� �� ���, ������, ��� ��ƿ�Կ��� �ʿ��Ͻ� ���� ������ �����ּ��� *^^*
','��û���� õ�Ƚ�','������','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (8,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 40��
���� : ������
��� : ���� ������ȸ �ټ� �Ի�
��� : ���, �Ϻ���� 
',' ���� �౸���� ��� �� ��� �Կ��� ���� �����ϰ� ������, �౸���� �������� ���ͺ� �Կ��� �����ϰ� �ֽ��ϴ�. �ټ��� �������� �����Կ��� ���� ��Ȱ�� ��� ������� å�Ӱ� �ִ� �µ��� �ּ��� ���� ���͵帳�ϴ�.

�������� ��ġ�� �߿��� ���忡�� ���� �� ���ϴ�.
�߿��� ������ ��ƾ� �Ѵٸ� ������ ���ݺ��� ������ ���� �۰��� �����ϼ���.


������ ��� �� ���, ������, ��� ��ƿ�Կ��� �ʿ��Ͻ� ���� ������ �����ּ��� *^^*
','��û���� õ�Ƚ�','������','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (8,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 40��
���� : ������
��� : ���� ������ȸ �ټ� �Ի�
��� : ���, �Ϻ���� 
',' ���� �౸���� ��� �� ��� �Կ��� ���� �����ϰ� ������, �౸���� �������� ���ͺ� �Կ��� �����ϰ� �ֽ��ϴ�. �ټ��� �������� �����Կ��� ���� ��Ȱ�� ��� ������� å�Ӱ� �ִ� �µ��� �ּ��� ���� ���͵帳�ϴ�.

�������� ��ġ�� �߿��� ���忡�� ���� �� ���ϴ�.
�߿��� ������ ��ƾ� �Ѵٸ� ������ ���ݺ��� ������ ���� �۰��� �����ϼ���.


������ ��� �� ���, ������, ��� ��ƿ�Կ��� �ʿ��Ͻ� ���� ������ �����ּ��� *^^*
','��û���� õ�Ƚ�','�ݿ���','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (9,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� �̼��� �����ؼ� �мǵ����ΰ��� �ٴϴٰ� ����� �Ϸ���Ʈ�۾��� ���������� ���ϰ� �ִ� APE �Դϴ�.

�̸� : ������
���� : 28��
���� : �̼�_�мǵ����ΰ�
��� : (��) �Ϸ���Ʈ �۾�, ������ ���� ��������
','�ȳ��ϼ���.
�мǵ������� �� ������ �����Ͻðų� ����� �ϰ� ��� �Թ��ڴԵ鿡�� ������ �帮�� �ͽ��ϴ�. 
�мǵ������� �����ϱ� �� �����ϴ� ����̳� �ǹ���, �˾Ƶθ� ���� ���ĵ��� �������� �˷��帮�� ��ǥ�� ���� ���ư��µ� ������ �Ǿ����� ���ڽ��ϴ�:)
','��⵵/���ν�','ȭ����','�мǵ�����_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (9,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� �̼��� �����ؼ� �мǵ����ΰ��� �ٴϴٰ� ����� �Ϸ���Ʈ�۾��� ���������� ���ϰ� �ִ� APE �Դϴ�.

�̸� : ������
���� : 28��
���� : �̼�_�мǵ����ΰ�
��� : (��) �Ϸ���Ʈ �۾�, ������ ���� ��������
','�ȳ��ϼ���.
�мǵ������� �� ������ �����Ͻðų� ����� �ϰ� ��� �Թ��ڴԵ鿡�� ������ �帮�� �ͽ��ϴ�. 
�мǵ������� �����ϱ� �� �����ϴ� ����̳� �ǹ���, �˾Ƶθ� ���� ���ĵ��� �������� �˷��帮�� ��ǥ�� ���� ���ư��µ� ������ �Ǿ����� ���ڽ��ϴ�:)
','��⵵/���ν�','�����','�мǵ�����_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (9,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� �̼��� �����ؼ� �мǵ����ΰ��� �ٴϴٰ� ����� �Ϸ���Ʈ�۾��� ���������� ���ϰ� �ִ� APE �Դϴ�.

�̸� : ������
���� : 28��
���� : �̼�_�мǵ����ΰ�
��� : (��) �Ϸ���Ʈ �۾�, ������ ���� ��������
','�ȳ��ϼ���.
�мǵ������� �� ������ �����Ͻðų� ����� �ϰ� ��� �Թ��ڴԵ鿡�� ������ �帮�� �ͽ��ϴ�. 
�мǵ������� �����ϱ� �� �����ϴ� ����̳� �ǹ���, �˾Ƶθ� ���� ���ĵ��� �������� �˷��帮�� ��ǥ�� ���� ���ư��µ� ������ �Ǿ����� ���ڽ��ϴ�:)
','��⵵/���ν�','�����','�мǵ�����_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (10,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'<��������� ��Ī ������ �ڱ�Ұ�>
1. �������� �ֿ� �о�:
_ �̷¼�/�ڼҼ� �ۼ�
_ ����м�/�����Ұ�
_ �λ�ä��ý����� ���ؿ� �ܰ躰 �غ�
_ ������Ī
2. �������� ���/�̷»���:
_ ����/�߰߱�� �λ�����&�ӿ�(����/����/�м�/�Ƿ�/�ؿܹ��� �ٹ�����)
_ �������(����/����/�м�/����/�Ǽ�/���� ��)
_ ������, ������� ������������ Ȱ��
_ ���Ư��/���丵 ����(��������ڸ�����, ���� ��)
_ �����������α׷� ���� �� �(������� �� ����)
3. ������ ����:
_ ����غ� �ʿ��� �ñ��� �ؼ� �� ���κ� ���� ����
_ ������ä�ý��ۼ��� �� � ������ �������� �������� ��Ī ����
_ �ڼҼ�/����/�̹�������ŷ
4. ������ ����:
_��Ī ��û-��Ű������ -�ð����(�¶���_īī��������ȭ/���)
5. �ݾ׿� ���� ���� ���� ����:
_ ��Ű�� �ݾ׺� �¶��� ����
','�ȳ��ϼ���.
�������� 20�� ��۰� ��Ƽ �̹���������, ���� �� ���� ����� ������ ��������
���� �Ѻ� �Ѻп��� ���� ���񽺷� ���, ����ũ��, �м��� ���Ͽ츦 ���п��� �´� �������� �� �帳�ϴ�.


<�̷� �п��� ��õ�� �帳�ϴ�~~^^>
*�̹��� ��ȭ�� �ְ� ������ ��
*�� �̹����� �´� ��Ÿ���� ã�� ������ ��
*�� ü���� ��︮�� �ǻ� ������ ���Ͻô� ��
*���� �۽��� �÷��� �˰� ������ ��
*�۽��� ����ũ���� ���Ͻô� ��
*�� �̹����� �´� ��� ��Ÿ���� ã�� �����ź�
*��������ũ�� ��Ż�������� �ް� ������ ��

*���� ȭ��ǰ �Ŀ�ġ �غ����ֽø� �Ŀ�ġ �м� �� ��ǰ���� ���� �� �帳�ϴ�.
*�� ��� ��Ÿ�Ͽ� �°� ���̷�, ���� ��� ����� �˷��帳�ϴ�.
*ü�� �м� ���� �м� ��Ÿ���� ������ �帳�ϴ�.

**���� �� ���ο��� �´� ȭ��ǰ ���� ��� ��ǰ,�ǻ� ���� �����ص帳�ϴ�.**
**���� �� ������ �� �ñ��� ���� �ǵ�� �� �帳�ϴ�.*
','�����/������/������','ȭ����','��Ƽ������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (10,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'<��������� ��Ī ������ �ڱ�Ұ�>
1. �������� �ֿ� �о�:
_ �̷¼�/�ڼҼ� �ۼ�
_ ����м�/�����Ұ�
_ �λ�ä��ý����� ���ؿ� �ܰ躰 �غ�
_ ������Ī
2. �������� ���/�̷»���:
_ ����/�߰߱�� �λ�����&�ӿ�(����/����/�м�/�Ƿ�/�ؿܹ��� �ٹ�����)
_ �������(����/����/�м�/����/�Ǽ�/���� ��)
_ ������, ������� ������������ Ȱ��
_ ���Ư��/���丵 ����(��������ڸ�����, ���� ��)
_ �����������α׷� ���� �� �(������� �� ����)
3. ������ ����:
_ ����غ� �ʿ��� �ñ��� �ؼ� �� ���κ� ���� ����
_ ������ä�ý��ۼ��� �� � ������ �������� �������� ��Ī ����
_ �ڼҼ�/����/�̹�������ŷ
4. ������ ����:
_��Ī ��û-��Ű������ -�ð����(�¶���_īī��������ȭ/���)
5. �ݾ׿� ���� ���� ���� ����:
_ ��Ű�� �ݾ׺� �¶��� ����
','�ȳ��ϼ���.
�������� 20�� ��۰� ��Ƽ �̹���������, ���� �� ���� ����� ������ ��������
���� �Ѻ� �Ѻп��� ���� ���񽺷� ���, ����ũ��, �м��� ���Ͽ츦 ���п��� �´� �������� �� �帳�ϴ�.


<�̷� �п��� ��õ�� �帳�ϴ�~~^^>
*�̹��� ��ȭ�� �ְ� ������ ��
*�� �̹����� �´� ��Ÿ���� ã�� ������ ��
*�� ü���� ��︮�� �ǻ� ������ ���Ͻô� ��
*���� �۽��� �÷��� �˰� ������ ��
*�۽��� ����ũ���� ���Ͻô� ��
*�� �̹����� �´� ��� ��Ÿ���� ã�� �����ź�
*��������ũ�� ��Ż�������� �ް� ������ ��

*���� ȭ��ǰ �Ŀ�ġ �غ����ֽø� �Ŀ�ġ �м� �� ��ǰ���� ���� �� �帳�ϴ�.
*�� ��� ��Ÿ�Ͽ� �°� ���̷�, ���� ��� ����� �˷��帳�ϴ�.
*ü�� �м� ���� �м� ��Ÿ���� ������ �帳�ϴ�.

**���� �� ���ο��� �´� ȭ��ǰ ���� ��� ��ǰ,�ǻ� ���� �����ص帳�ϴ�.**
**���� �� ������ �� �ñ��� ���� �ǵ�� �� �帳�ϴ�.*
','�����/������/������','�����','��Ƽ������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (10,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'<��������� ��Ī ������ �ڱ�Ұ�>
1. �������� �ֿ� �о�:
_ �̷¼�/�ڼҼ� �ۼ�
_ ����м�/�����Ұ�
_ �λ�ä��ý����� ���ؿ� �ܰ躰 �غ�
_ ������Ī
2. �������� ���/�̷»���:
_ ����/�߰߱�� �λ�����&�ӿ�(����/����/�м�/�Ƿ�/�ؿܹ��� �ٹ�����)
_ �������(����/����/�м�/����/�Ǽ�/���� ��)
_ ������, ������� ������������ Ȱ��
_ ���Ư��/���丵 ����(��������ڸ�����, ���� ��)
_ �����������α׷� ���� �� �(������� �� ����)
3. ������ ����:
_ ����غ� �ʿ��� �ñ��� �ؼ� �� ���κ� ���� ����
_ ������ä�ý��ۼ��� �� � ������ �������� �������� ��Ī ����
_ �ڼҼ�/����/�̹�������ŷ
4. ������ ����:
_��Ī ��û-��Ű������ -�ð����(�¶���_īī��������ȭ/���)
5. �ݾ׿� ���� ���� ���� ����:
_ ��Ű�� �ݾ׺� �¶��� ����
','�ȳ��ϼ���.
�������� 20�� ��۰� ��Ƽ �̹���������, ���� �� ���� ����� ������ ��������
���� �Ѻ� �Ѻп��� ���� ���񽺷� ���, ����ũ��, �м��� ���Ͽ츦 ���п��� �´� �������� �� �帳�ϴ�.


<�̷� �п��� ��õ�� �帳�ϴ�~~^^>
*�̹��� ��ȭ�� �ְ� ������ ��
*�� �̹����� �´� ��Ÿ���� ã�� ������ ��
*�� ü���� ��︮�� �ǻ� ������ ���Ͻô� ��
*���� �۽��� �÷��� �˰� ������ ��
*�۽��� ����ũ���� ���Ͻô� ��
*�� �̹����� �´� ��� ��Ÿ���� ã�� �����ź�
*��������ũ�� ��Ż�������� �ް� ������ ��

*���� ȭ��ǰ �Ŀ�ġ �غ����ֽø� �Ŀ�ġ �м� �� ��ǰ���� ���� �� �帳�ϴ�.
*�� ��� ��Ÿ�Ͽ� �°� ���̷�, ���� ��� ����� �˷��帳�ϴ�.
*ü�� �м� ���� �м� ��Ÿ���� ������ �帳�ϴ�.

**���� �� ���ο��� �´� ȭ��ǰ ���� ��� ��ǰ,�ǻ� ���� �����ص帳�ϴ�.**
**���� �� ������ �� �ñ��� ���� �ǵ�� �� �帳�ϴ�.*
','�����/������/������','�����','��Ƽ������');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (11,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
','����ñ����� �ذ��� �帳�ϴ�.

<��������� ��Ī ������ �ڱ�Ұ�>
1. �������� �ֿ� �о�:
_ �̷¼�/�ڼҼ� �ۼ�
_ ����м�/�����Ұ�
_ �λ�ä��ý����� ���ؿ� �ܰ躰 �غ�
_ ������Ī
2. �������� ���/�̷»���:
_ ����/�߰߱�� �λ�����&�ӿ�(����/����/�м�/�Ƿ�/�ؿܹ��� �ٹ�����)
_ �������(����/����/�м�/����/�Ǽ�/���� ��)
_ ������, ������� ������������ Ȱ��
_ ���Ư��/���丵 ����(��������ڸ�����, ���� ��)
_ �����������α׷� ���� �� �(������� �� ����)
3. ������ ����:
_ ����غ� �ʿ��� �ñ��� �ؼ� �� ���κ� ���� ����
_ ������ä�ý��ۼ��� �� � ������ �������� �������� ��Ī ����
_ �ڼҼ�/����/�̹�������ŷ
4. ������ ����:
_��Ī ��û-��Ű������ -�ð����(�¶���_īī��������ȭ/���)
5. �ݾ׿� ���� ���� ���� ����:
_ ��Ű�� �ݾ׺� �¶��� ����
','�����/������/������','ȭ����','�м�, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (11,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
','����ñ����� �ذ��� �帳�ϴ�.

<��������� ��Ī ������ �ڱ�Ұ�>
1. �������� �ֿ� �о�:
_ �̷¼�/�ڼҼ� �ۼ�
_ ����м�/�����Ұ�
_ �λ�ä��ý����� ���ؿ� �ܰ躰 �غ�
_ ������Ī
2. �������� ���/�̷»���:
_ ����/�߰߱�� �λ�����&�ӿ�(����/����/�м�/�Ƿ�/�ؿܹ��� �ٹ�����)
_ �������(����/����/�м�/����/�Ǽ�/���� ��)
_ ������, ������� ������������ Ȱ��
_ ���Ư��/���丵 ����(��������ڸ�����, ���� ��)
_ �����������α׷� ���� �� �(������� �� ����)
3. ������ ����:
_ ����غ� �ʿ��� �ñ��� �ؼ� �� ���κ� ���� ����
_ ������ä�ý��ۼ��� �� � ������ �������� �������� ��Ī ����
_ �ڼҼ�/����/�̹�������ŷ
4. ������ ����:
_��Ī ��û-��Ű������ -�ð����(�¶���_īī��������ȭ/���)
5. �ݾ׿� ���� ���� ���� ����:
_ ��Ű�� �ݾ׺� �¶��� ����
','�����/������/������','�����','�м�, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (11,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ������
���� : 35��
','����ñ����� �ذ��� �帳�ϴ�.

<��������� ��Ī ������ �ڱ�Ұ�>
1. �������� �ֿ� �о�:
_ �̷¼�/�ڼҼ� �ۼ�
_ ����м�/�����Ұ�
_ �λ�ä��ý����� ���ؿ� �ܰ躰 �غ�
_ ������Ī
2. �������� ���/�̷»���:
_ ����/�߰߱�� �λ�����&�ӿ�(����/����/�м�/�Ƿ�/�ؿܹ��� �ٹ�����)
_ �������(����/����/�м�/����/�Ǽ�/���� ��)
_ ������, ������� ������������ Ȱ��
_ ���Ư��/���丵 ����(��������ڸ�����, ���� ��)
_ �����������α׷� ���� �� �(������� �� ����)
3. ������ ����:
_ ����غ� �ʿ��� �ñ��� �ؼ� �� ���κ� ���� ����
_ ������ä�ý��ۼ��� �� � ������ �������� �������� ��Ī ����
_ �ڼҼ�/����/�̹�������ŷ
4. ������ ����:
_��Ī ��û-��Ű������ -�ð����(�¶���_īī��������ȭ/���)
5. �ݾ׿� ���� ���� ���� ����:
_ ��Ű�� �ݾ׺� �¶��� ����
','�����/������/������','�����','�м�, ���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (12,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������
���� 490��
','����ƽ �ٸ��¹�','��û���� õ�Ƚ�','ȭ����','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (12,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������
���� 490��
','����ƽ �ٸ��¹�','��û���� õ�Ƚ�','�����','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (13,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������
���� 490��
','����ƽ �ٸ��¹�','��û���� õ�Ƚ�','ȭ����','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (13,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'������
���� 490��
','����ƽ �ٸ��¹�','��û���� õ�Ƚ�','�����','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (14,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��������','��°� ��������','��û���� õ�Ƚ�','ȭ����','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (14,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��������','��°� ��������','��û���� õ�Ƚ�','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (14,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��������','��°� ��������','��û���� õ�Ƚ�','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (150,'78','noimg.gif','010-9874-9874',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��� ��� ','��� ���','��⵵/���ν�','ȭ����','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (150,'78','noimg.gif','010-9874-9874',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'��� ��� ','��� ���','��⵵/���ν�','������','���');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (151,'78','noimg.gif','010-9874-9874',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� ���','��Ű� ��','�泲 õ�Ƚ�','�����','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (151,'78','noimg.gif','010-9874-9874',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'���� ���','��Ű� ��','�泲 õ�Ƚ�','�ݿ���','������_����');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (152,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ����
���� : 25��
��� : kh���������� �ֿ��� ����
��� : �Ƹ��Ա�
�����ϴ� ���� : �Ƹ��','�ڹ��� ''��''�ڵ� �𸣽ô� �е鵵 �ڹ� ������ �ϰ� �ص帳�ϴ�. ','�����/������/���ﵿ','ȭ����','IT_JAVA');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (152,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'�̸� : ����
���� : 25��
��� : kh���������� �ֿ��� ����
��� : �Ƹ��Ա�
�����ϴ� ���� : �Ƹ��','�ڹ��� ''��''�ڵ� �𸣽ô� �е鵵 �ڹ� ������ �ϰ� �ص帳�ϴ�. ','�����/������/���ﵿ','������','IT_JAVA');
REM INSERTING into SERVICE_PD
SET DEFINE OFF;
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (54,'1','auction','Ev','�̺�Ʈ','bts.png','admin','BTS ���� �̺�Ʈ',0,100000000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (55,'1','auction','Ev','�̺�Ʈ','twice.png','admin','Twice ���� �̺�Ʈ',0,100000000,'�����','BRONZE',1,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (53,'1','auction','Ev','�̺�Ʈ','bill.png','admin','�������� ���� �̺�Ʈ �ȳ�',0,100000000,'�����','BRONZE',1,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (56,'1','auction','Ev','�̺�Ʈ','lee.png','admin','�Ｚ ����� ��ȸ�� ���� �̺�Ʈ',0,100000000,'�����','BRONZE',2,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (57,'1','auction','Ev','�̺�Ʈ','rain.jpg','admin','���� �� ���� �̺�Ʈ',0,30000000,'�����','BRONZE',0,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (58,'1','auction','Ev','�̺�Ʈ','trump.jpg','admin','Ʈ���� ����� ���� �̺�Ʈ',0,100000000,'�����','BRONZE',0,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (59,'1','auction','Ev','�̺�Ʈ','yjs.jpg','admin','���缮 ���� �̺�Ʈ',0,30000000,'�����','BRONZE',0,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (60,'1','auction','Ev','�̺�Ʈ','messi.jpg','admin','������ �޽ÿ��� ���� �̺�Ʈ',0,100000000,'�����','BRONZE',0,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (61,'1','auction','Ev','�̺�Ʈ','sjs.jpg','admin','������ ���� �̺�Ʈ',0,20000000,'�����','BRONZE',0,to_date('20/07/03','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (62,'1','auction','Ev','�̺�Ʈ','sonjpg.jpg','admin','����� ���� �̺�Ʈ',0,30000000,'�����','BRONZE',2,to_date('20/07/08','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (63,'12','general','Bu','â��','up.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',30000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (64,'12','general','Bu','â��','up1.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',40000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (65,'12','general','Bu','â��','up2.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (66,'12','general','Bu','â��','up3.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',60000,0,'�����','BRONZE',1,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (67,'12','general','Bu','â��','up4.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',70000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (68,'12','auction','Bu','â��','up5.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',0,10000,'�����','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (69,'12','auction','Bu','â��','up6.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',0,20000,'�����','BRONZE',0,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (70,'12','auction','Bu','â��','up7.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (71,'12','auction','Bu','â��','up8.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',0,40000,'�����','BRONZE',0,to_date('20/06/28','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (72,'12','auction','Bu','â��','up9.jpg','test10','â���� ���ʸ� �˷��帳�ϴ�',0,50000,'�����','BRONZE',1,to_date('20/07/04','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (73,'13','general','Ma','������','marketing.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',30000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (74,'13','general','Ma','������','marketing1.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',40000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (75,'13','general','Ma','������','marketing2.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (76,'13','general','Ma','������','marketing3.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',60000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (77,'13','general','Ma','������','marketing4.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',70000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (78,'13','auction','Ma','������','marketing5.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',0,10000,'�����','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (79,'13','auction','Ma','������','marketing6.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',0,20000,'�����','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (80,'13','auction','Ma','������','marketing7.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (81,'13','auction','Ma','������','marketing8.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',0,40000,'�����','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (82,'13','auction','Ma','������','marketing9.png','test11','ȿ������ ������ ����� �˷��帳�ϴ�',0,50000,'�����','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (83,'14','general','Pu','������','gmw.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',10000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (84,'14','general','Pu','������','gmw1.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',20000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (85,'14','general','Pu','������','gmw2.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',30000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (86,'14','general','Pu','������','gmw3.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',40000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (87,'14','general','Pu','������','gmw4.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (88,'14','auction','Pu','������','gmw5.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',0,10000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (89,'14','auction','Pu','������','gmw6.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',0,20000,'�����','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (90,'14','auction','Pu','������','gmw7.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (91,'14','auction','Pu','������','gmw8.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',0,40000,'�����','BRONZE',1,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (92,'14','auction','Pu','������','gmw9.jpg','test12','������ �غ� �ϴ�⸦ ��� �帳�ϴ�',0,50000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (93,'15','general','Fi','����','bank.jpg','test13','������ ����� ���͵帳�ϴ�',10000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (94,'15','general','Fi','����','bank1.jpg','test13','������ ����� ���͵帳�ϴ�',20000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (95,'15','general','Fi','����','bank2.jpg','test13','������ ����� ���͵帳�ϴ�',30000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (96,'15','general','Fi','����','bank3.jpg','test13','������ ����� ���͵帳�ϴ�',40000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (97,'15','general','Fi','����','bank4.jpg','test13','������ ����� ���͵帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (98,'15','auction','Fi','����','bank5.jpg','test13','������ ����� ���͵帳�ϴ�',0,10000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (99,'15','auction','Fi','����','bank6.jpg','test13','������ ����� ���͵帳�ϴ�',0,20000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (100,'15','auction','Fi','����','bank7.jpg','test13','������ ����� ���͵帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (101,'15','auction','Fi','����','bank8.jpg','test13','������ ����� ���͵帳�ϴ�',0,40000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (102,'15','auction','Fi','����','bank9.jpg','test13','������ ����� ���͵帳�ϴ�',0,50000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (103,'22','general','It','IT','eclipse.png','test20','JAVA ���� ���� �� ���� �ص帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (104,'23','general','It','IT','C.png','test21','C# ���� ���� �� ���� �ص帳�ϴ�',70000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (105,'24','general','It','IT','samsung.jpg','test22','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (106,'25','general','It','IT','LGelect.png','test23','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',60000,0,'�����','BRONZE',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (107,'26','general','It','IT','vs.png','test24','�������� ���ʰ��� �ص帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (108,'27','general','It','IT','graphic.jpg','test25','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (109,'27','general','It','IT','python.jpg','test25','���̽� �˷��帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (110,'28','general','It','IT','app.jpg','test26','����� �� ����� ���� ���� �մϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (111,'29','general','It','IT','eclipse1.png','test27','JAVA ���� ���� �� ���� �ص帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (112,'30','general','It','IT','C1.png','test28','C# ���� ���� �� ���� �ص帳�ϴ�',70000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (113,'31','general','It','IT','samsung1.jpg','test29','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (114,'32','general','It','IT','LGelect1.png','test30','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',60000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (115,'33','general','It','IT','vs1.png','test31','�������� ���ʰ��� �ص帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (116,'34','general','It','IT','graphic1.jpg','test32','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (117,'35','general','It','IT','python1.jpg','test33','���̽� �˷��帳�ϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (118,'36','general','It','IT','app1.jpg','test34','����� �� ����� ���� ���� �մϴ�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (119,'37','auction','It','IT','eclipse2.png','test35','JAVA ���� ���� �� ���� �ص帳�ϴ�',0,10000,'�����','BRONZE',1,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (120,'38','auction','It','IT','C2.png','test36','C# ���� ���� �� ���� �ص帳�ϴ�',0,30000,'�����','BRONZE',3,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (121,'39','auction','It','IT','samsung2.jpg','test37','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (122,'40','auction','It','IT','LGelect2.png','test38','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (123,'41','auction','It','IT','vs2.png','test39','�������� ���ʰ��� �ص帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (124,'42','auction','It','IT','graphic2.jpg','test40','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',0,40000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (125,'43','auction','It','IT','python2.jpg','test41','���̽� �˷��帳�ϴ�',0,40000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (126,'44','auction','It','IT','app2.jpg','test42','����� �� ����� ���� ���� �մϴ�',0,40000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (127,'45','auction','It','IT','eclipse3.png','test43','JAVA ���� ���� �� ���� �ص帳�ϴ�',0,40000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (128,'46','auction','It','IT','C3.png','test44','C# ���� ���� �� ���� �ص帳�ϴ�',0,40000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (129,'47','auction','It','IT','samsung3.jpg','test45','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (130,'48','auction','It','IT','LGelect3.png','test46','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�',0,10000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (131,'49','auction','It','IT','vs3.png','test47','�������� ���ʰ��� �ص帳�ϴ�',0,30000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (132,'50','auction','It','IT','graphic3.jpg','test48','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�',0,40000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (133,'51','auction','It','IT','python3.jpg','test49','���̽� �˷��帳�ϴ�',0,10000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (134,'52','auction','It','IT','app3.jpg','test50','����� �� ����� ���� ���� �մϴ�',0,10000,'�����','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (1,'3','general','Ar','����','ȿ����.jpg','test1','�ܱⰣ�� ��Ÿ ������ �ϴ¹��� �˷��帳�ϴ�.',1000000,0,'���','GOLD',3,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (3,'3','auction','Ar','����','����.jpg','test1','��ŵ� ��ź�ҳ���� �� �� �ֽ��ϴ�. ',200000,200000,'���','GOLD',2,to_date('20/06/16','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (2,'3','auction','Ar','����','ȿ����.jpg','test1','�ܱⰣ�� ��ȿ�� ����� ����� �帳�ϴ�.  ',0,1000000,'���','GOLD',3,to_date('20/06/26','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (4,'3','general','Ar','����','���.jpg','test1','��ŵ� �������� �� �� �ֽ��ϴ�. ',300000,0,'���','GOLD',9,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (5,'3','auction','Ar','����','kkang.jpg','test1','1�� 3���� �ϴ� ��ſ���',0,210000,'���','GOLD',3,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (21,'3','general','Ar','����','camera.PNG','test1','�ʸ�ī�޶� ���� ������ ������ �ͽ��ϴ�. ',20000,0,'���','GOLD',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (22,'3','general','Ar','����','mona.jpg','test1','���������� �ٺ�ġó�� �׸��׸��� ',50000,0,'���','GOLD',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (23,'3','auction','Ar','����','ha.jpg','test1','������ó�� �����ϰ� �����ź�',0,50000,'���','GOLD',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (24,'3','auction','Ar','����','magic.jpg','test1','������ ����� �˷��帳�ϴ�. ',800000,800000,'���','GOLD',10,to_date('20/06/23','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (25,'3','general','Ar','����','maaaaaaaaaaaa.jpg','test1','���ӿ� ���� �˷��帳�ϴ�. ',50000,0,'���','GOLD',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (26,'3','general','Ar','����','latteeee.jpg','test1','�󶼾�Ʈ�� ���� �˷��帳�ϴ�. ',80000,0,'���','GOLD',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (28,'4','auction','Ar','����','mona1.jpg','test2','��ŵ� �𳪸��ڸ� �׸� �� �ֽ��ϴ�. ',0,10000,'�����','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (29,'4','auction','Ar','����','ha1.jpg','test2','������ó�� ������ ���� �ǰ� �ͽ��ϱ�?',0,100000,'�����','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (30,'4','general','Ar','����','magic1.jpg','test2','������ ���踦 �����帳�ϴ�. ',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (31,'4','auction','Ar','����','maaaaaaaaaaaa1.jpg','test2','������ ���踦 �����غ�����.',0,100000,'�����','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (32,'5','general','Re','��ľ�','egg.jpg','test3','�丮�� ����Ͻô� ��� �е�',30000,0,'�÷�Ƽ��','PLATINUM',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (33,'5','auction','Re','��ľ�','back.jpg','test3','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',0,200000,'�÷�Ƽ��','PLATINUM',1,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (34,'6','general','Re','��ľ�','pizza.jpg','test4','���� �������� �����帳�ϴ�. ',50000,0,'�ǹ�','SILVER',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (35,'6','auction','Re','��ľ�','back1.jpg','test4','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',0,100000,'�ǹ�','SILVER',2,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (36,'6','auction','Re','��ľ�','pizza1.jpg','test4','���� �������� �����帳�ϴ�. ',0,100000,'�ǹ�','SILVER',0,to_date('20/07/10','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (37,'6','general','Re','��ľ�','pizza2.jpg','test4','���� �������� �����帳�ϴ�.',50000,0,'�ǹ�','SILVER',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (38,'6','general','Re','��ľ�','back2.jpg','test4','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.',10000,0,'�ǹ�','SILVER',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (39,'6','general','Re','��ľ�','egg1.jpg','test4','�丮�� ����Ͻô� ��� �е�',50000,0,'�ǹ�','SILVER',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (40,'6','auction','Re','��ľ�','cheese.jpg','test4','ġ� ���� �̾߱�',0,50000,'�ǹ�','SILVER',0,to_date('20/06/17','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (41,'6','general','Re','��ľ�','cho.jpg','test4','�ʹ������� ����ִ� �ʹ��̾߱�',50000,0,'�ǹ�','SILVER',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (42,'7','general','Me','�Ƿ�','medi.jpg','test5','��簡 �Ǳ������ ����',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (43,'7','auction','Me','�Ƿ�','doctor.jpg','test5','�ǻ簡 �ñ��Ͻ� ��� �е鿡��',0,100000,'�����','BRONZE',1,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (44,'7','general','Me','�Ƿ�','bang.jpg','test5','��缱�翡 ���� �ñ��Ͻ� ���е�',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (45,'7','auction','Me','�Ƿ�','doctor1.jpg','test5','�ǻ簡 �ñ��Ͻ� ���в�',0,100000,'�����','BRONZE',2,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (46,'7','auction','Me','�Ƿ�','bang1.jpg','test5','��缱�翡 ���� �ñ��Ͻ� ���е�',0,100000,'�����','BRONZE',0,to_date('20/07/06','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (47,'7','auction','Me','�Ƿ�','medi1.jpg','test5','��簡 �Ǳ������ ����',0,100000,'�����','BRONZE',1,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (48,'7','general','Fa','�м�','fassion.jpg','test5','��2�� �ӵ巹���� �޲ٴ� �е鿡�� ',60000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (49,'7','auction','Fa','�м�','kian.jpg','test5','�мǼ����� ��� 84�� �е鲲',0,100000,'�����','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (50,'7','general','Fa','�м�','kian1.jpg','test5','�мǼ����� ��� 84�� �е鲲',50000,0,'�����','BRONZE',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (51,'7','auction','Sp','������','me.jpg','test5','����� �ϻ��� �޽÷� �����帳�ϴ�. ',0,100000,'�����','BRONZE',1,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (52,'8','general','Sp','������','son.jpg','test6','���� ������� �ɼ��ִ� �����౸15���̻� �����԰� �౸���� �帳�ϴ�.',50000,0,'�����','BRONZE',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (6,'10','general','Sp','������','re.jpg','test8','��Ʃ�� ��������ġ�� �ø��ȷ����� �˷� �帳�ϴ�.',100000,0,'�����','BRONZE',2,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (6,'10','general','Sp','������','people.jpg','test8','��Ʃ�� ��������ġ�� �ø��ȷ����� �˷� �帳�ϴ�.',100000,0,'�����','BRONZE',2,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (7,'10','auction','Sp','������','wooooo.jpg','test8','����� ��Ʈó�� �ǰ�����ôٸ� Ŭ���ϼ���',0,50000,'�����','BRONZE',0,to_date('20/06/26','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (8,'10','general','Sp','������','pick.jpg','test8','������ ���, ���, ��۽�ƿ �Կ��� �帳�ϴ�.',50000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (9,'10','general','Fa','�м�','fasion.jpg','test8','�˾Ƶθ� ���� �мǵ����� �Թ��ڸ� ���� ���������� �˷� �帳�ϴ�.',10000,0,'�����','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (10,'10','auction','Fa','�м�','beauty.jpg','test8','��Ƽ �̹��� ������ : ���, ����ũ�� ������ �� �帳�ϴ�.',0,50000,'�����','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (11,'10','auction','Fa','�м�','upup.png','test8','�мǰ��� ����ñ����� �ذ��� �帳�ϴ�.',0,30000,'�����','BRONZE',13,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (12,'73','auction','Re','��ľ�','beauty4.jpg','tmdgns','�������',1111777,1111777,'�����','BRONZE',1,to_date('20/06/19','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (13,'73','auction','Re','��ľ�','beauty5.jpg','tmdgns','�������',1111777,1111777,'�����','BRONZE',2,to_date('20/06/19','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (14,'73','auction','Ar','����','fasion1.jpg','tmdgns','�Խñ� ��ϵǳ�',60000,60000,'�����','BRONZE',3,to_date('20/06/22','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (150,'78','general','Ar','����','re1.jpg','sell','��ʹ��',10000,0,'�����','BRONZE',102,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (151,'78','auction','Ar','����','fasion2.jpg','sell','��Ű� ��',100000,100000,'�����','BRONZE',113,to_date('20/06/23','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (152,'3','auction','It','IT','YS.jpg','test1','�ڹ� �������ϰ��ص帳�ϴ�. ',0,300000,'���','GOLD',1,to_date('20/06/30','RR/MM/DD'),'Y');
REM INSERTING into SERVICE_REVIEW_INFO
SET DEFINE OFF;
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('3','1','admin',5,'�� ���� ���̾�','Y',to_date('20/06/22','RR/MM/DD'));
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('73','1','admin',3,'�� ���̾�','Y',to_date('20/06/22','RR/MM/DD'));
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('8','1','admin',5,'�׽�Ʈ��','N',to_date('20/06/23','RR/MM/DD'));
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('12','1','admin',5,'������������','N',to_date('20/06/23','RR/MM/DD'));
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('78','80','buy2',4,'���� �����Ѱž�','N',to_date('20/06/23','RR/MM/DD'));
REM INSERTING into SERVICE_SELL_LIST
SET DEFINE OFF;
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (152,'3','�ڹ� �������ϰ��ص帳�ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (151,'78','��Ű� ��','N','��������','010-3214-6547',4,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (150,'78','��ʹ��','N','��������','010-9874-6547',null,'Y');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (134,'52','����� �� ����� ���� ���� �մϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (133,'51','���̽� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (132,'50','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (131,'49','�������� ���ʰ��� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (130,'48','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (129,'47','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (128,'46','C# ���� ���� �� ���� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (127,'45','JAVA ���� ���� �� ���� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (126,'44','����� �� ����� ���� ���� �մϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (125,'43','���̽� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (124,'42','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (123,'41','�������� ���ʰ��� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (122,'40','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (121,'39','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (120,'38','C# ���� ���� �� ���� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (119,'37','JAVA ���� ���� �� ���� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (118,'36','����� �� ����� ���� ���� �մϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (117,'35','���̽� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (116,'34','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (115,'33','�������� ���ʰ��� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (114,'32','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (113,'31','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (112,'30','C# ���� ���� �� ���� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (111,'29','JAVA ���� ���� �� ���� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (110,'28','����� �� ����� ���� ���� �մϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (109,'27','���̽� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (108,'27','�׷��� �����̳ʰ� �Ǳ� ���� ���� ���Ǹ� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (107,'26','�������� ���ʰ��� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (106,'25','�� LG���� �������� �������� ��� �� �ϴ� ���� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (105,'24','�Ｚ �ݵ�ü�о� ��� ��� �� �ϴ� ���� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (104,'23','C# ���� ���� �� ���� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (103,'22','JAVA ���� ���� �� ���� �ص帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (102,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (101,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (100,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (99,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (98,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (97,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (96,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (95,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (94,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (93,'15','������ ����� ���͵帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (92,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (91,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (90,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (89,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (88,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (87,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (86,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (85,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (84,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (83,'14','������ �غ� �ϴ�⸦ ��� �帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (82,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (81,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (80,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (79,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (78,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (77,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (76,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (75,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (74,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (73,'13','ȿ������ ������ ����� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (72,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (71,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (70,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (69,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (68,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (67,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (66,'12','â���� ���ʸ� �˷��帳�ϴ�','N','admin','01012341344',5,'Y');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (65,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (64,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (63,'12','â���� ���ʸ� �˷��帳�ϴ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (62,'1','����� ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (61,'1','������ ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (60,'1','������ �޽ÿ��� ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (59,'1','���缮 ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (58,'1','Ʈ���� ����� ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (57,'1','���� �� ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (56,'1','�Ｚ ����� ��ȸ�� ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (55,'1','Twice ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (54,'1','BTS ���� �̺�Ʈ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (53,'1','�������� ���� �̺�Ʈ �ȳ�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (52,'8','���� ������� �ɼ��ִ� �����౸15���̻� �����԰� �౸���� �帳�ϴ�.','Y','admin','01012341344',5,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (51,'7','����� �ϻ��� �޽÷� �����帳�ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (50,'7','�мǼ����� ��� 84�� �е鲲','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (49,'7','�мǼ����� ��� 84�� �е鲲','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (48,'7','��2�� �ӵ巹���� �޲ٴ� �е鿡�� ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (47,'7','��簡 �Ǳ������ ����','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (46,'7','��缱�翡 ���� �ñ��Ͻ� ���е�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (45,'7','�ǻ簡 �ñ��Ͻ� ���в�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (44,'7','��缱�翡 ���� �ñ��Ͻ� ���е�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (43,'7','�ǻ簡 �ñ��Ͻ� ��� �е鿡��','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (42,'7','��簡 �Ǳ������ ����','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (41,'6','�ʹ������� ����ִ� �ʹ��̾߱�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (40,'6','ġ� ���� �̾߱�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (39,'6','�丮�� ����Ͻô� ��� �е�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (38,'6','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (37,'6','���� �������� �����帳�ϴ�.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (36,'6','���� �������� �����帳�ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (35,'6','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (34,'6','���� �������� �����帳�ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (33,'5','���������� ��ľ����� ��ΰ� �ǰ� �ص帳�ϴ�.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (32,'5','�丮�� ����Ͻô� ��� �е�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (31,'4','������ ���踦 �����غ�����.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (30,'4','������ ���踦 �����帳�ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (29,'4','������ó�� ������ ���� �ǰ� �ͽ��ϱ�?','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (28,'4','��ŵ� �𳪸��ڸ� �׸� �� �ֽ��ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (26,'3','�󶼾�Ʈ�� ���� �˷��帳�ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (25,'3','���ӿ� ���� �˷��帳�ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (24,'3','������ ����� �˷��帳�ϴ�. ','N','��������','010-3214-6547',null,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (23,'3','������ó�� �����ϰ� �����ź�','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (22,'3','���������� �ٺ�ġó�� �׸��׸��� ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (21,'3','�ʸ�ī�޶� ���� ������ ������ �ͽ��ϴ�. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (14,'73','�Խñ� ��ϵǳ�','N','admin','01012341344',3,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (13,'73','�������','N','admin','01012341344',null,'Y');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (12,'73','�������','Y','admin','01012341344',null,'Y');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (11,'10','�мǰ��� ����ñ����� �ذ��� �帳�ϴ�.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (10,'10','��Ƽ �̹��� ������ : ���, ����ũ�� ������ �� �帳�ϴ�.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (9,'10','�˾Ƶθ� ���� �мǵ����� �Թ��ڸ� ���� ���������� �˷� �帳�ϴ�.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (8,'10','������ ���, ���, ��۽�ƿ �Կ��� �帳�ϴ�.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (7,'10','����� ��Ʈó�� �ǰ�����ôٸ� Ŭ���ϼ���','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (6,'10','��Ʃ�� ��������ġ�� �ø��ȷ����� �˷� �帳�ϴ�.','N','admin','01012341344',null,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (5,'3','1�� 3���� �ϴ� ��ſ���','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (4,'3','��ŵ� �������� �� �� �ֽ��ϴ�. ','Y','admin','01012341344',5,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (3,'3','��ŵ� ��ź�ҳ���� �� �� �ֽ��ϴ�. ','N','admin','01012341344',null,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (2,'3','�ܱⰣ�� ��ȿ�� ����� ����� �帳�ϴ�.  ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (1,'3','�ܱⰣ�� ��Ÿ ������ �ϴ¹��� �˷��帳�ϴ�.','N','admin','01012341344',null,'N');
REM INSERTING into TRANSACTIONLIST
SET DEFINE OFF;
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (10,24,to_date('20/06/23','RR/MM/DD'),'3','80','N');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (12,151,to_date('20/06/23','RR/MM/DD'),'78','80','N');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (11,150,to_date('20/06/23','RR/MM/DD'),'78','79','Y');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (9,66,to_date('20/06/23','RR/MM/DD'),'12','1','Y');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (8,6,to_date('20/06/23','RR/MM/DD'),'10','1','N');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (7,1,to_date('20/06/22','RR/MM/DD'),'3','1','N');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (6,52,to_date('20/06/22','RR/MM/DD'),'8','1','N');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (5,3,to_date('20/06/22','RR/MM/DD'),'3','1','N');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (4,4,to_date('20/06/22','RR/MM/DD'),'3','1','N');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (3,14,to_date('20/06/22','RR/MM/DD'),'73','1','N');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (2,12,to_date('20/06/22','RR/MM/DD'),'73','1','Y');
Insert into TRANSACTIONLIST ("ROWNUM",SERVICE_NO,TRADE_DATE,S_USER_NO,B_USER_NO,REFUND_YN) values (1,13,to_date('20/06/22','RR/MM/DD'),'73','1','Y');
--------------------------------------------------------
--  DDL for Index PK_ACCOUNT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ACCOUNT" ON "ACCOUNT" ("ACCOUNT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BOARD" ON "BOARD" ("BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BUYER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BUYER" ON "BUYER" ("B_USER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_B_CATEGORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_B_CATEGORY" ON "B_CATEGORY" ("BOARD_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CATEGORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CATEGORY" ON "CATEGORY" ("CATEGORY_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_DAYS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DAYS" ON "DAYS" ("AVAILABLE_DATE", "SERVICE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FILES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FILES" ON "FILES" ("FID", "BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_GRADE_CLASS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_GRADE_CLASS" ON "GRADE_CLASS" ("GRADE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_INQUIARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_INQUIARY" ON "INQUIARY" ("BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_INQUIARY_TYPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_INQUIARY_TYPE" ON "INQUIARY_TYPE" ("BOARD_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_LIST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_LIST" ON "LIST" ("SERVICE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MEMBER" ON "MEMBER" ("USER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PROFILE_FILES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROFILE_FILES" ON "PROFILE_FILES" ("FID", "USER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REPORT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REPORT" ON "REPORT" ("BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REPORT_TYPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REPORT_TYPE" ON "REPORT_TYPE" ("REPORT_TYPE") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REVIEW" ON "REVIEW" ("BOARD_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SELLER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SELLER" ON "SELLER" ("S_USER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SERVICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SERVICE" ON "SERVICE" ("SERVICE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_SERVICE_FILES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SERVICE_FILES" ON "SERVICE_FILES" ("FID", "SERVICE_NO") 
  ;
--------------------------------------------------------
--  Constraints for Table ACCOUNT
--------------------------------------------------------

  ALTER TABLE "ACCOUNT" MODIFY ("ACCOUNT" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("BANK" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("ACCOUNT_HOLD" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "PK_ACCOUNT" PRIMARY KEY ("ACCOUNT") ENABLE;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("WRITE_DATE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("BOARD_CODE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table BUYER
--------------------------------------------------------

  ALTER TABLE "BUYER" ADD CONSTRAINT "PK_BUYER" PRIMARY KEY ("B_USER_NO") ENABLE;
  ALTER TABLE "BUYER" MODIFY ("REPORT_NUM" NOT NULL ENABLE);
  ALTER TABLE "BUYER" MODIFY ("B_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "BUYER" MODIFY ("BUYCOUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table B_CATEGORY
--------------------------------------------------------

  ALTER TABLE "B_CATEGORY" MODIFY ("BOARD_CODE" NOT NULL ENABLE);
  ALTER TABLE "B_CATEGORY" ADD CONSTRAINT "PK_B_CATEGORY" PRIMARY KEY ("BOARD_CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "CATEGORY" MODIFY ("CATEGORY_CODE" NOT NULL ENABLE);
  ALTER TABLE "CATEGORY" MODIFY ("CATEGORY_NAME" NOT NULL ENABLE);
  ALTER TABLE "CATEGORY" ADD CONSTRAINT "PK_CATEGORY" PRIMARY KEY ("CATEGORY_CODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table DAYS
--------------------------------------------------------

  ALTER TABLE "DAYS" MODIFY ("AVAILABLE_DATE" NOT NULL ENABLE);
  ALTER TABLE "DAYS" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "DAYS" ADD CONSTRAINT "PK_DAYS" PRIMARY KEY ("AVAILABLE_DATE", "SERVICE_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table FILES
--------------------------------------------------------

  ALTER TABLE "FILES" MODIFY ("FID" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("ORIGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("CHANGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("FILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("UPLOAD_DATE" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("DOWNLOAD_COUNT" NOT NULL ENABLE);
  ALTER TABLE "FILES" ADD CONSTRAINT "PK_FILES" PRIMARY KEY ("FID", "BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE_CLASS
--------------------------------------------------------

  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_NO" NOT NULL ENABLE);
  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_MIN" NOT NULL ENABLE);
  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_MAX" NOT NULL ENABLE);
  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_NAME" NOT NULL ENABLE);
  ALTER TABLE "GRADE_CLASS" ADD CONSTRAINT "PK_GRADE_CLASS" PRIMARY KEY ("GRADE_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table INQUIARY
--------------------------------------------------------

  ALTER TABLE "INQUIARY" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "INQUIARY" MODIFY ("INQUIRY_YN" NOT NULL ENABLE);
  ALTER TABLE "INQUIARY" MODIFY ("BOARD_TYPE" NOT NULL ENABLE);
  ALTER TABLE "INQUIARY" ADD CONSTRAINT "PK_INQUIARY" PRIMARY KEY ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table INQUIARY_TYPE
--------------------------------------------------------

  ALTER TABLE "INQUIARY_TYPE" MODIFY ("BOARD_TYPE" NOT NULL ENABLE);
  ALTER TABLE "INQUIARY_TYPE" ADD CONSTRAINT "PK_INQUIARY_TYPE" PRIMARY KEY ("BOARD_TYPE") ENABLE;
--------------------------------------------------------
--  Constraints for Table LIST
--------------------------------------------------------

  ALTER TABLE "LIST" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("TRADE_DATE" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("S_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("B_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("REFUND_YN" NOT NULL ENABLE);
  ALTER TABLE "LIST" ADD CONSTRAINT "PK_LIST" PRIMARY KEY ("SERVICE_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("USER_PWD" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("POINT" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ENROLL_DATE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("GRADE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("GRADE_TOT" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("USER_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFILE_FILES
--------------------------------------------------------

  ALTER TABLE "PROFILE_FILES" MODIFY ("FID" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" MODIFY ("ORIGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" MODIFY ("CHANGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" MODIFY ("FILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" ADD CONSTRAINT "PK_PROFILE_FILES" PRIMARY KEY ("FID", "USER_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table REPORT
--------------------------------------------------------

  ALTER TABLE "REPORT" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "REPORT" MODIFY ("RE_YN" NOT NULL ENABLE);
  ALTER TABLE "REPORT" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "REPORT" MODIFY ("REPORT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "REPORT" ADD CONSTRAINT "PK_REPORT" PRIMARY KEY ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table REPORT_TYPE
--------------------------------------------------------

  ALTER TABLE "REPORT_TYPE" MODIFY ("REPORT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "REPORT_TYPE" ADD CONSTRAINT "PK_REPORT_TYPE" PRIMARY KEY ("REPORT_TYPE") ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("RATING" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("S_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table SELLER
--------------------------------------------------------

  ALTER TABLE "SELLER" MODIFY ("REPORT_NUM" NOT NULL ENABLE);
  ALTER TABLE "SELLER" MODIFY ("S_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "SELLER" MODIFY ("SELLCOUNT" NOT NULL ENABLE);
  ALTER TABLE "SELLER" ADD CONSTRAINT "PK_SELLER" PRIMARY KEY ("S_USER_NO") ENABLE;
--------------------------------------------------------
--  Constraints for Table SERVICE
--------------------------------------------------------

  ALTER TABLE "SERVICE" MODIFY ("SALE_INFO" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("AVAILABLE_AREA" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("READCOUNT" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("FILE_YN" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("SALEMETHOD" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("CATEGORY_CODE" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("CONTACTTIME_START" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("CONTACTTIME_FINISH" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("REGISTER_DATE" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("S_EXPLAIN" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" ADD CONSTRAINT "PK_SERVICE" PRIMARY KEY ("SERVICE_NO") ENABLE;
  ALTER TABLE "SERVICE" MODIFY ("SERVICE_STATUS" CONSTRAINT "STATUS_NN" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("S_USER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SERVICE_FILES
--------------------------------------------------------

  ALTER TABLE "SERVICE_FILES" MODIFY ("FID" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("ORIGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("CHANGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("FILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("UPLOAD_DATE" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" ADD CONSTRAINT "PK_SERVICE_FILES" PRIMARY KEY ("FID", "SERVICE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DAYS
--------------------------------------------------------

  ALTER TABLE "DAYS" ADD CONSTRAINT "FK_SERVICE_TO_DAYS_1" FOREIGN KEY ("SERVICE_NO")
	  REFERENCES "SERVICE" ("SERVICE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FILES
--------------------------------------------------------

  ALTER TABLE "FILES" ADD CONSTRAINT "FK_BOARD_TO_FILES_1" FOREIGN KEY ("BOARD_NO")
	  REFERENCES "BOARD" ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INQUIARY
--------------------------------------------------------

  ALTER TABLE "INQUIARY" ADD CONSTRAINT "FK_BOARD_TO_INQUIARY_1" FOREIGN KEY ("BOARD_NO")
	  REFERENCES "BOARD" ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIST
--------------------------------------------------------

  ALTER TABLE "LIST" ADD CONSTRAINT "FK_SERVICE_TO_LIST_1" FOREIGN KEY ("SERVICE_NO")
	  REFERENCES "SERVICE" ("SERVICE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROFILE_FILES
--------------------------------------------------------

  ALTER TABLE "PROFILE_FILES" ADD CONSTRAINT "FK_MEMBER_TO_PROFILE_FILES_1" FOREIGN KEY ("USER_NO")
	  REFERENCES "MEMBER" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPORT
--------------------------------------------------------

  ALTER TABLE "REPORT" ADD CONSTRAINT "FK_BOARD_TO_REPORT_1" FOREIGN KEY ("BOARD_NO")
	  REFERENCES "BOARD" ("BOARD_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SERVICE_FILES
--------------------------------------------------------

  ALTER TABLE "SERVICE_FILES" ADD CONSTRAINT "FK_SERVICE_TO_SERVICE_FILES_1" FOREIGN KEY ("SERVICE_NO")
	  REFERENCES "SERVICE" ("SERVICE_NO") ENABLE;
