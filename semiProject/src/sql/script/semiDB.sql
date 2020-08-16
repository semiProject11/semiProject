--------------------------------------------------------
--  파일이 생성됨 - 화요일-6월-23-2020   
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
FROM MEMBER M  -- 멤버는 구매자 번호 / 즉, 게시물 작성자는 구매자이다. (구매자 아이디)
JOIN BOARD B ON(B.USER_NO = M.USER_NO) -- 게시물은 구매자가 리뷰에 달은 (제목, 내용, 작성일자, 게시물상태)
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
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('11111111111','국민은행','테스트','2');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('1','국민은행','테스트','3');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('99999999','admin은행','admin','1');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('2','국민은행','테스트','4');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('3','국민은행','테스트','5');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('4','국민은행','테스트','6');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('5','국민은행','테스트','7');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('6','국민은행','테스트','8');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('7','국민은행','테스트','9');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('8','국민은행','테스트','10');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('9','국민은행','테스트','11');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('10','국민은행','테스트','12');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('11','국민은행','테스트','13');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('12','국민은행','테스트','14');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('13','국민은행','테스트','15');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('14','국민은행','테스트','16');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('15','국민은행','테스트','17');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('16','국민은행','테스트','18');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('17','국민은행','테스트','19');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('18','국민은행','테스트','20');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('19','국민은행','테스트','21');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('20','국민은행','테스트','22');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('21','국민은행','테스트','23');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('22','국민은행','테스트','24');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('23','국민은행','테스트','25');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('24','국민은행','테스트','26');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('25','국민은행','테스트','27');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('26','국민은행','테스트','28');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('27','국민은행','테스트','29');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('28','국민은행','테스트','30');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('29','국민은행','테스트','31');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('30','국민은행','테스트','32');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('31','국민은행','테스트','33');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('32','국민은행','테스트','34');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('33','국민은행','테스트','35');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('34','국민은행','테스트','36');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('35','국민은행','테스트','37');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('36','국민은행','테스트','38');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('37','국민은행','테스트','39');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('38','국민은행','테스트','40');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('39','국민은행','테스트','41');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('40','국민은행','테스트','42');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('41','국민은행','테스트','43');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('42','국민은행','테스트','44');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('43','국민은행','테스트','45');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('44','국민은행','테스트','46');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('45','국민은행','테스트','47');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('46','국민은행','테스트','48');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('47','국민은행','테스트','49');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('48','국민은행','테스트','50');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('49','국민은행','테스트','51');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('50','국민은행','테스트','52');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('55555555','국민은행','테스트다섯','53');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('110330320','국민은행','변승훈','73');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('1111111111','국민은행','변승훈','74');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('987654321654987','신한은행','판매자','78');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('321654987','IBK은행','구매자일','79');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('1234533336235515','국민은행','구매자이','80');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('1111111111112','국민은행','변승훈','81');
Insert into ACCOUNT (ACCOUNT,BANK,ACCOUNT_HOLD,USER_NO) values ('999999999','국민은행','변승훈','82');
REM INSERTING into BOARD
SET DEFINE OFF;
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (53,'[공지]타임셀러 내 불법 홍보메시지 관련 사과문 및 후속 조치 안내','안녕하세요, 타임셀러팀입니다.

 

타임셀러를 이용해주시고 사랑해주시는 분들에게 불미스러운 일이 일어나서

이에 대한 사과문을 올리고자 공지사항을 작성하게 되었습니다.

 

최근 타임셀러와 같은 유사사이트의 홍보성 메시지로 인하여

많은 회원분들이 피해를 입으셨고 이에 고객센터로 많은 피해신고가 접수되었습니다.

이에 대한 후속조치로 해당 IP를 추적, 관련 기업의 타임셀러 이용이 영구제한 되었음을 알려드립니다.

 

 

 해당 ID

 

Jande / Angelguy1 / kwgno1 / aosxktmno2 / kyt9011

rlaalstjrno1 / rlaalstjrno2

 

사유: 불법 자사 사이트 홍보

 

추후 지속적인 모니터링을 통하여 직거래 유도 혹은 홍보성 메시지 발송과 관련하여

당 고객센터는 피해를 입는 회원이 생기지 않도록 불가피하게 이용정지 등의 패널티가 적용될 예정입니다.

 

우수 회원님들의 경우 다양한 프로모션을 통해

많은 혜택을 드릴 수 있도록 노력하는 타임셀러가 되겠습니다.

타임셀러에 바라시는 점이 있으시다면 언제든 홈페이지(www.timeseller.com) 하단의 고객센터로 메일 부탁드리며

불미스러운 일 없이 더욱 발전하는 타임셀러가 되겠습니다.

 

많은 이용 부탁드립니다.
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (54,'[공지] 카카오톡 타임셀러 플친 추가방법!','
안녕하세요, 타임셀러입니다.

얼마 전에 카카오톡이 업데이트를 실행하면서

플러스친구를 검색할 수 있던 카테고리가 채널로 변경되었습니다.

이에 따라 많은 분들이 플러스친구에서 타임셀러를 찾을 수 없다는 문의를 많이 해주고 계신데요,

이번 공지사항을 통해 검색하는 방법을 알려드리겠습니다. 
 아래의 이미지와 설명을 참고해주세요.



1. 화살표가 가리키고 있는 것을 클릭한다.

 
2. 아래의 화면이 나타나면 타임셀러 혹은 @타임셀러를 검색한다.


3. 친구 추가 버튼을 누른다.



저는 이미 친구 추가가 된 상태라 버튼이 노출이 안되는데요,

노란색 사람이 담겨있는 버튼을 누르시면 친구 추가가 됩니다!

 

총 3단계를 거치면 완료되는 타임셀러 친구 추가하기, 참 쉽죠?

 

앞으로도 타임셀러 플러스친구와 타임셀러 계속 애용해주세요!

감사합니다!

 사....사...아니 좋아합니다!','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (56,'[공지] 저작권 관련 내용 및 안내사항','
안녕하세요, 타임셀러입니다!

요즘 추웠다가 안 추웠다가를 반복하고 있는 변덕의 계절이 찾아왔습니다.

덕분에 감기도 실컷 걸리고 몸져 눕기도 수차례하고 있습니다.

 

많은 판&구매자님들이 중요한 부분이지만 놓치고 계신 분들이 많은 것으로 생각되어 이렇게 공지를 통해 전달드립니다.

전달 드릴 사항은 바로 저작권 관련 내용입니다.

 

판매자님께서는 재능 판매와 관련된 내용 중 저작권법에 접촉되는 내용이 있을 경우 해당 권리를 반드시 구매하시고

재능 작업을 해주셔야 문제가 발생하지 않습니다.( 서체 라이센스 or 이미지 라이센스 등)

 

또한 재능거래시에 저작권법 관련 문제가 발생되어 소송까지 가는 경우가 발생되지 않도록

판매자님과 구매자님 모두 모두 ''저작권''을 꼭 확인해주세요!!!!!!!!

특히 구매자님들께서도 구매하는 재능이 상업적, 비상업적 등 어떠한 용도로 활용할 것인가에 대해

해당 판매자님에게 꼭 문의를 해주셔야 합니다!

 

 

저작권 침해가 인정될만한 소지가 있을 시 필히 체크해주시길 바라며 상호 간의 거래가 안전하게 이루어질 수 있기를 바랍니다.

추워진 날씨에 감기 걸리지 않도록 조심하세요!','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (57,'[공지]제 1회 타임셀러 어워즈를 진행합니다.','
올해도 어김없이 돌아온 연말!

타임셀러팀에서도 어김없이 돌아온 연말을 위해

 

올 한해도 열심히 재능시장 확장에 기여해주신

우수 재능인분들을 위한 어워즈를 준비했습니다



 올해는 작년보다 수상자분들을 정하기가 더 어려웠는데요

팀 내에서 고심 끝에 여러가지 기준을 토의 한 뒤에

수상 후보자분들에게 저번주부터 연락을 드리고 있답니다.

 

아쉽게도 이번 제 1회 어워즈는 초청 받으신 분만 입장이 가능 하신데요

이번에 아주 아쉽게 타임셀러어워즈 후보에

들지는 못하셨지만 타임셀러에서 올 한해

재능판매에 힘써주신 모든 분들께 감사의 마음을 전합니다.

 
 많은 성장을 이룬 3년

 
그 이상을 이루기 위해 올 한해 획기적인 사이트 단장에  힘 쏟을 것을 약속 드리겠습니다 !
감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (58,'[공지] 재능등록 페이지 개선관련 안내','안녕하세요, 타임셀러입니다.

오늘 공지사항을 통해 전달 드릴 내용은 타임셀러 재능 클린 정책 시행에 따른 안내입니다.

 

1. 카테고리 세분화 작업

 

새롭게 카테고리들이 구성되어 기존 재능들에 대한 정화작업이 순차적으로 진행되고 있습니다.
판매자 분들의 경우 회원님들의 재능을 검토 하시어 재능을 상품화하여 주시고 새로운 카테고리에 맞게 재구성 부탁드립니다.

 

카테고리 설정기준

 

-  1개 카테고리에 중복 재능 판매불가
-  여러 카테고리에 유사 재능 판매가능
-  1개 카테고리에 다른 재능 판매 가능(단순 가격 상이 재능 해당없음)
-  여러 카테고리에 적용 가능한 재능을 하나로 구성 불가

 

 

 2. 모니터 타임셀러가 출격

 

재능클린정책을 효과적으로 운영하기 위하여 모니터링 직원이 카테고리에 맞게 재능의 집을 찾아드리고 있으며

재능 승인부서와 협력하여 수정이 필요한 재능들에 대하여 가이드 안내 작업을 진행 하고 있습니다. 

또한 회원님들의 피해방지를 위하여

모든 채널을 동원하여 깨끗한 타임셀러를 만들기 위하여 두눈 크게 뜨고 청소하고 있답니다.
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (59,'[공지] 서버 개선 작업으로 인한 이용 제한 공지','2020년 7월 2일,  새로운 변화의 바람이 붑니다 !

보다 편리해질 타임셀러를 위한 준비 작업으로,

2020년 7월 1일 22:30 ~ 7월 2일 02:00 타임셀러 이용이 아주 잠시 제한됩니다.



무엇이 바뀌나요 ?

 

[마이페이지]
타임셀러에서의 모든 활동 및 공지들을 한 눈에 확인할 수 있습니다.

 

[프로필]

보다 다양한 정보들을 제공합니다.

 

[판매/구매]

각 상황 별로 필요한 버튼들만 쏙쏙 보여주어, 보다 빠르고 편리한 거래가 가능합니다.
기존 - 구매자의 결제 > 판매자의 주문접수 > 거래시작
  변경 - 구매자의 결제 > 거래시작 (구매자의 결제가 시작되면, 즉시 거래가 시작됩니다.)
 

-----------------------------------------------------------------------------------

 

[명칭]

2020년 7월 2일부터, 판/구매의 주체가 전문가와 의뢰인으로 바뀝니다.

전문가와 의뢰인의 프로페셔널함을 기반으로 한 거래를 기대합니다.

 

[그리고 …]

이외에도 많은 부분들이 업그레이드 될 타임셀러, 기대되시나요 ?

곧 새로워질 타임셀러를 위해,

2020년 7월 1일 22:30 ~ 7월 2일 02:00 잠시만 기다려주세요 !

','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (60,'[공지] 전문가를 위한 포인트 및 판매관리 페이지 개선 안내','안녕하세요, 타임셀러입니다:)

오늘은 타임셀러 내 서비스를 판매 중인 전문가를 위한 

3가지 희소식을 전해드리고자 합니다 !

 

 

하나, 전문가에게 판매 마일리지를 드립니다. 

  - 정식 명칭: 전문가 마일리지

  - 지급 시점: 의뢰인의 구매확정 시점

  - 지급 비율: 최종 판매 금액의 5%

                 (지급 비율은 추후 변동 가능, 12.8 (목) 오후 2시 이후 시작된 거래 건부터 마일리지 지급)

  - 사용처: 타임셀러 내 상위노출 광고 상품 (플러스 광고, 프리미엄 광고) 구매 

  - 유효기간: 적립일을 기준으로 1년이며, 현금 환불 또는 직접 충전은 불가능합니다.

 

 

둘, 판매관리 페이지가 한 층 더 편하고 다양해집니다. 

  - 판매관리 / 수익관리 / 적립금관리 / 광고 결제 관리 등 ...다양한 정보들을 모두 담았습니다.

 

 

셋, 신규 전문가에게 마일리지 50,000원을 드립니다.

  - 타임셀러 사이트에서 첫 서비스를 등록한 신규 전문가에게 50,000원의 전문가 마일리지를 지원해드립니다.

     (과거 판매 등록한 이력이 있는 전문가는 해당되지 않습니다.)

  - 지급된 50,000원을 통해, 전문가는 타임셀러의 상위노출 광고 상품만을 구매할 수 있으며 마일리지의 유효기간은 1년입니다.

  - 서비스 등록은 PC에서만 가능합니다.

  - 해당 프로모션은 단기성 이벤트로써, 조기종료되거나 마일리지 지급 금액이 변동될 수 있습니다.

 

기존 판매관리의 장점은 그대로 유지하고, 단점만을 보완한 이번 개편에

많은 기대와 관심 부탁드리겠습니다:)','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (61,'[공지](타임셀러서포터즈 모집) TimeSeller+influencer=Tinfluencer','안녕하세요, 타임셀러입니다:D
타임셀러에서 직접 특별한 체험단을 모집합니다!타임셀러의 서비스를 경험하고
블로그&인스타그램 등에 멋진 포스팅 남겨주실 크리에이터를 모집합니다. ^0^  

자세한 내용은 하단 이미지를 참고해주세요!
함께해요, 인플루언서!!


-모집기간 및 인원: ~2018.5.29 / 총10명 (2020.7.31 개별발표) 
-신청조건: 블로그 일 방문자 2000명 이상   
-신청방법: 하단 구글 폼을 작성해주세요:D

 
 
선정되신 분들께는 개별 연락을 드립니다 :) 


                            ','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (64,'[공지]창업 관련 서비스 거래 유의사항','
안녕하세요. 내일을 만나는 마켓, 타임셀러입니다! ♥

창업 제도가 활발해지고 새로운 아이디어들이 쏟아지는 요즘,
회원님들께서도 ''창업'', ''사업 계획''에 많은 관심을 가지고 계시죠?
타임셀러에서도 다양한 창업 관련 서비스를 거래하실 수 있는데요, 
더욱 안전하고 성공적인 비즈니스를 위하여 거래 관련 유의 사항을 반드시 확인해주세요 :D

 
ㅣ 서비스 구매 


01. 서비스의 제공 범위 확인

 ''창업'', ''사업 계획''과 관련된  서비스를 구매하는 회원님들께서는, 타임셀러에서 제공 가능한 서비스의 범위가 ''대필''이 아닌 ''첨삭 및 교정'' 과 ''컨설팅''이라는 것에 유의해주시기 바랍니다. 
  특히 ''정부지원사업''에 지원하는 문서를 대필 등의 부정한 방법으로 작성하거나 이를 통해 지원금을 수령한 경우, 관련 법령(보조금 관리에 관한 법률)에 따라 처벌될 수 있습니다. 
 불미스러운 문제가 발생되지 않도록, 거래 전 상기 내용을 꼬옥 확인해주세요 :D



타임셀러팀은 안전하고 신뢰도 있는 거래 환경 조성을 위하여
상위 법령 및 사회 통념에 위반될 수 있는 거래 활동을 제한하고 있습니다. 
회원님의 비즈니스가 더 성공적이기를 바라는 마음임을 양해해주시기 바랍니다.
 타임셀러가 늘 응원하겠습니다 ! 감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (65,'[공지] 타임셀러 서버 점검 안내','안녕하세요, 타임셀러입니다.

더워지는 날씨만큼 타임셀러와 함께 열정적으로 비즈니스 하고 계신가요?

 

다가오는 6월 15일(토)에는, 타임셀러의 서버 점검이 진행될 예정입니다.

일정 시간 동안 사이트 이용이 불가한 점 미리 양해를 부탁 드리며, 아래 안내를 참고해주세요.

 

ㅣ사이트 점검 시간 안내

- 일자: 2020년 6월 15일 (토)

- 시간: 오전 8시 ~ 9시(약 1시간)

 

더 만족스러운 서비스를 제공해드릴 수 있도록 꼼꼼히 점검하고 돌아오겠습니다.

감사합니다 :D
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (66,'[공지]구매후기 작성에 대한 안내','
안녕하세요, 타임셀러입니다.

구매후기 운영정책이 아래와 같이 변경될 예정입니다.
관련 내용을 확인하시어 서비스 이용에 불편 없으시기를 바랍니다.

 

ㅣ변경 일시: 2019년 11월 27일(수)

 

ㅣ변경 내용


     ? 현재 
       - 작성기준: 구매확정 주문 건이면 기간 제한 없이 구매후기 작성 가능
       - 수정기준: 작성일시 기준으로 7일 이내 수정 가능하며, 횟수 제한 없음
   
     ? 변경 후 
       - 작성기준: 구매확정(거래 완료) 일시를 기준으로 30일 이내에만 작성 가능
       - 수정기준: 작성일시 기준으로 7일 이내 수정 가능하며, 1회만 수정 가능
       - 삭제기준: 작성한 회원 본인이 직접 삭제를 요청하는 때에만 삭제, 재작성 불가


신뢰도 높은 거래문화의 정착을 위한 노력으로 이해해주시기를 바라며,
작성하지 못한 구매후기가 있다면 변경일 전에 미리 작성해주실 것을 안내해드립니다.

더욱더 좋은 서비스를 제공하기 위해 노력하는 타임셀러가 되겠습니다.

감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (67,'[공지] 고객센터 운영 시간 안내','안녕하세요, 타임셀러입니다.
타임셀러 고객센터의 운영 시간에 대해 안내해드립니다.

원활한 서비스 이용을 위해 운영 시간을 확인해주시기 바랍니다.

 

 

? 고객센터 운영시간
  -평일 10:30~18:00
 

? 고객센터 미운영시간
  -매월 첫째 주 월요일 14:00~18:00 

 

고객센터 미운영 시간 내 문의 사항은 [1:1문의] 채널을 통해 접수해주시면, 순차적으로 답변드리겠습니다.

항상 만족스러운 서비스를 제공해드리기 위해 노력하겠습니다.

감사합니다. ','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (69,'[공지] 정부지원사업 외주도, 타임셀러에서 가능합니다!','안녕하세요! 타임셀러입니다.

정부지원사업 외주도, 타임셀러에서 진행하실 수 있습니다 ?

정부지원사업 외주용역비를 타임셀러 플랫폼에서 사용하기에 어려우셨죠?
2020년부터 타임셀러의 정부지원사업 전담팀을 통해 쉽고 편리하게 외주용역비를 사용하실 수 있습니다.

의뢰인과 (주)타임셀러의 양자 간 계약, (주)타임셀러 세금계산서 발행 등
정부지원사업의 규정에 맞추어 검증된 전문가들과 일하실 수 있습니다.


?? 정부지원사업 전담 매니저의 컨설팅

     - IT개발, 영상제작, 시제품제작, 디자인, 마케팅 등 모든 서비스를 one-stop 제공
 
?? 지원 사업별 요구 사항에 맞는 계약/결제 방식 제시

     - 세금계산서 발급, 계약서 작성 등 행정절차 지원
     - 하나의 계약에 여러 분야의 전문가 통합 투입
     - (사안에 따라) 협약 통해 다양한 결제방법 지원
 
?? 계약 체결 전 과정과 과업 마무리 단계까지 전담 매니저의 상시 커뮤니케이션 지원
 
?? 높은 퀄리티의 프리미엄 서비스 제공 가능
 
 
거래 전 아래 가이드를 확인하신 후 타임셀러의 정부지원사업 전담 매니저에게 꼭 연락 주세요!
 
 
? 정부지원사업 공고 내용
    2020년, 중소벤처기업부 등 16개 부처 소관으로 90개의 사업 진행
    ※ 참고(이미지)_43개 부문 주요 사업 보기      
    ※ 창업지원사업 이외에도 다양한 정부지원사업들의 외주용역을 지원하고 있습니다.
 

잘 읽어보셨나요?

타임셀러를 통해 성공적으로 비즈니스 하시기를 바라며,

궁금한 내용이 있다면 언제든지 전담 매니저에게 문의해주세요.

감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (70,'[공지] 5월 고객센터 운영 및 업무 휴무 안내','안녕하세요, 타임셀러입니다.

2020년 5월, 타임셀러의 휴무 일정을 미리 안내드리니 이용에 불편 없으시기를 바랍니다.


  

? 5월 휴무일 안내   　
 -5월 1일(금) 근로자의 날
 -5월 5일(화) 어린이날

 

? 고객센터 이용 안내
　휴무일에는 고객센터를 운영하지 않습니다.
　궁금하신 내용은 본 게시글 하단의 [문의하기] 기능을 통해 접수해 주세요. 
　업무 재개 후 순차적으로 답변드리겠습니다.

 

? 수익금 출금 및 환불 업무 안내
　휴무일에도 수익금 출금 및 환불 신청을 접수하실 수 있습니다. 
　다만, 휴무일에 신청하신 건은 업무 재개 후 순차적으로 처리해드리겠습니다.


 

다사다난했던 지난날들을 보상받는 따뜻한 5월을 보내시기 바라며,

모든 회원님들의 가정이 늘 행복하고 웃음 넘치시기를 바랍니다 ♥

감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (71,'[소개] 타임셀러는 어떤 서비스인가요?','타임셀러는 각 분야의 전문가가 제공하는 서비스와 상품을 거래할 수 있는 프리랜서 마켓입니다.
구매 방식에 따라 ''마켓'' ''맞춤 견적'' ''엔터프라이즈'' 서비스를 선택하여 이용하실 수 있습니다.


  ■ 타임셀러 마켓 

      서비스와 상품을 쉽고 빠르게 구매할 수 있는 프리랜서 마켓입니다.
      타임셀러의 기준과 구매자의 평가를 바탕으로 엄선한 Prime 서비스도 이용해보세요.   

      ☞ 타임셀러 마켓 바로가기

 

  ■ 맞춤 견적

      회원님이 찾으시는 서비스와 구매 조건으로  ''견적 요청''할 수 있는 서비스입니다.         
      요구사항에 꼭 맞는 전문가들의 ''견적 제안''을 받아 거래를 진행해보세요.

      ☞ 맞춤 견적 바로가기

 

  ■ 엔터프라이즈

      기업 회원을 대상으로 한 외주, 아웃소싱 서비스입니다.
      전문가/서비스의 탐색부터 거래 진행 까지 타임셀러에서 전담 관리해드립니다. 

      ☞ 엔터프라이즈 바로가기

 
자세한 사항은 각 서비스의 소개 페이지에서 확인하실 수 있습니다. ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (72,'[입점/제휴] 타임셀러와 제휴하고 싶습니다.','제휴 문의는 타임셀러 서비스 하단의 일대일 문의 또는 고객센터의 문의하기를 이용하실 수 있습니다. 
상담유형을 ''제휴''로 선택하신 후 문의를 등록해주시면 담당자가 확인 후 연락드립니다. (영업일 기준 3일 이내)','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (73,'[개인정보] 개인정보는 안전하게 보호되나요?','타임셀러는 이용자의 정보 보안 및 안전한 거래를 위해 최선을 다합니다. 
 
타임셀러 웹 사이트는 개인정보가 입력되는 모든 영역에 SSL(Secure Sockets Layer)이 적용되어있습니다. 
 
SSL은 브라우저와 서버 간의 통신 시 정보를 암호화하여 안전하게 정보를 주고 받을 수 있도록 해주는 암호화 통신 프로토콜입니다. 
 
SSL이 적용된 페이지는 웹 브라우저 상단에 자물쇠 모양의 아이콘이 나타나며, 해당 페이지의 URL은 https로 표시됩니다.  
 
웹 브라우저 상단의 자물쇠 모양의 아이콘과 https로 시작되는 URL은 회원님의 정보가 안전하게 전달되고 있음을 의미합니다. ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (74,'[입점/제휴] 서비스를 판매하고 싶습니다.','
만 14세 이상이면 누구나 타임셀러의 전문가로 활동하실 수 있습니다. 
전문가회원은 간단한 인증절차를 거쳐 전환하실 수 있습니다. 
 
[ 로그인 > 마이타임셀러 > 계정설정> 인증정보 > 휴대폰인증 + 전문가 인증 ] 해주시면 됩니다.
 
전문가 인증 시, 사업자일 경우 사업자등록증, 통장사본 첨부해주셔야 승인가능합니다.
개인 전문가일 경우, 개인 주민등록번호 인증해주시면 됩니다.
 
전문가회원으로 전환 후, 판매하실 서비스를 등록 해주세요. 
[로그인 > 전문가 등록 > 서비스 등록하기]를 눌러 서비스를 등록하실 수 있습니다. 
전문가 등록 메뉴에서 ''프로필 수정''을 눌러 전문가님의 프로필 정보를 상세히 기재하시면 더욱 좋습니다. 
 
등록하신 서비스는 카테고리별 심사 절차를 거쳐 승인되며 승인된 서비스로 판매하실 수 있습니다. 
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (75,'[회원정보] 개명 후 인증이 안돼요.','개명을 하신 경우 실명확인 등록기관에 개명하신 성함으로 실명등록을 모두 새롭게 해주셔야 합니다.

[실명확인 등록기관안내]

- 코리아크레딧뷰로(KCB) ☞ 바로가기   / ☎ 고객센터: 02-708-1000
- SIREN24 ☞ 바로가기


기관을 통해 변경된 실명 정보를 등록하실 경우, 인증 시간이 소요될 수 있는 점 참고해주시기를 바랍니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (76,'[계정정보] 가입 후 ID 또는 닉네임을 변경할 수 있나요?','
회원 가입 시 등록하신 ID(이메일)는 가입 이후에는 변경하실 수 없으며 닉네임은 가입 후 1회에 한해 변경이 가능합니다.
 
부득이한 사유로 ID 또는 닉네임의 추가 변경이 필요하신 경우, 아래 사항을 기제 하시어 고객센터로 이메일(help@timeseller.com)을 보내주세요.
 
● 현재 이용중인 ID(이메일) 또는 닉네임
 
● 변경하고자 하는 ID(이메일) 또는 닉네임
 
● 사유 : 
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (77,'[안심번호] 안심번호에 대해 알고싶습니다.','안심번호는 전문가의 실제 연락처 대신 임의의 가상번호를 노출하여 개인정보를 보호하고 각종 사고를 예방하는 기능입니다.
 
의뢰인이 전문가의 안심번호로 전화를 걸면 전문가의 실제 연락처로 연결되며, 안심번호 서비스 이용에 따른 서비스 이용요금은 부과되지 않습니다.
 
단, 이용 중이신 통신사의 요금 정책에 따라 부가통화료가 발생될 수 있으니, 자세한 사항은 각 통신사의 홈페이지를 참고해주시기 바랍니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (78,'[휴대폰인증] 지인 혹은 가족 휴대폰으로 인증받아도 되나요?','
타임셀러 서비스의 원활한 이용을 위해 가입자 본인의 정보로 실명인증을 진행하시길 권장해드립니다. 
 
특히 서비스를 판매하시는 전문가인 경우, 인증된 정보를 기초로 전자세금계산서가 발행되므로 반드시 본인 명의로 인증을 해주셔야 합니다. 
 
타인의 정보로 실명인증을 하신 경우, 불이익이 발생되더라도 계정 소유권을 주장하실 수 없으며 모든 환불 및 결제와 관련한 동의 절차 혹은 관련 서류 요청은 실명인증된 계정 보유자에게 요청됩니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (79,'[결제수단] 상품/서비스 결제수단이 궁금합니다.','
상품/서비스 구매 시 아래의 결제수단을 이용하실 수 있습니다.
 
■ 타임셀러캐시 / 신용카드 / 실시간 계좌이체 / 무통장 입금 / 휴대폰 / 페이나우 / 페이코

','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (80,'[세금계산서] 세금계산서 언제, 어떻게 발행받을 수 있나요?','
세금계산서는 타임셀러의 기업전문가로부터 발행받으실 수 있습니다.
개인전문가나 타임셀러에서는 의뢰인에게 세금계산서를 발행하지 않으니 이용에 참고해주시기 바랍니다.
 
■ 세금계산서 발행가능 전문가 찾기
- 구매를 원하는 카테고리의 상품 리스트 중 기업마크가 있는 전문가를 확인합니다.
리스트 좌측의 필터 항목 중 ''세금계산서 발행''을 체크하시면 발행 가능한 전문가만을 모아서 볼 수 있습니다.
 
■ 세금계산서 발행 가능 상품을 결제 시 ''세금계산서 발행'' 항목을 체크 후 정보를 입력합니다.
 
■ 타임셀러캐시를 포함한 전체 결제금액에 대해 세금계산서가 발행됩니다. (쿠폰사용액은 제외됨)
 
※ 세금계산서는 재화와 용역을 실제 공금자(전문가)가 공급받는 자(의뢰인)에게 발행해주는 것이 원칙입니다.
따라서 타임셀러에서 발급해드리는 카드/현금영수증은 단순히 ''결제''에 대한 증빙으로써만 사용하실 수 있으며, 부가가치세 매입세액 공제를 받을 수 없습니다.
 
타임셀러는 전자상거래 중개사업자로, 거래 플랫폼을 공급하는 공급자(타임셀러)와 플랫폼을 제공받아 판매하는 공급받는자(전문가)간의 거래의 증빙으로 전문가에게 수수료에 대한 세금계산서를 발행합니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (81,'[원천징수] 원천징수 방법 문의','타임셀러의 영수증으로 원천징수 증빙 서류 대체가 가능합니다.

단, 이 경우 매입세액 공제를 받을수 없기에 법인세 신고시에 "비용"으로만 처리 가능합니다.

타임셀러 영수증 출력 방법 [사이트 > 로그인 > 구매 > 결제내역 > 현금영수증 or 전표출력 클릭]에서 확인가능합니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (82,' [주문 취소] 주문을 취소하고 싶습니다.','의뢰인이 정확한 요구사항 및 참고 자료를 제공하였음에도 불구하고 전혀 다른 상품/서비스를 수령하신 경우에는 주문취소 사유가 될 수 있습니다.
 
 
■ 취소 요청 방법
거래 중 취소는 아래의 방법으로 하실 수 있습니다.
 
(PC 버전)
- 타임셀러 접속 > 로그인 > 구매 > 구매관리 > 해당 거래 화면 접속> 우측의 ''취소/문제해결'' 클릭 후 취소 요청
 
(모바일앱)
- 타임셀러 접속 > 마이타임셀러 > 구매중인 주문> 해당 거래 화면 접속> 우측 상단의 메뉴 버튼 클릭> ''취소/문제해결'' 클릭 후 취소 요청
 
※ 주문취소는 전문가와 의뢰인 간의 취소 합의가 선행되어야 하며, 취소를 요청받은 상대는 요청된 취소를 수락하거나 거절할 수 있습니다.
※ 취소 요청을 받은 상대방이 의사표시를 하지 않을 경우, 24시간 경과 시점에 자동으로 거래가 취소됩니다.
※거래 취소 후 결제 금액은 타임셀러캐시로 반환되며, 다른 서비스의 구매에 사용하시거나 결제수단으로 환불받으실 수 있습니다.
 ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (83,'[작성방법] 일반후기/포토후기 작성 방법','
서비스평가 작성시, 일반후기/포토후기로 작성할 수 있습니다.

▶ 일반후기란? 전문가의 상품/서비스를 구매한 의뢰인이 구매확정이 된 거래건에 대해서 작성하는 후기 방식입니다.

일반 후기는 별점과 글작성만 할 수 있습니다.

 

▶ 포토후기란? 전문가의 상품/서비스를 구매한 의뢰인이 구매확정이 된 거래건에 대해서 이미지 첨부를 하여 작성하는 후기 방식입니다.

포토 후기는 별점과 이미지 첨부, 글작성을 할 수 있습니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (84,'[구매확정] 실수로 구매확정을 눌렀을 땐 어떻게 해야 하나요?','구매확정은 해당 거래를 완료하겠다는 최종 의사표현의 수단입니다.
따라서 구매확정을 처리한 이후에는 결과물에 대한 수정/취소가 불가능합니다.
실수로 구매확정을 클릭하신 경우에는 의뢰인과 전문가 양 측이 협의하여 거래 지속 또는 취소 여부를 결정해주시기 바랍니다.
 
※ 판매 수수료는 환불되지 않습니다.
※ 선 구매확정으로 인한 문제 발생 상황에서는 전문가가 수익금을 이미 수령하여 일방적으로 연락을 받지 않거나 주문상태를 변경하지 못하는 등의 문제가 발생될 수 있으니, 최종 작업물을 받아보지 않은 상태에서의 구매확정 요청은 단호히 거절해주시기 바랍니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (85,'[안심번호] 안심번호에 대해 알고싶습니다.','안심번호는 전문가의 실제 연락처 대신 임의의 가상번호를 노출하여 개인정보를 보호하고 각종 사고를 예방하는 기능입니다.
 
의뢰인이 전문가의 안심번호로 전화를 걸면 전문가의 실제 연락처로 연결되며, 안심번호 서비스 이용에 따른 서비스 이용요금은 부과되지 않습니다.
 
단, 이용 중이신 통신사의 요금 정책에 따라 부가통화료가 발생될 수 있으니, 자세한 사항은 각 통신사의 홈페이지를 참고해주시기 바랍니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (86,'[ID중복] 이미 가입된 이메일 주소라고 표시됩니다.','기재하신 이메일 주소가 이미 타임셀러에 가입되어있다는 의미입니다. 

동일한 이메일 계정으로는 중복 가입이 불가능하므로, 아래의 조치를 해보실 수 있습니다. 

아이디/비밀번호 찾기를 통해 기존의 가입 정보를 확인하신 후 로그인 해주세요. 
회원으로 가입하지 않았음에도 위와같은 메세지가 표시될 경우 일대일문의/문의하기를 통해 아래의 정보를 타임셀러로 보내주시면 신속히 조치해드리겠습니다. 
메일 주소
가입자 실명
실명 인증이 가능한 휴대폰 번호','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (87,'[회원탈퇴] 회원 탈퇴 방법이 궁금합니다.','회원 탈퇴는 아래의 방법으로 하실 수 있습니다.
 
  ■ 타임셀러 웹 > 로그인 > 우측 상단 닉네임 > 계정설정 > 회원탈퇴하기
    ※모바일 앱에서는 탈퇴 기능을 지원하지 않습니다.
 
회원 탈퇴를 하시기 전, 반드시 아래의 유의사항을 확인해주시기 바랍니다.
   ■ 타임셀러캐시, 판매수익금이 있는지 확인해주세요.
       잔여액이 1원이라도 있으신 경우 탈퇴 처리가 불가능하니, 탈퇴 전 수익금 출금 및 캐시 환불을 신청해주시기 바랍니다.
   
   ■ 무상 적립된 전문가 마일리지와 적립캐시는 환불되지 않으며, 탈퇴와 함께 자동 소멸됩니다.
 
   ■ 진행 중인 주문이나 미발송 건이 남아있는 경우 탈퇴요청이 처리되지 않습니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (88,'[회원가입/외국인] 외국인도 회원가입 할 수 있나요?','외국인의 회원가입이 가능합니다.
다만, 서비스의 구매·판매를 위하여 휴대폰 본인 인증 절차가 필요합니다.

휴대폰 본인 인증이 불가능한 경우에 대체 인증수단은 운영하고 있지 않아 이용이 불가한 점 양해 부탁드리며, 인증 절차가 원활하게 진행되지 않을 경우 [하이코리아]를 통해 외국인 등록 여부 확인 및 휴대폰의 명의 확인을 부탁드립니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (89,'[휴대폰인증] 인증번호가 수신되지 않습니다.','가입하신 통신사에서 제공하는 스팸차단 부가 서비스를 이용 중이신 경우, 특정 발신번호가 자동으로 스팸으로 분류될 수 있습니다. 
 
가입하신 통신사의 스팸차단 어플의 스팸문자 수신함을 확인해주세요. 
타임셀러의 대표번호 1544-6254가 차단 대상 연락처로 등록되어 있는지 확인 후, 안내에 따라 차단을 해제해주세요. 
 
   ※ 통신사별 스팸문자 차단 어플은 아래와 같습니다.    
 통신사	어플명칭 
 SK	T스팸필터링 
KT 	 올레 스팸차단
 LG	 U+ 스팸차단
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (90,'[구매확정] 구매확정 후에 주문을 취소/환불할 수 있나요?','구매확정은 해당 거래를 완료하겠다는 최종 의사표현의 수단으로, 구매확정 이후에는 어떠한 경우에도 주문을 취소하실 수 없습니다.
 
따라서 구매확정을 처리한 이후에는 결과물에 대한 수정/취소가 불가능합니다.
그러나 구매확정 이후에 수령한 상품/서비스에 문제가 확인될 경우에는 판매자에게 직접 사후처리를 요청하실 수 있습니다.
판매자가 일방적으로 연락을 받지 않는 등의 사유로 처리가 불가할 경우 타임셀러에서 판매자에게 연락을 시도하는 등의 일정범위 내에서 도움을 드릴 수 있으나, 판매자와 구매자간의 분쟁에는 개입하지 않습니다.
 
※ 구매확정 이후 발생되는 거래 당사자 간의 분쟁은 타임셀러에서 조정하지 않으며, 구매자가 직접 외부 중재기관으로 소를 제기하시기 바랍니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (91,'[매입세액공제] 매입세액공제를 받고싶습니다.','구매하신 상품/서비스에 대한 매입세액공제는 판매자가 ''기업전문가''일 경우에 가능하며, 방법은 아래와 같습니다.
 
■ 기업전문가에게 상품/서비스를 구매합니다. (개인전문가 제외)
■ 결제 시 화면 하단의 ''세금계산서 발행요청''을 선택합니다.
■ 거래 완료 후 총 거래된 금액으로 세금계산서를 발행받으실 수 있습니다. (쿠폰사용액은 제외됨)
 
※ 주의사항
타임셀러 규정 상 전문가는 총 결제금액에 부가세를 포함하여 세금계산서를 발행해야 합니다.
전문가로부터 부가세 추가 결제를 요청받으신 경우. 타임셀러 고객센터(02-1544-6254/help@timeseller.com)로 신고해주시기 바랍니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (92,'[후기] 포토후기는 어떻게 남기나요?','포토후기는 디자인 카테고리에서 서비스를 구매하였으며, 전문가가 jpg/png 형식의 파일로 작업물발송 하는 경우 등록할 수 있습니다.
구매확정된 날짜로부터 30일 이내에 구매후기를 등록할 때에 작업물에 대한 ''공개 여부''를 선택하여 남길 수 있습니다.

포토후기는 등록 이후 수정이 불가하며, 삭제(비공개)만 가능합니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (93,'[신고하기] 불량 전문가를 타임셀러에 신고할 수 있나요?','건강한 거래문화를 해친다고 판단하는 경우, 의뢰인은 직접 해당 전문가의 서비스를 신고할 수 있으며, 방법은 아래와 같습니다.
 
■ 불량 전문가 신고하기
타임셀러 사이트 하단의 고객센터로 접속하여 "문의등록" 의 ''고객의소리/제보''를 이용
※ 신고 시 증빙서류를 첨부해주시기 바랍니다.
 
■ 거래문화를 해치는 행위
- 구매한 서비스의 결과물이 설명과 크게 차이 나는 경우
- 서비스를 구매한 이후, 전문가가 추가 작업에 대해 과도한 추가 결제를 요구하는 경우
- 외부거래를 유도하는 경우(외부거래/불법홍보 신고)
- 거래 중에 연락이 되지 않는 경우
- 거래 상대에 대한 악의적인 비방 메시지를 발송하는 경우
 
타임셀러를 이용하시면서 이와 같은 경험을 하셨다면, 주저 없이 고객센터를 통해 접수해 주시기 바랍니다.
최대한 빠른 시간 내에 내용을 확인하여 도움 드릴 수 있도록 노력하겠습니다.','1',to_date('20/06/22','RR/MM/DD'),1,50,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (97,'개인정보 처리방침 2019. 09. 18. ver.','개인정보처리방침

 

l 제1조(총칙)

㈜타임셀러(이하 ''회사''라고 함)은 회원의 정보를 소중하게 생각하고 안전하게 보호하기 위하여 최선의 노력을 다하고 있으며 개인정보보호법 및 정부의 가이드라인을 준수합니다.

회사는 회원의 개인정보를 필요한 시점에 따라 최소한으로 수집하고 수집한 정보는 사전 고지한 범위 내에서만 사용하며, 사전 동의 없이 그 범위를 초과하여 이용하거나 외부에 공개하지 않습니다.

다만, 법령의 규정에 의거하거나, 수사기관 및 행정기관이 수사 또는 조사의 목적으로 법령에 정해진 절차와 방법에 따라 요청한 경우에만 내부 절차를 거쳐 최소한의 정보가 동의없이 제공될 수 있습니다.

회사는 ‘개인정보처리방침’을 제정하고 이를 준수하여 회원의 개인정보의 이용 및 보호에 대한 조치를 알리며, 관련법규를 준수하고 있습니다.

회사의 ‘개인정보처리방침’은 관련법률 및 지침의 변경 또는 내부 운영방침의 변경 등으로 인하여 개정될 수 있습니다.

‘개인정보처리방침’이 변경될 경우 변경사항은 공지사항 또는 이메일 등의 연락수단을 통해 공지해드립니다.

변경사항에 의문이 있으신 경우에는 언제라도 담당부서에 문의하시거나 홈페이지를 방문하여 확인하실 수 있습니다.

개인정보 처리방침과 이용 약관의 개인정보 관련한 내용의 경우 이용약관이 우선 순위를 갖습니다.

 ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (98,'개인정보 처리방침 2019. 12. 09. ver.','개인정보처리방침

 

l 제1조(총칙)

㈜타임셀러(이하 ''회사''라고 함)은 회원의 정보를 소중하게 생각하고 안전하게 보호하기 위하여 최선의 노력을 다하고 있으며 개인정보보호법 및 정부의 가이드라인을 준수합니다.

회사는 회원의 개인정보를 필요한 시점에 따라 최소한으로 수집하고 수집한 정보는 사전 고지한 범위 내에서만 사용하며, 사전 동의 없이 그 범위를 초과하여 이용하거나 외부에 공개하지 않습니다.

다만, 법령의 규정에 의거하거나, 수사기관 및 행정기관이 수사 또는 조사의 목적으로 법령에 정해진 절차와 방법에 따라 요청한 경우에만 내부 절차를 거쳐 최소한의 정보가 동의없이 제공될 수 있습니다.

회사는 ‘개인정보처리방침’을 제정하고 이를 준수하여 회원의 개인정보의 이용 및 보호에 대한 조치를 알리며, 관련법규를 준수하고 있습니다.

회사의 ‘개인정보처리방침’은 관련법률 및 지침의 변경 또는 내부 운영방침의 변경 등으로 인하여 개정될 수 있습니다.

‘개인정보처리방침’이 변경될 경우 변경사항은 공지사항 또는 이메일 등의 연락수단을 통해 공지해드립니다.

변경사항에 의문이 있으신 경우에는 언제라도 담당부서에 문의하시거나 홈페이지를 방문하여 확인하실 수 있습니다.

개인정보 처리방침과 이용 약관의 개인정보 관련한 내용의 경우 이용약관이 우선 순위를 갖습니다.

 
                            ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (99,'개인정보 처리방침 2020. 03. 02. ver.','개인정보처리방침

 

l 제1조(총칙)

㈜타임셀러(이하 ''회사''라고 함)은 회원의 정보를 소중하게 생각하고 안전하게 보호하기 위하여 최선의 노력을 다하고 있으며 개인정보보호법 및 정부의 가이드라인을 준수합니다.

회사는 회원의 개인정보를 필요한 시점에 따라 최소한으로 수집하고 수집한 정보는 사전 고지한 범위 내에서만 사용하며, 사전 동의 없이 그 범위를 초과하여 이용하거나 외부에 공개하지 않습니다.

다만, 법령의 규정에 의거하거나, 수사기관 및 행정기관이 수사 또는 조사의 목적으로 법령에 정해진 절차와 방법에 따라 요청한 경우에만 내부 절차를 거쳐 최소한의 정보가 동의없이 제공될 수 있습니다.

회사는 ‘개인정보처리방침’을 제정하고 이를 준수하여 회원의 개인정보의 이용 및 보호에 대한 조치를 알리며, 관련법규를 준수하고 있습니다.

회사의 ‘개인정보처리방침’은 관련법률 및 지침의 변경 또는 내부 운영방침의 변경 등으로 인하여 개정될 수 있습니다.

‘개인정보처리방침’이 변경될 경우 변경사항은 공지사항 또는 이메일 등의 연락수단을 통해 공지해드립니다.

변경사항에 의문이 있으신 경우에는 언제라도 담당부서에 문의하시거나 홈페이지를 방문하여 확인하실 수 있습니다.

개인정보 처리방침과 이용 약관의 개인정보 관련한 내용의 경우 이용약관이 우선 순위를 갖습니다.

 ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (100,'[공지]코로나19 긴급 고용안정지원금을 신청하세요!','안녕하세요, 전문가님. 크몽입니다  ?

고용노동부에서는 지난 6월 1일부터 ‘프리랜서’를 포함한 특수형태근로종사자를 대상으로
''긴급 고용안정지원금''을 지급하고 있습니다.

대상 전문가님들의 지원금 신청을 돕기 위하여, 크몽에서도 필요 서류 등을 제공·확인해드리고 있는데요.
자세한 내용은 아래의 안내를 참고해 주세요.

 

 

　? 신청기간 및 대상
신청 기간: 2020년 6월 1일(월) ~ 7월 20일(월)

신청대상: 프리랜서·특수형태근로종사자, 영세 자영업자, 무급휴직근로자
※ 프리랜서: ‘19년 12월 ~20년 1월''에 노무를 제공하여 소득이 발생한 고용보험 미가입자

　
　? 참고(상세요건)
　‘20년 3~4월의 평균 소득''이, 비교 대상 기간(’19년 월 평균 소득_19년 3월, 4월, 12월 / 20년 1월 중 선택) 　대비 일정 수준 이상 감소한 경우','1',to_date('20/06/22','RR/MM/DD'),2,20,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (101,'카테고리에 법률상담은 추가할 계획인 없나요?','법률 상담을 하고싶은데 추후에 추가할 계획이 있나요?','5',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (102,'답변을 못받았어요.','몇 시간전에 문의를 남겼는데 답변이 너무 느리네요. 
확인 부탁드립니다.','5',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (103,'포인트 충전 최대금액이 너무 작아요.','경매에 입찰하려는데 최대금액이 너무 작아서 불편합니다. 
최대 금액 한도를 늘릴 계획은 없나요','5',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (104,'제휴하고 싶습니다. ','저희는 kh솔루션 업체입니다. 
타임셀러와 제휴하고 싶습니다.','6',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (105,'블랙핑크 이벤트 계획은 없나요? ','블랙핑크 찐팬인데 올해 안에 이벤트 진행 안하나요? ㅠㅠ','6',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (107,'4_review','넌 나의 잠이야','1',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (108,'14_review','넌 똥이야','1',to_date('20/06/22','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (109,'sdf','sdf','3',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (110,'테스트입니다','ㅁㄴㅇㄻㄹㅇ','1',to_date('20/06/22','RR/MM/DD'),1,20,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (112,'ㅁㄴㅇㄻㄴㅇ','ㅁㄴㅇㄻㄴㅇㄹ','1',to_date('20/06/22','RR/MM/DD'),0,20,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (114,'테스트테스트','ㅁㄴㅇㅁㄴㅇㄹ','1',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (115,'ㅁㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄹ','1',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (116,'고객이 함','asdfasdf','3',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (117,'aaasss','aaassss34535','1',to_date('20/06/22','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (118,'제발 신고하기좀...','제바류...','13',to_date('20/06/23','RR/MM/DD'),0,30,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (119,'아','파일첨부 확인..','13',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (122,'aaaa','aaaaaa','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (123,'52_review','테스트중','1',to_date('20/06/23','RR/MM/DD'),0,40,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (124,'66_review','ㅅㅅㅅㅅㅅㅅ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (125,'ㅁ','ㅁㅁ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (126,'ㅁㅁ','ㅁㅁㅁ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (127,'ㅁㅁㅁ','ㅁㅁㅁ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (128,'ㄴㄴㄴ','ㄴㄴㄴ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (129,'ㅇㅇㅇ','ㅇㅇㅇㅇㅇ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (130,'test1','ㅁㄴㅇㄻㄴㅇㄹ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (131,'ㅁㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄻㄴㅇㄹ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (132,'ㅁㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄻㄴㅇㄹ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (133,'ㅁㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄻㄴㅇㄹ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (134,'ㅁㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (135,'ㅁㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄻㄴㅇㄻ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (136,'test2','ㅁㄴㅇㄻㄴㅇㄹ','1',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (174,'asdf','asdf','0',to_date('20/06/23','RR/MM/DD'),0,30,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (175,'aa','aaa','0',to_date('20/06/23','RR/MM/DD'),0,30,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (179,'aa','aa','0',to_date('20/06/23','RR/MM/DD'),0,30,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (180,'asdfasdf','asdfasdf','0',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (181,'11111','111111','0',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (182,'asdf','asdf','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (183,'11','111','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (185,'133','333','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (186,'33','33','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (187,'고객의 소리테스트','테스트중','12',to_date('20/06/23','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (188,'신고하기중','신고합니다','12',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (189,'시연연습','중입니다.','1',to_date('20/06/23','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (190,'판매자를 신고함','신고합니다','1',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (191,'151_review','내가 구매한거야','80',to_date('20/06/23','RR/MM/DD'),0,10,'N');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (192,'445566','1233fggg','78',to_date('20/06/23','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (193,'고객센터에서 입력함','입력함','78',to_date('20/06/23','RR/MM/DD'),0,10,'Y');
Insert into BOARD (BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (194,'신고합니다','신고요','78',to_date('20/06/23','RR/MM/DD'),0,30,'Y');
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
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('10','1:1문의');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('20','공지사항');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('30','신고');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('40','리뷰');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('50','FAQ');
Insert into B_CATEGORY (BOARD_CODE,BOARD_NAME) values ('60','개인정보처리지침');
REM INSERTING into CATEGORY
SET DEFINE OFF;
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Ar','예술');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Re','요식업');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Me','의료');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Sp','스포츠');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Fa','패션');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('It','IT');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Fi','금융');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Pu','공무원');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Bu','창업');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Ma','마케팅');
Insert into CATEGORY (CATEGORY_CODE,CATEGORY_NAME) values ('Ev','이벤트');
REM INSERTING into DAYS
SET DEFINE OFF;
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',6);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',8);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',56);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',66);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',87);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',88);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',90);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',97);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',101);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',109);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',126);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('금요일',151);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',7);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',9);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',10);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',11);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',12);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',13);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',55);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',65);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',76);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',82);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',91);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',102);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',108);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('목요일',151);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',6);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',8);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',14);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',54);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',58);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',64);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',68);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',69);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',75);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',86);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',94);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',95);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',96);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',99);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',100);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',101);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',102);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('수요일',111);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',6);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',8);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',14);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',54);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',57);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',60);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',63);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',67);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',68);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',69);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',73);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',83);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',84);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',85);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',87);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',88);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',89);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',93);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',98);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',100);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',101);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',102);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',108);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',109);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',117);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',126);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',128);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',129);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',130);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',150);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('월요일',152);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',8);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',71);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',72);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',79);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',89);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',92);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',103);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',104);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',105);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',106);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',107);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',109);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',110);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',112);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',113);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',114);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',115);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',116);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',117);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',118);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',119);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',120);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',121);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',122);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',123);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',124);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',125);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',127);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',128);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',129);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',130);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',131);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',132);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',133);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('일요일',134);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',7);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',9);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',10);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',11);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',67);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',70);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',78);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',80);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',83);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',103);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',104);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',105);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',106);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',107);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',108);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',110);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',112);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',113);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',114);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',115);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',116);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',117);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',118);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',119);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',120);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',121);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',122);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',123);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',124);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',125);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',126);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',127);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',128);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',130);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',131);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',132);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',133);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('토요일',134);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',7);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',9);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',10);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',11);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',12);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',13);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',14);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',53);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',59);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',61);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',62);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',68);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',72);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',74);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',77);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',81);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',85);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',150);
Insert into DAYS (AVAILABLE_DATE,SERVICE_NO) values ('화요일',152);
REM INSERTING into FILES
SET DEFINE OFF;
Insert into FILES (FID,BOARD_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (53,129,'re1.jpg','re1.jpg','C:\semi_project\semiProject\semiProject\web\board_uploadFiles/',to_date('20/06/23','RR/MM/DD'),0,0,'Y');
Insert into FILES (FID,BOARD_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (54,192,'upup1.png','upup1.png','C:\semi_project\semiProject\semiProject\web\board_uploadFiles/',to_date('20/06/23','RR/MM/DD'),0,0,'Y');
REM INSERTING into GRADE_CLASS
SET DEFINE OFF;
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('BRONZE',0,50,'브론즈');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('SILVER',51,100,'실버');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('GOLD',101,150,'골드');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('PLATINUM',151,200,'플래티넘');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('DIAMOND',201,250,'다이아몬드');
Insert into GRADE_CLASS (GRADE_NO,GRADE_MIN,GRADE_MAX,GRADE_NAME) values ('ADMIN',0,0,'관리자');
REM INSERTING into INQUIARY
SET DEFINE OFF;
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (101,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (102,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (103,'N','N',to_date('20/06/22','RR/MM/DD'),'A1');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (104,'N','N',to_date('20/06/22','RR/MM/DD'),'A3');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (105,'안합니다','Y',to_date('20/06/22','RR/MM/DD'),'A2');
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
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (187,'답변달기','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (189,'답변달기','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (192,'답변을 달았어요','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARY (BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (193,'N','Y',to_date('20/06/23','RR/MM/DD'),'A1');
REM INSERTING into INQUIARY_TYPE
SET DEFINE OFF;
Insert into INQUIARY_TYPE (BOARD_TYPE,INQUIARY_NAME) values ('A1','이용문의');
Insert into INQUIARY_TYPE (BOARD_TYPE,INQUIARY_NAME) values ('A2','고객의 소리');
Insert into INQUIARY_TYPE (BOARD_TYPE,INQUIARY_NAME) values ('A3','제휴');
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
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('2','test','8divKXK3GO','테스트','11111111','010-1111-1111','toffg6450@naver.com',270000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','PLATINUM',151,null,'N','N');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('3','test1','4BaxO98ca8','변승훈','11111111','010-1111-1111','toffg6450@naver.com',800000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','GOLD',101,null,'N','N');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('4','test2','123!@#qweQWE','변승훈','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'N','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('1','admin','1234','admin','99999999','01012341344','nullnull',102560000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,'(null)','N','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('5','test3','123!@#qweQWE','변승훈','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','PLATINUM',151,null,'N','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('6','test4','123!@#qweQWE','변승훈','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','SILVER',51,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('7','test5','123!@#qweQWE','변여신','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('8','test6','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',5,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('9','test7','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('10','test8','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('11','test9','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('12','test10','123!@#qweQWE','오영은','19950228','010-1111-1111','toffg6450@naver.com',480000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',5,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('13','test11','123!@#qweQWE','김동원','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('14','test12','123!@#qweQWE','변매력','19930809','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('15','test13','123!@#qweQWE','서정완','19920101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('16','test14','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('17','test15','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('18','test16','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('19','test17','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('20','test18','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('21','test19','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('22','test20','123!@#qweQWE','김성훈','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('23','test21','123!@#qweQWE','이정민','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('24','test22','123!@#qweQWE','박삼성','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('25','test23','123!@#qweQWE','김엘쥐','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('26','test24','123!@#qweQWE','이웹디','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('27','test25','123!@#qweQWE','도그래픽','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('28','test26','123!@#qweQWE','김모바일','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('29','test27','123!@#qweQWE','김성훈','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('30','test28','123!@#qweQWE','이정민','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('31','test29','123!@#qweQWE','박삼성','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('32','test30','123!@#qweQWE','김엘쥐','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('33','test31','123!@#qweQWE','이웹디','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('34','test32','123!@#qweQWE','도그래픽','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('35','test33','123!@#qweQWE','이태양','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('36','test34','123!@#qweQWE','김모바일','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('37','test35','123!@#qweQWE','김성훈','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('38','test36','123!@#qweQWE','이정민','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('39','test37','123!@#qweQWE','박삼성','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('40','test38','123!@#qweQWE','김엘쥐','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('41','test39','123!@#qweQWE','이웹디','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('42','test40','123!@#qweQWE','도그래픽','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('43','test41','123!@#qweQWE','이태양','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('44','test42','123!@#qweQWE','김모바일','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('45','test43','123!@#qweQWE','김성훈','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('46','test44','123!@#qweQWE','이정민','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('47','test45','123!@#qweQWE','박삼성','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('48','test46','123!@#qweQWE','김엘쥐','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('49','test47','123!@#qweQWE','이웹디','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('50','test48','123!@#qweQWE','도그래픽','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('51','test49','123!@#qweQWE','이태양','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('52','test50','123!@#qweQWE','김모바일','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('53','test51','123!@#qweQWE','테스트','55555555','010-123-1111','123@nate.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('73','tmdgns','sCUoa6M3g3','변승훈','19960227','010-3658-4731','whfkddk12@naver.com',1111777,to_date('20/06/22','RR/MM/DD'),to_date('20/06/22','RR/MM/DD'),'Y','BRONZE',3,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('74','admin234','TMDGNS1!','변승훈','11111111','010-1111-1111','toffg645012@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('78','sell','1234','판매자','22222222','010-9874-9874','0000@naver.com',100000,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'N','BRONZE',4,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('79','buy1','1234','구매자일','22222222','010-9874-6547','wlsgml898@naver.com',1000000,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('80','buy2','1234','구매자이','19960227','010-3214-6547','wlsgml8989123@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('81','admin1234','123!@#qwe','변승훈','11111111','010-1111-1111','00004@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into MEMBER (USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values ('82','toffg','tmdgns1!','변승훈','19960227','010-111-1222','toffg@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
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
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (186,'ㅎㅎㅎ','Y',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (188,'ㅁㄴㅇㄹ','Y',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (190,'N','N',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORT (BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (194,'N','N',to_date('20/06/23','RR/MM/DD'),13,'B1');
REM INSERTING into REPORT_TYPE
SET DEFINE OFF;
Insert into REPORT_TYPE (REPORT_TYPE,REPORT_NAME) values ('B1','판매자 신고');
Insert into REPORT_TYPE (REPORT_TYPE,REPORT_NAME) values ('B2','구매자 신고');
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
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (54,'1','Time Seller 관리자','서울특별시 강서구',0,0,'Y','0','auction','이벤트','Ev',to_date('20/07/01','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'BTS 만남 이벤트',to_date('20/06/20','RR/MM/DD'),'전 세계 아미들아 모여라!!
BTS를 만날 수 있는 기회가 Time Seller에 찾아왔습니다
경매를 통해 BTS와의 시간을 만들어 보세요!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (55,'1','Time Seller 관리자','서울특별시 강남구',1,0,'Y','0','auction','이벤트','Ev',to_date('20/06/27','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Twice 만남 이벤트',to_date('20/06/20','RR/MM/DD'),'원스들이여 트와이스가 온다!!
트둥이들을 만날 절호의 기회를 Time Seller에서 얻어보세요!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (53,'1','Time Seller관리자','서울특별시 서초구',1,0,'Y','0','auction','이벤트','Ev',to_date('20/06/27','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'빌게이츠 방한 이벤트 안내',to_date('20/06/20','RR/MM/DD'),'빌게이츠가 2020년 6월 30일 한국을 방한합니다!!
Time Seller에서 경매를 통해 빌게이츠와의 만남의 기회를 얻어보세요!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (56,'1','Time Seller 관리자','경기도 수원시  영통구',2,0,'Y','0','auction','이벤트','Ev',to_date('20/07/02','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'삼성 이재용 부회장 만남 이벤트',to_date('20/06/21','RR/MM/DD'),'삼성 이재용 부회장과 만남을 가질 수 있는 절호의 기회!!
오직 Time Seller에서만 누릴 수 있는 특권을 경매를 통해 얻어보세요','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (57,'1','Time Seller 관리자','서울특별시 서초구',0,0,'Y','0','auction','이벤트','Ev',to_date('20/07/02','RR/MM/DD'),30000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'가수 비 만남 이벤트',to_date('20/06/21','RR/MM/DD'),'꾸러기 표정, 화려한 조명이 필수인 그가 온다!!
역주행 신화를 쓴 ''깡''의 주인공 비를 Time Seller에서 만날 수 있는 절호의 찬스!!
경매에 참가하여 비와 만날 수 있는 기회를 잡아보세요!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (58,'1','Time Seller 관리자','서울특별시 종로구',0,0,'Y','0','auction','이벤트','Ev',to_date('20/07/02','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'트럼프 대통령 만남 이벤트',to_date('20/06/21','RR/MM/DD'),'현 미국의 대통령 트럼프를 만날 수 있는 기회를 Time Seller가 어렵게 구했습니다!!
경매를 통하여 트럼프를 만날 수 있는 기회를 놓치지 마세요','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (59,'1','Time Seller 관리자','서울특별시 서초구',0,0,'Y','0','auction','이벤트','Ev',to_date('20/07/02','RR/MM/DD'),30000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'유재석 만남 이벤트',to_date('20/06/21','RR/MM/DD'),'국민 MC 유재석을 만날 수 있는 절호의 기회!! Time Seller에서 기회를 잡아보세요!!
경매를 통하여 유재석과의 만남의 기회를 놓치지 마세요','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (60,'1','Time Seller 관리자','서울특별시 서초구',0,0,'Y','0','auction','이벤트','Ev',to_date('20/07/02','RR/MM/DD'),100000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'리오넬 메시와의 만남 이벤트',to_date('20/06/21','RR/MM/DD'),'세계 최고의 축구선수인 메시를 만날 수 있는 기회!!
Time Seller에서 메시를 만날 수 있는 기회를 놓치지 마세요!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (61,'1','Time Seller 관리자','서울특별시 서초구',0,0,'Y','0','auction','이벤트','Ev',to_date('20/07/03','RR/MM/DD'),20000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'소지섭 만남 이벤트',to_date('20/06/21','RR/MM/DD'),'소지섭과의 1대1 만남을 할 수 있는 절호의 기회!!
Time Seller에서 제공하는 절호의 기회를 입찰을 통해 잡아보세요!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (62,'1','Time Seller 관리자','서울특별시 서초구',2,0,'Y','0','auction','이벤트','Ev',to_date('20/07/08','RR/MM/DD'),30000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'손흥민 만남 이벤트',to_date('20/06/21','RR/MM/DD'),'EPL 최고의 축구 선수중 한 명이자 우리나라 국가대표인 손흥민 선수를 만날 수 있는 기회!!
Time Seller에서 그 기회를 만나보세요!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (63,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',0,0,'Y','0','general','창업','Bu',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (64,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',0,0,'Y','0','general','창업','Bu',null,0,40000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (65,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',0,0,'Y','0','general','창업','Bu',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (66,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',1,0,'Y','1','general','창업','Bu',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (67,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',0,0,'Y','0','general','창업','Bu',null,0,70000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (68,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',0,0,'Y','0','auction','창업','Bu',to_date('20/06/27','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (69,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',0,0,'Y','0','auction','창업','Bu',to_date('20/06/29','RR/MM/DD'),20000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (70,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',0,0,'Y','0','auction','창업','Bu',to_date('20/06/29','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (71,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',0,0,'Y','0','auction','창업','Bu',to_date('20/06/28','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (72,'12','이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','경기도 평택시',1,0,'Y','0','auction','창업','Bu',to_date('20/07/04','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'창업의 기초를 알려드립니다',to_date('20/06/21','RR/MM/DD'),'창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (73,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','general','마케팅','Ma',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (74,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','general','마케팅','Ma',null,0,40000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (75,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','general','마케팅','Ma',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (76,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','general','마케팅','Ma',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (77,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','general','마케팅','Ma',null,0,70000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (78,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','auction','마케팅','Ma',to_date('20/06/27','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (79,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','auction','마케팅','Ma',to_date('20/06/27','RR/MM/DD'),20000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (80,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','auction','마케팅','Ma',to_date('20/06/27','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (81,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','auction','마케팅','Ma',to_date('20/06/27','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (82,'13','이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','경기도 용인시',0,0,'Y','0','auction','마케팅','Ma',to_date('20/06/27','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'효율적인 마케팅 방법을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (83,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','general','공무원','Pu',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (84,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','general','공무원','Pu',null,0,20000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (85,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','general','공무원','Pu',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (86,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','general','공무원','Pu',null,0,40000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (87,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','general','공무원','Pu',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (88,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','auction','공무원','Pu',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (89,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','auction','공무원','Pu',to_date('20/06/30','RR/MM/DD'),20000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (90,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','auction','공무원','Pu',to_date('20/06/30','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (91,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',1,0,'Y','0','auction','공무원','Pu',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (92,'14','이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','충청남도 천안시',0,0,'Y','0','auction','공무원','Pu',to_date('20/07/01','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'공무원 준비 일대기를 들려 드립니다',to_date('20/06/21','RR/MM/DD'),'공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (93,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','general','취업','Fi',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (94,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','general','취업','Fi',null,0,20000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (95,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','general','취업','Fi',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (96,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구
',0,0,'Y','0','general','취업','Fi',null,0,40000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (97,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','general','취업','Fi',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (98,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','auction','취업','Fi',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (99,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','auction','취업','Fi',to_date('20/07/01','RR/MM/DD'),20000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (100,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','auction','취업','Fi',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (101,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','auction','취업','Fi',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (102,'15','이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','서울시 광진구',0,0,'Y','0','auction','취업','Fi',to_date('20/07/01','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'금융권 취업을 도와드립니다',to_date('20/06/21','RR/MM/DD'),'금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (103,'22','이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중','서울시 노원구',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'JAVA 기초 강의 및 조언 해드립니다',to_date('20/06/21','RR/MM/DD'),'JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (104,'23','이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중','서울시 여의도동',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,70000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'C# 기초 강의 및 조언 해드립니다',to_date('20/06/21','RR/MM/DD'),'C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (105,'24','이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중','경기도 화성시',0,0,'Y','0','general','교육, IT, 취업','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (106,'25','이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중','서울특별시 서초구',1,0,'Y','0','general','취업, IT','It',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (107,'26','이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수','경기도 구리시',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'웹디자인 기초강의 해드립니다',to_date('20/06/21','RR/MM/DD'),'웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (108,'27','이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','경기도 안성시',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',to_date('20/06/21','RR/MM/DD'),'그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (109,'27','이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중','서울특별시 서초구',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'파이썬 알려드립니다',to_date('20/06/21','RR/MM/DD'),'파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (110,'28','이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중','경기도 평택시',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'모바일 앱 만들기 기초 강의 합니다',to_date('20/06/21','RR/MM/DD'),'모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (111,'29','이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중','서울시 노원구',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'JAVA 기초 강의 및 조언 해드립니다',to_date('20/06/21','RR/MM/DD'),'JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (112,'30','이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중','서울시 여의도동',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,70000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'C# 기초 강의 및 조언 해드립니다',to_date('20/06/21','RR/MM/DD'),'C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (113,'31','이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중','경기도 화성시',0,0,'Y','0','general','교육, IT, 취업','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (114,'32','이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중','서울특별시 서초구',0,0,'Y','0','general','취업, IT','It',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (115,'33','이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수','경기도 구리시',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'웹디자인 기초강의 해드립니다',to_date('20/06/21','RR/MM/DD'),'웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (116,'34','이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','경기도 안성시',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',to_date('20/06/21','RR/MM/DD'),'그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (117,'35','이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중','서울특별시 서초구',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'파이썬 알려드립니다',to_date('20/06/21','RR/MM/DD'),'파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (118,'36','이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중','경기도 평택시',0,0,'Y','0','general','교육, IT, 코딩','It',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'모바일 앱 만들기 기초 강의 합니다',to_date('20/06/21','RR/MM/DD'),'모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (119,'37','이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중
','서울시 노원구',1,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'JAVA 기초 강의 및 조언 해드립니다',to_date('20/06/21','RR/MM/DD'),'JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.

','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (120,'38','이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중
','서울시 여의도동',3,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'C# 기초 강의 및 조언 해드립니다',to_date('20/06/21','RR/MM/DD'),'C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (121,'39','이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중
','경기도 화성시',0,0,'Y','0','auction','교육, IT, 취업','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (122,'40','이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중
','서울특별시 서초구',0,0,'Y','0','auction','취업, IT','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (123,'41','이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수
','경기도 구리시',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'웹디자인 기초강의 해드립니다',to_date('20/06/21','RR/MM/DD'),'웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (124,'42','이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수
','경기도 안성시',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',to_date('20/06/21','RR/MM/DD'),'그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (125,'43','이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중
','서울특별시 서초구',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'파이썬 알려드립니다',to_date('20/06/21','RR/MM/DD'),'파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (126,'44','이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중
','경기도 평택시',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'모바일 앱 만들기 기초 강의 합니다',to_date('20/06/21','RR/MM/DD'),'모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (127,'45','이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중
','서울시 노원구',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'JAVA 기초 강의 및 조언 해드립니다',to_date('20/06/21','RR/MM/DD'),'JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.

','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (128,'46','이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중
','서울시 여의도동',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'C# 기초 강의 및 조언 해드립니다',to_date('20/06/21','RR/MM/DD'),'C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (129,'47','이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중
','경기도 화성시',0,0,'Y','0','auction','교육, IT, 취업','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (130,'48','이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중
','서울특별시 서초구',0,0,'Y','0','auction','취업, IT','It',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',to_date('20/06/21','RR/MM/DD'),'LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (131,'49','이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수
','경기도 구리시',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'웹디자인 기초강의 해드립니다',to_date('20/06/21','RR/MM/DD'),'웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (132,'50','이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','경기도 안성시',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),40000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',to_date('20/06/21','RR/MM/DD'),'그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (133,'51','이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중
','서울특별시 서초구',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'파이썬 알려드립니다',to_date('20/06/21','RR/MM/DD'),'파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (134,'52','이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중
','경기도 평택시',0,0,'Y','0','auction','교육, IT, 코딩','It',to_date('20/07/01','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'모바일 앱 만들기 기초 강의 합니다',to_date('20/06/21','RR/MM/DD'),'모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (1,'3','"이름 : 변승훈
나이 : 25세
학력 : 대졸
학과 : 에너지IT
경력 : 삼성전자 근무중, 국제 콩쿨대회 우승 다수 
취미 : 피아노
좋아하는 음식 : 소고기
','강원도/횡성군',3,0,'Y','0','general','기타 레슨','Ar',null,0,1000000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'단기간에 기타 마스터 하는법을 알려드립니다.',to_date('20/06/20','RR/MM/DD'),'

단기간에 기타 마스터 하는법을 알려드립니다.
남녀노소 누구나 가능합니다.
누구보다 확실하게 마스터할 수 있게 해드립니다. 
저, 변승훈만 믿고 따라오십시오! ','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (3,'3','이름 : 변승훈
나이 : 25세
학력 : 대졸
학과 : 에너지IT
경력 : 삼성전자 근무중, 국제 콩쿨대회 우승 다수 
취미 : 춤, 기타, 노래
좋아하는 음식 : 소고기
하고싶은말 : 소고기 사주는사람 착한사람 한우최고','경기도/성남시/수정구',2,0,'Y','0','auction','댄스 ','Ar',to_date('20/06/16','RR/MM/DD'),200000,200000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'당신도 방탄소년단이 될 수 있습니다. ',to_date('20/06/20','RR/MM/DD'),'방탄소년단 뷔만큼 잘생겨질수는 없지만 뷔만큼 춤은 출 수 있도록 해드립니다.
생초보도 쉽게 배울 수 있는 댄스 클래스 !
당신도 도전해보세요.','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (2,'3','이름 : 변승훈
나이 : 25세
학력 : 대졸
학과 : 에너지IT
경력 : 삼성전자 근무중, 국제 콩쿨대회 우승 다수 
취미 : 노래
좋아하는 음식 : 소고기
하고싶은말 : 소고기 사주는사람 착한사람 한우최고','경기도/고양시/일산서구',3,0,'Y','0','auction','노래','Ar',to_date('20/06/26','RR/MM/DD'),1000000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'단기간에 박효신 성대로 만들어 드립니다.  ',to_date('20/06/20','RR/MM/DD'),'
단기간에 박효신 성대처럼 만들어드립니다. 
이제 노래방에서 눈치 안보고 박효신 노래 맘껏 부를 수 있습니다 !!!!','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (4,'3','이름 : 변승훈
나이 : 25세
학과 : 실용음악과
경력 : 쇼미더머니 시즌 18 우승 
취미 : 랩, 노래, 춤, 기타
좋아하는 음식 : 돈까스
','서울시/강남구/역삼동',9,0,'Y','1','general','랩','Ar',null,0,300000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'당신도 스윙스가 될 수 있습니다. ',to_date('20/06/20','RR/MM/DD'),'
스윙스 뺨치는 랩실력을 갖고 싶으십니까? 
랩 초보도 누구나 쇼미더머니 우승할 수 있는 실력으로 키워드립니다 !
돈까스 가루털기 춤도 알려드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (5,'3','이름 : 변승훈
나이 : 25세
학력 : 대졸
학과 : 실용댄스학과 
경력 : 전국 댄스배틀 1등 수상 
취미 : 노래, 춤, 기타, 랩 
좋아하는 음식 : 초밥
','경기도/평택시',3,0,'Y','1','auction','춤 ','Ar',to_date('20/06/29','RR/MM/DD'),210000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'1일 3깡을 하는 당신에게',to_date('20/06/20','RR/MM/DD'),'꾸러기 표정을 지었나요?
화려한 조명이 감쌌나요?
신발끈을 꽉맸나요?
꼬만춤을 췄나요? 
그럼 당신은 깡을 제대로 배울 준비가 되어있습니다. 지금 바로 도전하세요 !','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (21,'3','이름 : 변승훈
나이 : 40세
학력 : 대졸
학과 : 에너지IT
경력 : 삼성전자 근무중, 국제 콩쿨대회 우승 다수 
취미 : 사진찍기
좋아하는 음식 : 고기','경기도/고양시',1,0,'Y','0','general','카메라','Ar',null,0,20000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'필름카메라에 대한 경험을 나누고 싶습니다. ',to_date('20/06/21','RR/MM/DD'),'
필름카메라와 사랑에 빠진지 10년, 저의 필름카메라 경험을 나누고 싶습니다. 
필름 카메라에 대해 알고싶으신분, 사진과 카메라를 사랑하시는 모든 분들 
환영입니다.  ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (22,'3','이름 : 변승훈
나이 : 48세
학력 : 대졸
학과 : 회화과 
경력 : 서울시 강남구 변변미술학원 원장  
취미 : 벽화그리기 
','서울시/강남구',0,0,'Y','0','general','미술','Ar',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'레오나르도 다빈치처럼 그림그리기 ',to_date('20/06/21','RR/MM/DD'),'그림을 잘그리고 싶으신데 방법을 모르시는 분들을 위한 만남을 준비해보았습니다.
레오나르도 다빈치처럼 그림 그리는 방법 알고싶지 않으십니까?
모나리자 같은 그림 하나 그려보고 싶으시다면 빠르고 이해하기 쉽게 알려드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (23,'3','이름 : 변승훈
나이 : 58세
학력 : 대졸
학과 : 연극영화과 
경력 : 뿌부의 세계, 또깨비 수콰이캐슬 등 히트작 다수 출연
','서울시/금천구',0,0,'Y','0','auction','연기','Ar',to_date('20/07/01','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'하정우처럼 연기하고 싶으신분',to_date('20/06/21','RR/MM/DD'),'
연기를 사랑하는 모든분들, 연기자가 되고싶은 모든분들 !
하정우처럼 연기하고 싶지 않으십니까 ?
연기인생 30년의 저를 만나보시면 하정우같은 리얼 생활연기가 가능해지실 겁니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (24,'3','이름 : 변승훈
나이 : 30세
학력 : 호그와트 그리핀도르 출신
취미 : 페트로누스 소환 
좋아하는 음식 : 버터맥주
','경기도/고양시/일산서구',10,0,'Y','80','auction','마술','Ar',to_date('20/06/23','RR/MM/DD'),800000,800000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'마술의 비밀을 알려드립니다. ',to_date('20/06/21','RR/MM/DD'),'
누구나 알고싶어하고 궁금해하지만 알수 없는 마술의 세계 !
현직 마법사가 알려드립니다. 
좋아하는 이성에게 간단한 마술을 선보여 호감을 얻어보세요 ! ','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (25,'3','이름 : 변승훈
나이 : 35세
학력 : 대졸
학과 : 실용댄스학과
경력 : 전국 마임대회 2회 우승, 밀라노에서 공연 
취미 : 텝댄스
좋아하는 음식 : 새우장
','서울시/강남구/역삼동',0,0,'Y','0','general','마임','Ar',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'마임에 대해 알려드립니다. ',to_date('20/06/21','RR/MM/DD'),'
신기하지만 생소하고 낯선 마임의 세계를 경험해보세요.
마임이 좋아서 시작한지 10년 ! 
마임이 궁금한 당신에게 저의 이야기를 들려드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (26,'3','이름 : 변승훈
나이 : 30세
학력 : 대졸
학과 : 현대미술학과 
경력 : 역삼동 스타벅스 바리스타
취미 : 노래
좋아하는 음식 : 바닐라라떼
','서울시/강남구/역삼동',0,0,'Y','0','general','라떼아트','Ar',null,0,80000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'라떼아트에 대해 알려드립니다. ',to_date('20/06/21','RR/MM/DD'),'
라떼아트의 세계에 오신걸 환영합니다. 
라떼를 사랑하는 당신 마시는데에만 그치지 말고 
이제는 나만의 라떼를 한번 만들어보세요 !','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (28,'4','이름 : 변승훈
나이 : 48세
학력 : 대졸
학과 : 회화과 
경력 : 서울시 강남구 변변미술학원 원장  
취미 : 벽화그리기 ','경기도/평택시',0,0,'Y','0','auction','미술 ','Ar',to_date('20/06/27','RR/MM/DD'),10000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'당신도 모나리자를 그릴 수 있습니다. ',to_date('20/06/21','RR/MM/DD'),'그림을 잘그리고 싶으신데 방법을 모르시는 분들을 위한 만남을 준비해보았습니다.
레오나르도 다빈치처럼 그림 그리는 방법 알고싶지 않으십니까?
모나리자 같은 그림 하나 그려보고 싶으시다면 빠르고 이해하기 쉽게 알려드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (29,'4','이름 : 변승훈
나이 : 58세
학력 : 대졸
학과 : 연극영화과 
경력 : 뿌부의 세계, 또깨비 수콰이캐슬 등 히트작 다수 출연','충청남도/천안시',0,0,'Y','0','auction','연기','Ar',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'하정우처럼 연기의 신이 되고 싶습니까?',to_date('20/06/21','RR/MM/DD'),'연기를 사랑하는 모든분들, 연기자가 되고싶은 모든분들 !
하정우처럼 연기하고 싶지 않으십니까 ?
연기인생 30년의 저를 만나보시면 하정우같은 리얼 생활연기가 가능해지실 겁니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (30,'4','이름 : 변승훈
나이 : 30세
학력 : 호그와트 그리핀도르 출신
취미 : 페트로누스 소환 
좋아하는 음식 : 버터맥주','서울시/강남구',0,0,'Y','0','general','마술','Ar',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'마술의 세계를 보여드립니다. ',to_date('20/06/21','RR/MM/DD'),'누구나 알고싶어하고 궁금해하지만 알수 없는 마술의 세계 !
현직 마법사가 알려드립니다. 
좋아하는 이성에게 간단한 마술을 선보여 호감을 얻어보세요 ! ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (31,'4','이름 : 변승훈
나이 : 30세
학력 : 대졸
학과 : 현대미술학과 
경력 : 세계 마임대회 3위 수상
취미 : 노래
좋아하는 음식 : 파니니','서울시/강남구/역삼동',0,0,'Y','0','auction','마임','Ar',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'마임의 세계를 경험해보세요.',to_date('20/06/21','RR/MM/DD'),'신기하지만 생소하고 낯선 마임의 세계를 경험해보세요.
마임이 좋아서 시작한지 10년 ! 
마임이 궁금한 당신에게 저의 이야기를 들려드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (32,'5','이름 : 변승훈
나이 : 35세
학력 : 대졸
학과 : 식품영양학과
경력 : 전국 요리대회 3회 우승
','서울시/강남구/역삼동',0,0,'Y','0','general','요리클래스','Re',null,0,30000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'요리를 사랑하시는 모든 분들',to_date('20/06/21','RR/MM/DD'),'요리를 사랑하시는 모든분들 저랑 함께 요리해요!
요리에 대한 다양한 경험들과 체험을 하게 해드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (33,'5','이름 : 변승훈
나이 : 55세
학력 : 대졸
학과 : 식품영양학과 
경력 : 백종원 브랜드 총괄팀장
취미 : 춤, 기타, 요리 
좋아하는 음식 : 소고기
','경기도/성남시/수정구',1,0,'Y','0','auction','요식업','Re',to_date('20/06/30','RR/MM/DD'),200000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'백종원같은 요식업계의 대부가 되게 해드립니다.',to_date('20/06/21','RR/MM/DD'),'
제2의 백종원을 꿈꾸는 당신에게만 은밀히 알려드리는 요식업계의 비밀 
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (34,'6','이름 : 변승훈
나이 : 68세
학력 : 대졸
학과 : 식품과
경력 : 서울시 강남구 변변요리학원 원장
취미 : 노래','경기도/평택시',1,0,'Y','0','general','피자요리','Re',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'피자 장인으로 만들어드립니다. ',to_date('20/06/21','RR/MM/DD'),'

40년 피자 외길만 걸어왔습니다. 피자에대한 모든 것을 알려드립니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (35,'6','이름 : 변승훈
나이 : 55세
학력 : 대졸
학과 : 식품영양학과 
경력 : 백종원 브랜드 총괄팀장
취미 : 춤, 기타, 요리 
좋아하는 음식 : 소고기','서울시/강남구/역삼동',2,0,'Y','0','auction','요식업','Re',to_date('20/06/29','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'백종원같은 요식업계의 대부가 되게 해드립니다.',to_date('20/06/21','RR/MM/DD'),'제2의 백종원을 꿈꾸는 당신에게만 은밀히 알려드리는 요식업계의 비밀 ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (36,'6','이름 : 변승훈
나이 : 68세
학력 : 대졸
학과 : 식품과
경력 : 서울시 강남구 변변요리학원 원장
취미 : 노래','서울시/강남구/역삼동',0,0,'Y','0','auction','피자요리','Re',to_date('20/07/10','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'피자 장인으로 만들어드립니다. ',to_date('20/06/21','RR/MM/DD'),'40년 피자 외길만 걸어왔습니다. 피자에대한 모든 것을 알려드립니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (37,'6','이름 : 변승훈
나이 : 68세
학력 : 대졸
학과 : 식품과
경력 : 서울시 강남구 변변요리학원 원장
취미 : 노래
경기도/평택시','서울시/강남구/역삼동',0,0,'Y','0','general','피자요리','Re',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'피자 장인으로 만들어드립니다.',to_date('20/06/21','RR/MM/DD'),'40년 피자 외길만 걸어왔습니다. 피자에대한 모든 것을 알려드립니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (38,'6','이름 : 변승훈
나이 : 55세
학력 : 대졸
학과 : 식품영양학과 
경력 : 백종원 브랜드 총괄팀장
취미 : 춤, 기타, 요리 
좋아하는 음식 : 소고기','서울시/강남구/역삼동',0,0,'Y','0','general','요식업','Re',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'백종원같은 요식업계의 대부가 되게 해드립니다.',to_date('20/06/21','RR/MM/DD'),'제2의 백종원을 꿈꾸는 당신에게만 은밀히 알려드리는 요식업계의 비밀 ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (39,'6','이름 : 변승훈
나이 : 35세
학력 : 대졸
학과 : 식품영양학과
경력 : 전국 요리대회 3회 우승','충청남도/천안시',0,0,'Y','0','general','요리를 사랑하시는 모든 분들','Re',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'요리를 사랑하시는 모든 분들',to_date('20/06/21','RR/MM/DD'),'요리를 사랑하시는 모든분들 저랑 함께 요리해요!
요리에 대한 다양한 경험들과 체험을 하게 해드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (40,'6','이름 : 변승훈
나이 : 40세
학력 : 대졸
학과 : 식품영양학과
경력 : 치즈공장운영중','서울시/강남구/역삼동',0,0,'Y','0','auction','치즈','Re',to_date('20/06/17','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'치즈에 관한 이야기',to_date('20/06/21','RR/MM/DD'),'다년간 치즈만 연구했습니다. 치즈를 사랑하시는 분들에게 치즈 이야기를 들려드리고 싶습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (41,'6','이름 : 변승훈
나이 : 60세
학력 : 대졸
학과 : 식품영양학과
경력 :  일본 초밥 프렌차이즈 전문점 스시잔마이에서 20년 근무','서울시/강남구/역삼동',0,0,'Y','0','general','초밥요리','Re',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'초밥장인이 들려주는 초밥이야기',to_date('20/06/21','RR/MM/DD'),'30년동안 초밥만 만들어왔습니다. 초밥을 좋아하시는 모든분께 초밥이야기를 
들려드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (42,'7','이름 : 변여신
나이 : 30세
학력 : 대졸
학과 : 약학과
경력 : 서울대학병원에서 근무중
','서울시/강남구/역삼동',0,0,'Y','0','general','의료-약사','Me',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'약사가 되기까지의 과정',to_date('20/06/21','RR/MM/DD'),'
약사가 되기로 결심한 계기, 약사가 되기까지의 과정, 
약사가되었을 때의 사건들 등
약사에 대해 궁금하신 모든 것을 알려드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (43,'7','이름 : 변여신
나이 : 38세
학력 : 대졸
학과 : 의학과 
경력 : 서울대학병원에서 근무중','서울시/금천구',1,0,'Y','0','auction','의료_의사','Me',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'의사가 궁금하신 모든 분들에게',to_date('20/06/21','RR/MM/DD'),'의사가 되기까지의 과정과 공부법 등의 모든 과정들을 알려드립니다.
더 궁금한 사항들에 대해서도 자유롭게 질문하셔도 됩니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (44,'7','이름 : 변여신
나이 : 28세
학력 : 대졸
학과 : 약학과
경력 : 서울대학병원에서 근무중','서울시/동작구',0,0,'Y','0','general','의료_방사선사','Me',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'방사선사에 대해 궁금하신 모든분들',to_date('20/06/21','RR/MM/DD'),'
방사선사가 되기까지의 과정, 방사선사에대한 현실과 전망 등을 
솔직하게 말씀드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (45,'7','이름 : 변여신
나이 : 38세
학력 : 대졸
학과 : 의학과 
경력 : 서울대학병원에서 근무중
서울시/금천구','서울시/동작구',2,0,'Y','0','auction','의료_의사','Me',to_date('20/06/29','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'의사가 궁금하신 모든분께',to_date('20/06/21','RR/MM/DD'),'의사가 되기까지의 과정과 공부법 등의 모든 과정들을 알려드립니다.
더 궁금한 사항들에 대해서도 자유롭게 질문하셔도 됩니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (46,'7','이름 : 변여신
나이 : 28세
학력 : 대졸
학과 : 약학과
경력 : 서울대학병원에서 근무중','서울시/동작구',0,0,'Y','0','auction','의료_방사선사','Me',to_date('20/07/06','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'방사선사에 대해 궁금하신 모든분들',to_date('20/06/21','RR/MM/DD'),'방사선사가 되기까지의 과정, 방사선사에대한 현실과 전망 등을 
솔직하게 말씀드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (47,'7','이름 : 변여신
나이 : 30세
학력 : 대졸
학과 : 약학과
경력 : 서울대학병원에서 근무중','충청남도/천안시',1,0,'Y','0','auction','의료-약사','Me',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'약사가 되기까지의 과정',to_date('20/06/21','RR/MM/DD'),'약사가 되기로 결심한 계기, 약사가 되기까지의 과정, 
약사가되었을 때의 사건들 등
약사에 대해 궁금하신 모든 것을 알려드리겠습니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (48,'7','이름 : 변여신
나이 : 35세
학력 : 대졸
학과 : 패션디자인학과
','서울시/강남구/개포동',0,0,'Y','0','general','패션디자인','Fa',null,0,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'제2의 앙드레김을 꿈꾸는 분들에게 ',to_date('20/06/21','RR/MM/DD'),'당신도 앙드레김처럼 될 수 있습니다. 패션에 관한 모든것을 알려드립니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (49,'7','이름 : 변여신
나이 : 35세
학력 : 대졸
학과 : 패션디자인학과
경력 : 패션 디자이너로 유명함','서울시/강남구',0,0,'Y','0','auction','패션_옷','Fa',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'패션센스가 기안 84인 분들께',to_date('20/06/21','RR/MM/DD'),'
옷 잘입고싶으신 패션테러리스트분들 ! 
당신도 저를 만나면 김수현같은 사람으로 다시 태어날 수 있게 될 것입니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (50,'7','이름 : 변여신
나이 : 35세
학력 : 대졸
학과 : 패션디자인학과
경력 : 패션 디자이너로 유명함','서울시/강남구',1,0,'Y','0','general','패션_옷','Fa',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'패션센스가 기안 84인 분들께',to_date('20/06/21','RR/MM/DD'),'
옷 잘입고싶으신 패션테러리스트분들 ! 
당신도 저를 만나면 김수현같은 사람으로 다시 태어날 수 있게 될 것입니다. ','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (51,'7','이름 : 변여신
나이 : 30세추
경력 : 축구 국가대표출신
','서울시/강남구/역삼동',1,0,'Y','0','auction','스포츠_축구','Sp',to_date('20/06/30','RR/MM/DD'),100000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'당신을 일산의 메시로 만들어드립니다. ',to_date('20/06/21','RR/MM/DD'),'
축구를 사랑하는 모든분들 일산의 메시로 만들어드립니다. 
그외에 축구 국가대표를 뛰면서 경험했던 모든 것들을 이야기 해드리겠습니다.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (52,'8','학력 전공
선문대학교 석사·체육학과·졸업
경력 사항
부산아이파크 프로축·프로축구단·선수·15년.0개월','서울시/강남구/역삼동',1,0,'Y','1','general','스포츠_축구','Sp',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'나도 손흥민이 될수있다 프로축구15년이상 선생님과 축구레슨 드립니다.',to_date('20/06/21','RR/MM/DD'),'안녕하세요.
강남 최고의 선생님 변승훈 선수입니다.

저는 k리그에서 8년동안 뛰었고, 중국수퍼리그에서 3년, 태국리그에서 2년.
오랫동안 선수생활을한 전프로축구선수 입니다.

축구는 기본기가 가장 중요하죠.
제대로 된 축구를 배우지않으면 축구는 늘지않습니다.
반복적인 훈련이 필요하고 체계적인 프로그램으로 훈련을 해야합니다.

진짜 축구를 배우고싶으신 분
언제든지 축구가 처음이신 분
혹은 어린아이 성인까지 모두 즐겁게 축구를 배우실수있습니다.


프로축구15년이상의 훌륭한선생님과
최고의 프로그램으로 배우실수있는 기회입니다.
저희 스태프는 올림픽대표출신 대표님과 케이리그 중국슈퍼리그 태국리그 해외리그에서
많은경험을 한 훌륭한.스탭으로 구성되어있습니다.

이제 더 이상 축.잘.못이 아닌 그라운드의 연주자가 되어보세요.','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (6,'10','학력 전공
용인대학교·격기지도학과·졸업
경력 사항
마도로스·컨텐츠사업주·매니저·0년.4개월
월드피트니스·피티팀·트레이너·1년.0개월
하이빌피트니스·피티팀·실장·1년.0개월
센트럴짐·트레이닝·피티 트레이너·0년.9개월
보유 자격증
생활스포츠지도자1급·2014.12·한국체육진흥원
생활스포츠지도자1급(레슬링)·2019.12·한국체육진흥원
노인스포츠지도자·2017.9·한국체육진흥원
','경기도/용인시',2,0,'Y','1','general','스포츠_레슬링','Sp',null,0,100000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'유튜브 레슬링코치가 올림픽레슬링 알려 드립니다.',to_date('20/06/22','RR/MM/DD'),'스포츠_레슬링
기초, 기본기부터 중급, 고급 기술까지
더이상 레슬링 어려워하지 마세요 !
남녀노소 불문 ! 누구나 쉽게 배울 수 있는 레슬링 레슨으로
엘리트 출신 레슬러가 레슬링을 쉽고 재미있게 알려드립니다 !



[ 이런 분들 께 추천드려요 ! ]
취미
레슬링 베이스 격투기선수및 준비생
호신술배우고 싶은 분
내 신체를 강인하게 만들고 싶은 분
다른 스포츠에 접목시키고 싶은 분
더이상 레슬링은 엘리트 선수들의 전유물이 아닙니다.
','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (7,'10','이름 : 변진희
나이 : 29세
전공 : 스포츠학과
경력 : 국가대표 단거리 선수 출신
취미 : 등산, 암벽등반 
','경기도/용인시',0,0,'Y','0','auction','스포츠_단거리 달리기','Sp',to_date('20/06/26','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'우사인 볼트처럼 되고싶으시다면 클릭하세요',to_date('20/06/22','RR/MM/DD'),'우사인볼트처럼 인간탄환이 되는 비결을 알려드립니다. 
당신도 충분히 인간탄환이 될 수 있습니다. 
저만믿고 따라오세요 ! 

','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (8,'10','이름 : 변진희
나이 : 40세
전공 : 사진과
경력 : 국내 사진대회 다수 입상
취미 : 등산, 암벽등반 
','충청남도 천안시',0,0,'Y','0','general','스포츠_사진','Sp',null,0,50000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'스포츠 경기, 행사, 방송스틸 촬영해 드립니다.',to_date('20/06/22','RR/MM/DD'),' 프로 축구단의 행사 및 경기 촬영을 공식 대행하고 있으며, 축구전문 월간지의 인터뷰 촬영을 대행하고 있습니다. 다수의 경험으로 사진촬영은 물론 원활한 행사 진행까지 책임감 있는 태도로 최선을 다해 도와드립니다.

전문가의 가치는 중요한 현장에서 더욱 빛 납니다.
중요한 순간을 담아야 한다면 저렴한 가격보다 경험이 많은 작가를 선택하세요.


스포츠 경기 및 행사, 기업행사, 방송 스틸촬영이 필요하신 분은 언제든 문의주세요 *^^*
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (9,'10','저는 미술을 전공해서 패션디자인과를 다니다가 현재는 일러스트작업과 프리랜서로 일하고 있는 APE 입니다.

이름 : 변진희
나이 : 28세
전공 : 미술_패션디자인과
경력 : (現) 일러스트 작업, 디자인 관련 프리랜서
','경기도/용인시',0,0,'Y','0','general','패션디자인_지식','Fa',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'알아두면 좋은 패션디자인 입문자를 위한 잡학지식을 알려 드립니다.',to_date('20/06/22','RR/MM/DD'),'안녕하세요.
패션디자인을 막 배우려고 생각하시거나 고민을 하고 계신 입문자님들에게 도움을 드리고 싶습니다. 
패션디자인을 시작하기 전 직면하는 고민이나 의문점, 알아두면 좋은 지식들을 경험으로 알려드리고 목표를 향해 나아가는데 도움이 되었으면 좋겠습니다:)
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (10,'10','<면접·취업 코칭 전문가 자기소개>
1. 전문가의 주요 분야:
_ 이력서/자소서 작성
_ 기업분석/직무소개
_ 인사채용시스템의 이해와 단계별 준비
_ 면접코칭
2. 전문가의 경력/이력사항:
_ 대기업/중견기업 인사팀장&임원(제조/금융/패션/의료/해외법인 근무경험)
_ 헤드헌팅(전기/전자/패션/유통/건설/금융 등)
_ 공무원, 공공기업 전문면접위원 활동
_ 취업특강/멘토링 진행(서울시일자리센터, 대학 등)
_ 전직지원프로그램 설계 및 운영(공공기업 및 대기업)
3. 컨설팅 내용:
_ 취업준비에 필요한 궁금증 해소 및 개인별 맞춤 지원
_ 대졸공채시스템설계 및 운영 경험을 바탕으로 실질적인 코칭 지원
_ 자소서/면접/이미지메이킹
4. 컨설팅 절차:
_코칭 신청-패키지선택 -시간약속(온라인_카카오영상통화/대면)
5. 금액에 따른 서비스 제공 범위:
_ 패키지 금액별 온라인 서비스
','서울시/강남구/논현동',0,0,'Y','0','auction','뷰티컨설팅','Fa',to_date('20/06/30','RR/MM/DD'),50000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'뷰티 이미지 컨설팅 : 헤어, 메이크업 컨설팅 해 드립니다.',to_date('20/06/22','RR/MM/DD'),'안녕하세요.
비쥬얼님은 20년 방송과 뷰티 이미지컨설팅, 강의 등 현장 경험과 실전을 바탕으로
고객님 한분 한분에게 맞춤 서비스로 헤어, 메이크업, 패션의 노하우를 고객분에게 맞는 컨설팅을 해 드립니다.


<이런 분에게 추천해 드립니다~~^^>
*이미지 변화를 주고 싶으신 분
*내 이미지에 맞는 스타일을 찾고 싶으신 분
*내 체형에 어울리는 의상 선택을 원하시는 분
*나의 퍼스널 컬러를 알고 싶으신 분
*퍼스널 메이크업을 원하시는 분
*내 이미지에 맞는 헤어 스타일을 찾고 싶으신분
*헤어ㆍ메이크업 토탈컨설팅을 받고 싶으신 분

*개인 화장품 파우치 준비해주시면 파우치 분석 후 제품으로 레슨 해 드립니다.
*내 헤어 스타일에 맞게 아이롱, 고데기 사용 방법을 알려드립니다.
*체형 분석 통해 패션 스타일을 제안해 드립니다.

**교육 후 개인에게 맞는 화장품 재료와 헤어 제품,의상 컨셉 공유해드립니다.**
**수업 후 일주일 간 궁금한 사항 피드백 해 드립니다.*
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (11,'10','이름 : 변진희
나이 : 35세
','서울시/강남구/논현동',13,0,'Y','0','auction','패션, 취업','Fa',to_date('20/06/29','RR/MM/DD'),30000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'패션관련 취업궁금증을 해결해 드립니다.',to_date('20/06/22','RR/MM/DD'),'취업궁금증을 해결해 드립니다.

<면접·취업 코칭 전문가 자기소개>
1. 전문가의 주요 분야:
_ 이력서/자소서 작성
_ 기업분석/직무소개
_ 인사채용시스템의 이해와 단계별 준비
_ 면접코칭
2. 전문가의 경력/이력사항:
_ 대기업/중견기업 인사팀장&임원(제조/금융/패션/의료/해외법인 근무경험)
_ 헤드헌팅(전기/전자/패션/유통/건설/금융 등)
_ 공무원, 공공기업 전문면접위원 활동
_ 취업특강/멘토링 진행(서울시일자리센터, 대학 등)
_ 전직지원프로그램 설계 및 운영(공공기업 및 대기업)
3. 컨설팅 내용:
_ 취업준비에 필요한 궁금증 해소 및 개인별 맞춤 지원
_ 대졸공채시스템설계 및 운영 경험을 바탕으로 실질적인 코칭 지원
_ 자소서/면접/이미지메이킹
4. 컨설팅 절차:
_코칭 신청-패키지선택 -시간약속(온라인_카카오영상통화/대면)
5. 금액에 따른 서비스 제공 범위:
_ 패키지 금액별 온라인 서비스
','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (12,'73','변승훈
나이 490세
','충청남도 천안시',1,0,'Y','0','auction','스포츠_사진','Re',to_date('20/06/19','RR/MM/DD'),1111777,1111777,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'레스토랑',to_date('20/06/22','RR/MM/DD'),'립스틱 바르는법','Y');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (13,'73','변승훈
나이 490세
','충청남도 천안시',2,0,'Y','0','auction','스포츠_사진','Re',to_date('20/06/19','RR/MM/DD'),1111777,1111777,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'레스토랑',to_date('20/06/22','RR/MM/DD'),'립스틱 바르는법','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (14,'73','ㅎㅎㅎㅎ','충청남도 천안시',3,0,'Y','1','auction','놀기','Ar',to_date('20/06/22','RR/MM/DD'),60000,60000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'게시글 등록되나',to_date('20/06/22','RR/MM/DD'),'노는게 제일좋아','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (150,'78','비와 당신 ','경기도/용인시',102,0,'Y','79','general','놀기','Ar',null,0,10000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'비와당신',to_date('20/06/23','RR/MM/DD'),'비와 당신','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (151,'78','나는 당신','충남 천안시',113,0,'Y','80','auction','스포츠_사진','Ar',to_date('20/06/23','RR/MM/DD'),100000,100000,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'당신과 비',to_date('20/06/23','RR/MM/DD'),'당신과 비','N');
Insert into SERVICE (SERVICE_NO,S_USER_NO,SALE_INFO,AVAILABLE_AREA,READCOUNT,FILE_COUNT,FILE_YN,B_USER_NO,SALEMETHOD,SUBJECT,CATEGORY_CODE,DEADLINE,PRICE_BIDDING,PRICE_SALE,CONTACTTIME_START,CONTACTTIME_FINISH,TITLE,REGISTER_DATE,S_EXPLAIN,SERVICE_STATUS) values (152,'3','이름 : 김용승
나이 : 25세
경력 : kh정보교육원 최연소 강사
취미 : 아몬드먹기
좋아하는 음식 : 아몬드','서울시/강남구/역삼동',1,0,'Y','0','auction','IT_JAVA','It',to_date('20/06/30','RR/MM/DD'),300000,0,to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'자바 마스터하게해드립니다. ',to_date('20/06/23','RR/MM/DD'),'자바의 ''자''자도 모르시는 분들도 자바 마스터 하게 해드립니다. ','Y');
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
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (3,3,'뷔찡.jpg','뷔찡.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (1,1,'11.jpg','효신찡.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (2,2,'효신찡.jpg','효신찡.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
Insert into SERVICE_FILES (FID,SERVICE_NO,ORIGIN_NAME,CHANGE_NAME,FILE_PATH,UPLOAD_DATE,FILE_LEVEL,DOWNLOAD_COUNT,STATUS) values (4,4,'돈까스.jpg','돈까스.jpg','C:\semi_project\semiProject\semiProject\web\service_uploadFiles/',to_date('20/06/20','RR/MM/DD'),0,0,'Y');
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
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (1,'9','test7','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (2,'82','toffg','tmdgns1!','변승훈','19960227','010-111-1222','toffg@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (3,'81','admin1234','123!@#qwe','변승훈','11111111','010-1111-1111','00004@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (4,'80','buy2','1234','구매자이','19960227','010-3214-6547','wlsgml8989123@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (5,'8','test6','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',5,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (6,'79','buy1','1234','구매자일','22222222','010-9874-6547','wlsgml898@naver.com',1000000,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (7,'74','admin234','TMDGNS1!','변승훈','11111111','010-1111-1111','toffg645012@naver.com',0,to_date('20/06/23','RR/MM/DD'),to_date('20/06/23','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (8,'73','tmdgns','sCUoa6M3g3','변승훈','19960227','010-3658-4731','whfkddk12@naver.com',1111777,to_date('20/06/22','RR/MM/DD'),to_date('20/06/22','RR/MM/DD'),'Y','BRONZE',3,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (9,'7','test5','123!@#qweQWE','변여신','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (10,'6','test4','123!@#qweQWE','변승훈','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','SILVER',51,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (11,'53','test51','123!@#qweQWE','테스트','55555555','010-123-1111','123@nate.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (12,'52','test50','123!@#qweQWE','김모바일','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (13,'51','test49','123!@#qweQWE','이태양','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (14,'50','test48','123!@#qweQWE','도그래픽','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (15,'5','test3','123!@#qweQWE','변승훈','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','PLATINUM',151,null,'N','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (16,'49','test47','123!@#qweQWE','이웹디','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (17,'48','test46','123!@#qweQWE','김엘쥐','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (18,'47','test45','123!@#qweQWE','박삼성','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (19,'46','test44','123!@#qweQWE','이정민','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (20,'45','test43','123!@#qweQWE','김성훈','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (21,'44','test42','123!@#qweQWE','김모바일','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (22,'43','test41','123!@#qweQWE','이태양','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (23,'42','test40','123!@#qweQWE','도그래픽','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (24,'41','test39','123!@#qweQWE','이웹디','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (25,'40','test38','123!@#qweQWE','김엘쥐','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (26,'4','test2','123!@#qweQWE','변승훈','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'N','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (27,'39','test37','123!@#qweQWE','박삼성','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (28,'38','test36','123!@#qweQWE','이정민','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (29,'37','test35','123!@#qweQWE','김성훈','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (30,'36','test34','123!@#qweQWE','김모바일','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (31,'35','test33','123!@#qweQWE','이태양','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (32,'34','test32','123!@#qweQWE','도그래픽','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (33,'33','test31','123!@#qweQWE','이웹디','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (34,'32','test30','123!@#qweQWE','김엘쥐','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (35,'31','test29','123!@#qweQWE','박삼성','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (36,'30','test28','123!@#qweQWE','이정민','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (37,'3','test1','4BaxO98ca8','변승훈','11111111','010-1111-1111','toffg6450@naver.com',800000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','GOLD',101,null,'N','N');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (38,'29','test27','123!@#qweQWE','김성훈','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (39,'28','test26','123!@#qweQWE','김모바일','19890101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (40,'27','test25','123!@#qweQWE','도그래픽','19910101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (41,'26','test24','123!@#qweQWE','이웹디','19930101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (42,'25','test23','123!@#qweQWE','김엘쥐','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (43,'24','test22','123!@#qweQWE','박삼성','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (44,'23','test21','123!@#qweQWE','이정민','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (45,'22','test20','123!@#qweQWE','김성훈','19950101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (46,'21','test19','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (47,'20','test18','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (48,'2','test','8divKXK3GO','테스트','11111111','010-1111-1111','toffg6450@naver.com',270000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','PLATINUM',151,null,'N','N');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (49,'19','test17','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (50,'18','test16','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (51,'17','test15','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (52,'16','test14','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (53,'15','test13','123!@#qweQWE','서정완','19920101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (54,'14','test12','123!@#qweQWE','변매력','19930809','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (55,'13','test11','123!@#qweQWE','김동원','19940101','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (56,'12','test10','123!@#qweQWE','오영은','19950228','010-1111-1111','toffg6450@naver.com',480000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',5,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (57,'11','test9','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (58,'10','test8','123!@#qweQWE','테스트','11111111','010-1111-1111','toffg6450@naver.com',0,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,null,'Y','Y');
Insert into GRADELIST (RNUM,USER_NO,USER_ID,USER_PWD,USER_NAME,BIRTH,PHONE,EMAIL,POINT,ENROLL_DATE,DROP_DATE,STATUS,GRADE,GRADE_TOT,PROFILE,SELL_YN,REVIEW_YN) values (59,'1','admin','1234','admin','99999999','01012341344','nullnull',102560000,to_date('20/06/20','RR/MM/DD'),to_date('20/06/20','RR/MM/DD'),'Y','BRONZE',0,'(null)','N','Y');
REM INSERTING into INQUIARYLIST
SET DEFINE OFF;
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (9,193,'N','Y',to_date('20/06/23','RR/MM/DD'),'A1');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (8,192,'답변을 달았어요','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (7,189,'답변달기','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (6,187,'답변달기','Y',to_date('20/06/23','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (5,105,'안합니다','Y',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (4,104,'N','N',to_date('20/06/22','RR/MM/DD'),'A3');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (3,103,'N','N',to_date('20/06/22','RR/MM/DD'),'A1');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (2,102,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
Insert into INQUIARYLIST (RNUM,BOARD_NO,INQUIRY_CONTENT,INQUIRY_YN,INQUIRY_DATE,BOARD_TYPE) values (1,101,'N','N',to_date('20/06/22','RR/MM/DD'),'A2');
REM INSERTING into NOTICELIST
SET DEFINE OFF;
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (41,100,'[공지]코로나19 긴급 고용안정지원금을 신청하세요!','안녕하세요, 전문가님. 크몽입니다  ?

고용노동부에서는 지난 6월 1일부터 ‘프리랜서’를 포함한 특수형태근로종사자를 대상으로
''긴급 고용안정지원금''을 지급하고 있습니다.

대상 전문가님들의 지원금 신청을 돕기 위하여, 크몽에서도 필요 서류 등을 제공·확인해드리고 있는데요.
자세한 내용은 아래의 안내를 참고해 주세요.

 

 

　? 신청기간 및 대상
신청 기간: 2020년 6월 1일(월) ~ 7월 20일(월)

신청대상: 프리랜서·특수형태근로종사자, 영세 자영업자, 무급휴직근로자
※ 프리랜서: ‘19년 12월 ~20년 1월''에 노무를 제공하여 소득이 발생한 고용보험 미가입자

　
　? 참고(상세요건)
　‘20년 3~4월의 평균 소득''이, 비교 대상 기간(’19년 월 평균 소득_19년 3월, 4월, 12월 / 20년 1월 중 선택) 　대비 일정 수준 이상 감소한 경우','1',to_date('20/06/22','RR/MM/DD'),2,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (40,99,'개인정보 처리방침 2020. 03. 02. ver.','개인정보처리방침

 

l 제1조(총칙)

㈜타임셀러(이하 ''회사''라고 함)은 회원의 정보를 소중하게 생각하고 안전하게 보호하기 위하여 최선의 노력을 다하고 있으며 개인정보보호법 및 정부의 가이드라인을 준수합니다.

회사는 회원의 개인정보를 필요한 시점에 따라 최소한으로 수집하고 수집한 정보는 사전 고지한 범위 내에서만 사용하며, 사전 동의 없이 그 범위를 초과하여 이용하거나 외부에 공개하지 않습니다.

다만, 법령의 규정에 의거하거나, 수사기관 및 행정기관이 수사 또는 조사의 목적으로 법령에 정해진 절차와 방법에 따라 요청한 경우에만 내부 절차를 거쳐 최소한의 정보가 동의없이 제공될 수 있습니다.

회사는 ‘개인정보처리방침’을 제정하고 이를 준수하여 회원의 개인정보의 이용 및 보호에 대한 조치를 알리며, 관련법규를 준수하고 있습니다.

회사의 ‘개인정보처리방침’은 관련법률 및 지침의 변경 또는 내부 운영방침의 변경 등으로 인하여 개정될 수 있습니다.

‘개인정보처리방침’이 변경될 경우 변경사항은 공지사항 또는 이메일 등의 연락수단을 통해 공지해드립니다.

변경사항에 의문이 있으신 경우에는 언제라도 담당부서에 문의하시거나 홈페이지를 방문하여 확인하실 수 있습니다.

개인정보 처리방침과 이용 약관의 개인정보 관련한 내용의 경우 이용약관이 우선 순위를 갖습니다.

 ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (39,98,'개인정보 처리방침 2019. 12. 09. ver.','개인정보처리방침

 

l 제1조(총칙)

㈜타임셀러(이하 ''회사''라고 함)은 회원의 정보를 소중하게 생각하고 안전하게 보호하기 위하여 최선의 노력을 다하고 있으며 개인정보보호법 및 정부의 가이드라인을 준수합니다.

회사는 회원의 개인정보를 필요한 시점에 따라 최소한으로 수집하고 수집한 정보는 사전 고지한 범위 내에서만 사용하며, 사전 동의 없이 그 범위를 초과하여 이용하거나 외부에 공개하지 않습니다.

다만, 법령의 규정에 의거하거나, 수사기관 및 행정기관이 수사 또는 조사의 목적으로 법령에 정해진 절차와 방법에 따라 요청한 경우에만 내부 절차를 거쳐 최소한의 정보가 동의없이 제공될 수 있습니다.

회사는 ‘개인정보처리방침’을 제정하고 이를 준수하여 회원의 개인정보의 이용 및 보호에 대한 조치를 알리며, 관련법규를 준수하고 있습니다.

회사의 ‘개인정보처리방침’은 관련법률 및 지침의 변경 또는 내부 운영방침의 변경 등으로 인하여 개정될 수 있습니다.

‘개인정보처리방침’이 변경될 경우 변경사항은 공지사항 또는 이메일 등의 연락수단을 통해 공지해드립니다.

변경사항에 의문이 있으신 경우에는 언제라도 담당부서에 문의하시거나 홈페이지를 방문하여 확인하실 수 있습니다.

개인정보 처리방침과 이용 약관의 개인정보 관련한 내용의 경우 이용약관이 우선 순위를 갖습니다.

 
                            ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (38,97,'개인정보 처리방침 2019. 09. 18. ver.','개인정보처리방침

 

l 제1조(총칙)

㈜타임셀러(이하 ''회사''라고 함)은 회원의 정보를 소중하게 생각하고 안전하게 보호하기 위하여 최선의 노력을 다하고 있으며 개인정보보호법 및 정부의 가이드라인을 준수합니다.

회사는 회원의 개인정보를 필요한 시점에 따라 최소한으로 수집하고 수집한 정보는 사전 고지한 범위 내에서만 사용하며, 사전 동의 없이 그 범위를 초과하여 이용하거나 외부에 공개하지 않습니다.

다만, 법령의 규정에 의거하거나, 수사기관 및 행정기관이 수사 또는 조사의 목적으로 법령에 정해진 절차와 방법에 따라 요청한 경우에만 내부 절차를 거쳐 최소한의 정보가 동의없이 제공될 수 있습니다.

회사는 ‘개인정보처리방침’을 제정하고 이를 준수하여 회원의 개인정보의 이용 및 보호에 대한 조치를 알리며, 관련법규를 준수하고 있습니다.

회사의 ‘개인정보처리방침’은 관련법률 및 지침의 변경 또는 내부 운영방침의 변경 등으로 인하여 개정될 수 있습니다.

‘개인정보처리방침’이 변경될 경우 변경사항은 공지사항 또는 이메일 등의 연락수단을 통해 공지해드립니다.

변경사항에 의문이 있으신 경우에는 언제라도 담당부서에 문의하시거나 홈페이지를 방문하여 확인하실 수 있습니다.

개인정보 처리방침과 이용 약관의 개인정보 관련한 내용의 경우 이용약관이 우선 순위를 갖습니다.

 ','1',to_date('20/06/22','RR/MM/DD'),0,60,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (37,93,'[신고하기] 불량 전문가를 타임셀러에 신고할 수 있나요?','건강한 거래문화를 해친다고 판단하는 경우, 의뢰인은 직접 해당 전문가의 서비스를 신고할 수 있으며, 방법은 아래와 같습니다.
 
■ 불량 전문가 신고하기
타임셀러 사이트 하단의 고객센터로 접속하여 "문의등록" 의 ''고객의소리/제보''를 이용
※ 신고 시 증빙서류를 첨부해주시기 바랍니다.
 
■ 거래문화를 해치는 행위
- 구매한 서비스의 결과물이 설명과 크게 차이 나는 경우
- 서비스를 구매한 이후, 전문가가 추가 작업에 대해 과도한 추가 결제를 요구하는 경우
- 외부거래를 유도하는 경우(외부거래/불법홍보 신고)
- 거래 중에 연락이 되지 않는 경우
- 거래 상대에 대한 악의적인 비방 메시지를 발송하는 경우
 
타임셀러를 이용하시면서 이와 같은 경험을 하셨다면, 주저 없이 고객센터를 통해 접수해 주시기 바랍니다.
최대한 빠른 시간 내에 내용을 확인하여 도움 드릴 수 있도록 노력하겠습니다.','1',to_date('20/06/22','RR/MM/DD'),1,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (36,92,'[후기] 포토후기는 어떻게 남기나요?','포토후기는 디자인 카테고리에서 서비스를 구매하였으며, 전문가가 jpg/png 형식의 파일로 작업물발송 하는 경우 등록할 수 있습니다.
구매확정된 날짜로부터 30일 이내에 구매후기를 등록할 때에 작업물에 대한 ''공개 여부''를 선택하여 남길 수 있습니다.

포토후기는 등록 이후 수정이 불가하며, 삭제(비공개)만 가능합니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (35,91,'[매입세액공제] 매입세액공제를 받고싶습니다.','구매하신 상품/서비스에 대한 매입세액공제는 판매자가 ''기업전문가''일 경우에 가능하며, 방법은 아래와 같습니다.
 
■ 기업전문가에게 상품/서비스를 구매합니다. (개인전문가 제외)
■ 결제 시 화면 하단의 ''세금계산서 발행요청''을 선택합니다.
■ 거래 완료 후 총 거래된 금액으로 세금계산서를 발행받으실 수 있습니다. (쿠폰사용액은 제외됨)
 
※ 주의사항
타임셀러 규정 상 전문가는 총 결제금액에 부가세를 포함하여 세금계산서를 발행해야 합니다.
전문가로부터 부가세 추가 결제를 요청받으신 경우. 타임셀러 고객센터(02-1544-6254/help@timeseller.com)로 신고해주시기 바랍니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (34,90,'[구매확정] 구매확정 후에 주문을 취소/환불할 수 있나요?','구매확정은 해당 거래를 완료하겠다는 최종 의사표현의 수단으로, 구매확정 이후에는 어떠한 경우에도 주문을 취소하실 수 없습니다.
 
따라서 구매확정을 처리한 이후에는 결과물에 대한 수정/취소가 불가능합니다.
그러나 구매확정 이후에 수령한 상품/서비스에 문제가 확인될 경우에는 판매자에게 직접 사후처리를 요청하실 수 있습니다.
판매자가 일방적으로 연락을 받지 않는 등의 사유로 처리가 불가할 경우 타임셀러에서 판매자에게 연락을 시도하는 등의 일정범위 내에서 도움을 드릴 수 있으나, 판매자와 구매자간의 분쟁에는 개입하지 않습니다.
 
※ 구매확정 이후 발생되는 거래 당사자 간의 분쟁은 타임셀러에서 조정하지 않으며, 구매자가 직접 외부 중재기관으로 소를 제기하시기 바랍니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (33,89,'[휴대폰인증] 인증번호가 수신되지 않습니다.','가입하신 통신사에서 제공하는 스팸차단 부가 서비스를 이용 중이신 경우, 특정 발신번호가 자동으로 스팸으로 분류될 수 있습니다. 
 
가입하신 통신사의 스팸차단 어플의 스팸문자 수신함을 확인해주세요. 
타임셀러의 대표번호 1544-6254가 차단 대상 연락처로 등록되어 있는지 확인 후, 안내에 따라 차단을 해제해주세요. 
 
   ※ 통신사별 스팸문자 차단 어플은 아래와 같습니다.    
 통신사	어플명칭 
 SK	T스팸필터링 
KT 	 올레 스팸차단
 LG	 U+ 스팸차단
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (32,88,'[회원가입/외국인] 외국인도 회원가입 할 수 있나요?','외국인의 회원가입이 가능합니다.
다만, 서비스의 구매·판매를 위하여 휴대폰 본인 인증 절차가 필요합니다.

휴대폰 본인 인증이 불가능한 경우에 대체 인증수단은 운영하고 있지 않아 이용이 불가한 점 양해 부탁드리며, 인증 절차가 원활하게 진행되지 않을 경우 [하이코리아]를 통해 외국인 등록 여부 확인 및 휴대폰의 명의 확인을 부탁드립니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (31,87,'[회원탈퇴] 회원 탈퇴 방법이 궁금합니다.','회원 탈퇴는 아래의 방법으로 하실 수 있습니다.
 
  ■ 타임셀러 웹 > 로그인 > 우측 상단 닉네임 > 계정설정 > 회원탈퇴하기
    ※모바일 앱에서는 탈퇴 기능을 지원하지 않습니다.
 
회원 탈퇴를 하시기 전, 반드시 아래의 유의사항을 확인해주시기 바랍니다.
   ■ 타임셀러캐시, 판매수익금이 있는지 확인해주세요.
       잔여액이 1원이라도 있으신 경우 탈퇴 처리가 불가능하니, 탈퇴 전 수익금 출금 및 캐시 환불을 신청해주시기 바랍니다.
   
   ■ 무상 적립된 전문가 마일리지와 적립캐시는 환불되지 않으며, 탈퇴와 함께 자동 소멸됩니다.
 
   ■ 진행 중인 주문이나 미발송 건이 남아있는 경우 탈퇴요청이 처리되지 않습니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (30,86,'[ID중복] 이미 가입된 이메일 주소라고 표시됩니다.','기재하신 이메일 주소가 이미 타임셀러에 가입되어있다는 의미입니다. 

동일한 이메일 계정으로는 중복 가입이 불가능하므로, 아래의 조치를 해보실 수 있습니다. 

아이디/비밀번호 찾기를 통해 기존의 가입 정보를 확인하신 후 로그인 해주세요. 
회원으로 가입하지 않았음에도 위와같은 메세지가 표시될 경우 일대일문의/문의하기를 통해 아래의 정보를 타임셀러로 보내주시면 신속히 조치해드리겠습니다. 
메일 주소
가입자 실명
실명 인증이 가능한 휴대폰 번호','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (29,85,'[안심번호] 안심번호에 대해 알고싶습니다.','안심번호는 전문가의 실제 연락처 대신 임의의 가상번호를 노출하여 개인정보를 보호하고 각종 사고를 예방하는 기능입니다.
 
의뢰인이 전문가의 안심번호로 전화를 걸면 전문가의 실제 연락처로 연결되며, 안심번호 서비스 이용에 따른 서비스 이용요금은 부과되지 않습니다.
 
단, 이용 중이신 통신사의 요금 정책에 따라 부가통화료가 발생될 수 있으니, 자세한 사항은 각 통신사의 홈페이지를 참고해주시기 바랍니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (28,84,'[구매확정] 실수로 구매확정을 눌렀을 땐 어떻게 해야 하나요?','구매확정은 해당 거래를 완료하겠다는 최종 의사표현의 수단입니다.
따라서 구매확정을 처리한 이후에는 결과물에 대한 수정/취소가 불가능합니다.
실수로 구매확정을 클릭하신 경우에는 의뢰인과 전문가 양 측이 협의하여 거래 지속 또는 취소 여부를 결정해주시기 바랍니다.
 
※ 판매 수수료는 환불되지 않습니다.
※ 선 구매확정으로 인한 문제 발생 상황에서는 전문가가 수익금을 이미 수령하여 일방적으로 연락을 받지 않거나 주문상태를 변경하지 못하는 등의 문제가 발생될 수 있으니, 최종 작업물을 받아보지 않은 상태에서의 구매확정 요청은 단호히 거절해주시기 바랍니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (27,83,'[작성방법] 일반후기/포토후기 작성 방법','
서비스평가 작성시, 일반후기/포토후기로 작성할 수 있습니다.

▶ 일반후기란? 전문가의 상품/서비스를 구매한 의뢰인이 구매확정이 된 거래건에 대해서 작성하는 후기 방식입니다.

일반 후기는 별점과 글작성만 할 수 있습니다.

 

▶ 포토후기란? 전문가의 상품/서비스를 구매한 의뢰인이 구매확정이 된 거래건에 대해서 이미지 첨부를 하여 작성하는 후기 방식입니다.

포토 후기는 별점과 이미지 첨부, 글작성을 할 수 있습니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (26,82,' [주문 취소] 주문을 취소하고 싶습니다.','의뢰인이 정확한 요구사항 및 참고 자료를 제공하였음에도 불구하고 전혀 다른 상품/서비스를 수령하신 경우에는 주문취소 사유가 될 수 있습니다.
 
 
■ 취소 요청 방법
거래 중 취소는 아래의 방법으로 하실 수 있습니다.
 
(PC 버전)
- 타임셀러 접속 > 로그인 > 구매 > 구매관리 > 해당 거래 화면 접속> 우측의 ''취소/문제해결'' 클릭 후 취소 요청
 
(모바일앱)
- 타임셀러 접속 > 마이타임셀러 > 구매중인 주문> 해당 거래 화면 접속> 우측 상단의 메뉴 버튼 클릭> ''취소/문제해결'' 클릭 후 취소 요청
 
※ 주문취소는 전문가와 의뢰인 간의 취소 합의가 선행되어야 하며, 취소를 요청받은 상대는 요청된 취소를 수락하거나 거절할 수 있습니다.
※ 취소 요청을 받은 상대방이 의사표시를 하지 않을 경우, 24시간 경과 시점에 자동으로 거래가 취소됩니다.
※거래 취소 후 결제 금액은 타임셀러캐시로 반환되며, 다른 서비스의 구매에 사용하시거나 결제수단으로 환불받으실 수 있습니다.
 ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (25,81,'[원천징수] 원천징수 방법 문의','타임셀러의 영수증으로 원천징수 증빙 서류 대체가 가능합니다.

단, 이 경우 매입세액 공제를 받을수 없기에 법인세 신고시에 "비용"으로만 처리 가능합니다.

타임셀러 영수증 출력 방법 [사이트 > 로그인 > 구매 > 결제내역 > 현금영수증 or 전표출력 클릭]에서 확인가능합니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (24,80,'[세금계산서] 세금계산서 언제, 어떻게 발행받을 수 있나요?','
세금계산서는 타임셀러의 기업전문가로부터 발행받으실 수 있습니다.
개인전문가나 타임셀러에서는 의뢰인에게 세금계산서를 발행하지 않으니 이용에 참고해주시기 바랍니다.
 
■ 세금계산서 발행가능 전문가 찾기
- 구매를 원하는 카테고리의 상품 리스트 중 기업마크가 있는 전문가를 확인합니다.
리스트 좌측의 필터 항목 중 ''세금계산서 발행''을 체크하시면 발행 가능한 전문가만을 모아서 볼 수 있습니다.
 
■ 세금계산서 발행 가능 상품을 결제 시 ''세금계산서 발행'' 항목을 체크 후 정보를 입력합니다.
 
■ 타임셀러캐시를 포함한 전체 결제금액에 대해 세금계산서가 발행됩니다. (쿠폰사용액은 제외됨)
 
※ 세금계산서는 재화와 용역을 실제 공금자(전문가)가 공급받는 자(의뢰인)에게 발행해주는 것이 원칙입니다.
따라서 타임셀러에서 발급해드리는 카드/현금영수증은 단순히 ''결제''에 대한 증빙으로써만 사용하실 수 있으며, 부가가치세 매입세액 공제를 받을 수 없습니다.
 
타임셀러는 전자상거래 중개사업자로, 거래 플랫폼을 공급하는 공급자(타임셀러)와 플랫폼을 제공받아 판매하는 공급받는자(전문가)간의 거래의 증빙으로 전문가에게 수수료에 대한 세금계산서를 발행합니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (23,79,'[결제수단] 상품/서비스 결제수단이 궁금합니다.','
상품/서비스 구매 시 아래의 결제수단을 이용하실 수 있습니다.
 
■ 타임셀러캐시 / 신용카드 / 실시간 계좌이체 / 무통장 입금 / 휴대폰 / 페이나우 / 페이코

','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (22,78,'[휴대폰인증] 지인 혹은 가족 휴대폰으로 인증받아도 되나요?','
타임셀러 서비스의 원활한 이용을 위해 가입자 본인의 정보로 실명인증을 진행하시길 권장해드립니다. 
 
특히 서비스를 판매하시는 전문가인 경우, 인증된 정보를 기초로 전자세금계산서가 발행되므로 반드시 본인 명의로 인증을 해주셔야 합니다. 
 
타인의 정보로 실명인증을 하신 경우, 불이익이 발생되더라도 계정 소유권을 주장하실 수 없으며 모든 환불 및 결제와 관련한 동의 절차 혹은 관련 서류 요청은 실명인증된 계정 보유자에게 요청됩니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (21,77,'[안심번호] 안심번호에 대해 알고싶습니다.','안심번호는 전문가의 실제 연락처 대신 임의의 가상번호를 노출하여 개인정보를 보호하고 각종 사고를 예방하는 기능입니다.
 
의뢰인이 전문가의 안심번호로 전화를 걸면 전문가의 실제 연락처로 연결되며, 안심번호 서비스 이용에 따른 서비스 이용요금은 부과되지 않습니다.
 
단, 이용 중이신 통신사의 요금 정책에 따라 부가통화료가 발생될 수 있으니, 자세한 사항은 각 통신사의 홈페이지를 참고해주시기 바랍니다.','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (20,76,'[계정정보] 가입 후 ID 또는 닉네임을 변경할 수 있나요?','
회원 가입 시 등록하신 ID(이메일)는 가입 이후에는 변경하실 수 없으며 닉네임은 가입 후 1회에 한해 변경이 가능합니다.
 
부득이한 사유로 ID 또는 닉네임의 추가 변경이 필요하신 경우, 아래 사항을 기제 하시어 고객센터로 이메일(help@timeseller.com)을 보내주세요.
 
● 현재 이용중인 ID(이메일) 또는 닉네임
 
● 변경하고자 하는 ID(이메일) 또는 닉네임
 
● 사유 : 
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (19,75,'[회원정보] 개명 후 인증이 안돼요.','개명을 하신 경우 실명확인 등록기관에 개명하신 성함으로 실명등록을 모두 새롭게 해주셔야 합니다.

[실명확인 등록기관안내]

- 코리아크레딧뷰로(KCB) ☞ 바로가기   / ☎ 고객센터: 02-708-1000
- SIREN24 ☞ 바로가기


기관을 통해 변경된 실명 정보를 등록하실 경우, 인증 시간이 소요될 수 있는 점 참고해주시기를 바랍니다.
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (18,74,'[입점/제휴] 서비스를 판매하고 싶습니다.','
만 14세 이상이면 누구나 타임셀러의 전문가로 활동하실 수 있습니다. 
전문가회원은 간단한 인증절차를 거쳐 전환하실 수 있습니다. 
 
[ 로그인 > 마이타임셀러 > 계정설정> 인증정보 > 휴대폰인증 + 전문가 인증 ] 해주시면 됩니다.
 
전문가 인증 시, 사업자일 경우 사업자등록증, 통장사본 첨부해주셔야 승인가능합니다.
개인 전문가일 경우, 개인 주민등록번호 인증해주시면 됩니다.
 
전문가회원으로 전환 후, 판매하실 서비스를 등록 해주세요. 
[로그인 > 전문가 등록 > 서비스 등록하기]를 눌러 서비스를 등록하실 수 있습니다. 
전문가 등록 메뉴에서 ''프로필 수정''을 눌러 전문가님의 프로필 정보를 상세히 기재하시면 더욱 좋습니다. 
 
등록하신 서비스는 카테고리별 심사 절차를 거쳐 승인되며 승인된 서비스로 판매하실 수 있습니다. 
','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (17,73,'[개인정보] 개인정보는 안전하게 보호되나요?','타임셀러는 이용자의 정보 보안 및 안전한 거래를 위해 최선을 다합니다. 
 
타임셀러 웹 사이트는 개인정보가 입력되는 모든 영역에 SSL(Secure Sockets Layer)이 적용되어있습니다. 
 
SSL은 브라우저와 서버 간의 통신 시 정보를 암호화하여 안전하게 정보를 주고 받을 수 있도록 해주는 암호화 통신 프로토콜입니다. 
 
SSL이 적용된 페이지는 웹 브라우저 상단에 자물쇠 모양의 아이콘이 나타나며, 해당 페이지의 URL은 https로 표시됩니다.  
 
웹 브라우저 상단의 자물쇠 모양의 아이콘과 https로 시작되는 URL은 회원님의 정보가 안전하게 전달되고 있음을 의미합니다. ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (16,72,'[입점/제휴] 타임셀러와 제휴하고 싶습니다.','제휴 문의는 타임셀러 서비스 하단의 일대일 문의 또는 고객센터의 문의하기를 이용하실 수 있습니다. 
상담유형을 ''제휴''로 선택하신 후 문의를 등록해주시면 담당자가 확인 후 연락드립니다. (영업일 기준 3일 이내)','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (15,71,'[소개] 타임셀러는 어떤 서비스인가요?','타임셀러는 각 분야의 전문가가 제공하는 서비스와 상품을 거래할 수 있는 프리랜서 마켓입니다.
구매 방식에 따라 ''마켓'' ''맞춤 견적'' ''엔터프라이즈'' 서비스를 선택하여 이용하실 수 있습니다.


  ■ 타임셀러 마켓 

      서비스와 상품을 쉽고 빠르게 구매할 수 있는 프리랜서 마켓입니다.
      타임셀러의 기준과 구매자의 평가를 바탕으로 엄선한 Prime 서비스도 이용해보세요.   

      ☞ 타임셀러 마켓 바로가기

 

  ■ 맞춤 견적

      회원님이 찾으시는 서비스와 구매 조건으로  ''견적 요청''할 수 있는 서비스입니다.         
      요구사항에 꼭 맞는 전문가들의 ''견적 제안''을 받아 거래를 진행해보세요.

      ☞ 맞춤 견적 바로가기

 

  ■ 엔터프라이즈

      기업 회원을 대상으로 한 외주, 아웃소싱 서비스입니다.
      전문가/서비스의 탐색부터 거래 진행 까지 타임셀러에서 전담 관리해드립니다. 

      ☞ 엔터프라이즈 바로가기

 
자세한 사항은 각 서비스의 소개 페이지에서 확인하실 수 있습니다. ','1',to_date('20/06/22','RR/MM/DD'),0,50,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (14,70,'[공지] 5월 고객센터 운영 및 업무 휴무 안내','안녕하세요, 타임셀러입니다.

2020년 5월, 타임셀러의 휴무 일정을 미리 안내드리니 이용에 불편 없으시기를 바랍니다.


  

? 5월 휴무일 안내   　
 -5월 1일(금) 근로자의 날
 -5월 5일(화) 어린이날

 

? 고객센터 이용 안내
　휴무일에는 고객센터를 운영하지 않습니다.
　궁금하신 내용은 본 게시글 하단의 [문의하기] 기능을 통해 접수해 주세요. 
　업무 재개 후 순차적으로 답변드리겠습니다.

 

? 수익금 출금 및 환불 업무 안내
　휴무일에도 수익금 출금 및 환불 신청을 접수하실 수 있습니다. 
　다만, 휴무일에 신청하신 건은 업무 재개 후 순차적으로 처리해드리겠습니다.


 

다사다난했던 지난날들을 보상받는 따뜻한 5월을 보내시기 바라며,

모든 회원님들의 가정이 늘 행복하고 웃음 넘치시기를 바랍니다 ♥

감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (13,69,'[공지] 정부지원사업 외주도, 타임셀러에서 가능합니다!','안녕하세요! 타임셀러입니다.

정부지원사업 외주도, 타임셀러에서 진행하실 수 있습니다 ?

정부지원사업 외주용역비를 타임셀러 플랫폼에서 사용하기에 어려우셨죠?
2020년부터 타임셀러의 정부지원사업 전담팀을 통해 쉽고 편리하게 외주용역비를 사용하실 수 있습니다.

의뢰인과 (주)타임셀러의 양자 간 계약, (주)타임셀러 세금계산서 발행 등
정부지원사업의 규정에 맞추어 검증된 전문가들과 일하실 수 있습니다.


?? 정부지원사업 전담 매니저의 컨설팅

     - IT개발, 영상제작, 시제품제작, 디자인, 마케팅 등 모든 서비스를 one-stop 제공
 
?? 지원 사업별 요구 사항에 맞는 계약/결제 방식 제시

     - 세금계산서 발급, 계약서 작성 등 행정절차 지원
     - 하나의 계약에 여러 분야의 전문가 통합 투입
     - (사안에 따라) 협약 통해 다양한 결제방법 지원
 
?? 계약 체결 전 과정과 과업 마무리 단계까지 전담 매니저의 상시 커뮤니케이션 지원
 
?? 높은 퀄리티의 프리미엄 서비스 제공 가능
 
 
거래 전 아래 가이드를 확인하신 후 타임셀러의 정부지원사업 전담 매니저에게 꼭 연락 주세요!
 
 
? 정부지원사업 공고 내용
    2020년, 중소벤처기업부 등 16개 부처 소관으로 90개의 사업 진행
    ※ 참고(이미지)_43개 부문 주요 사업 보기      
    ※ 창업지원사업 이외에도 다양한 정부지원사업들의 외주용역을 지원하고 있습니다.
 

잘 읽어보셨나요?

타임셀러를 통해 성공적으로 비즈니스 하시기를 바라며,

궁금한 내용이 있다면 언제든지 전담 매니저에게 문의해주세요.

감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (12,67,'[공지] 고객센터 운영 시간 안내','안녕하세요, 타임셀러입니다.
타임셀러 고객센터의 운영 시간에 대해 안내해드립니다.

원활한 서비스 이용을 위해 운영 시간을 확인해주시기 바랍니다.

 

 

? 고객센터 운영시간
  -평일 10:30~18:00
 

? 고객센터 미운영시간
  -매월 첫째 주 월요일 14:00~18:00 

 

고객센터 미운영 시간 내 문의 사항은 [1:1문의] 채널을 통해 접수해주시면, 순차적으로 답변드리겠습니다.

항상 만족스러운 서비스를 제공해드리기 위해 노력하겠습니다.

감사합니다. ','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (11,66,'[공지]구매후기 작성에 대한 안내','
안녕하세요, 타임셀러입니다.

구매후기 운영정책이 아래와 같이 변경될 예정입니다.
관련 내용을 확인하시어 서비스 이용에 불편 없으시기를 바랍니다.

 

ㅣ변경 일시: 2019년 11월 27일(수)

 

ㅣ변경 내용


     ? 현재 
       - 작성기준: 구매확정 주문 건이면 기간 제한 없이 구매후기 작성 가능
       - 수정기준: 작성일시 기준으로 7일 이내 수정 가능하며, 횟수 제한 없음
   
     ? 변경 후 
       - 작성기준: 구매확정(거래 완료) 일시를 기준으로 30일 이내에만 작성 가능
       - 수정기준: 작성일시 기준으로 7일 이내 수정 가능하며, 1회만 수정 가능
       - 삭제기준: 작성한 회원 본인이 직접 삭제를 요청하는 때에만 삭제, 재작성 불가


신뢰도 높은 거래문화의 정착을 위한 노력으로 이해해주시기를 바라며,
작성하지 못한 구매후기가 있다면 변경일 전에 미리 작성해주실 것을 안내해드립니다.

더욱더 좋은 서비스를 제공하기 위해 노력하는 타임셀러가 되겠습니다.

감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (10,65,'[공지] 타임셀러 서버 점검 안내','안녕하세요, 타임셀러입니다.

더워지는 날씨만큼 타임셀러와 함께 열정적으로 비즈니스 하고 계신가요?

 

다가오는 6월 15일(토)에는, 타임셀러의 서버 점검이 진행될 예정입니다.

일정 시간 동안 사이트 이용이 불가한 점 미리 양해를 부탁 드리며, 아래 안내를 참고해주세요.

 

ㅣ사이트 점검 시간 안내

- 일자: 2020년 6월 15일 (토)

- 시간: 오전 8시 ~ 9시(약 1시간)

 

더 만족스러운 서비스를 제공해드릴 수 있도록 꼼꼼히 점검하고 돌아오겠습니다.

감사합니다 :D
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (9,64,'[공지]창업 관련 서비스 거래 유의사항','
안녕하세요. 내일을 만나는 마켓, 타임셀러입니다! ♥

창업 제도가 활발해지고 새로운 아이디어들이 쏟아지는 요즘,
회원님들께서도 ''창업'', ''사업 계획''에 많은 관심을 가지고 계시죠?
타임셀러에서도 다양한 창업 관련 서비스를 거래하실 수 있는데요, 
더욱 안전하고 성공적인 비즈니스를 위하여 거래 관련 유의 사항을 반드시 확인해주세요 :D

 
ㅣ 서비스 구매 


01. 서비스의 제공 범위 확인

 ''창업'', ''사업 계획''과 관련된  서비스를 구매하는 회원님들께서는, 타임셀러에서 제공 가능한 서비스의 범위가 ''대필''이 아닌 ''첨삭 및 교정'' 과 ''컨설팅''이라는 것에 유의해주시기 바랍니다. 
  특히 ''정부지원사업''에 지원하는 문서를 대필 등의 부정한 방법으로 작성하거나 이를 통해 지원금을 수령한 경우, 관련 법령(보조금 관리에 관한 법률)에 따라 처벌될 수 있습니다. 
 불미스러운 문제가 발생되지 않도록, 거래 전 상기 내용을 꼬옥 확인해주세요 :D



타임셀러팀은 안전하고 신뢰도 있는 거래 환경 조성을 위하여
상위 법령 및 사회 통념에 위반될 수 있는 거래 활동을 제한하고 있습니다. 
회원님의 비즈니스가 더 성공적이기를 바라는 마음임을 양해해주시기 바랍니다.
 타임셀러가 늘 응원하겠습니다 ! 감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (8,61,'[공지](타임셀러서포터즈 모집) TimeSeller+influencer=Tinfluencer','안녕하세요, 타임셀러입니다:D
타임셀러에서 직접 특별한 체험단을 모집합니다!타임셀러의 서비스를 경험하고
블로그&인스타그램 등에 멋진 포스팅 남겨주실 크리에이터를 모집합니다. ^0^  

자세한 내용은 하단 이미지를 참고해주세요!
함께해요, 인플루언서!!


-모집기간 및 인원: ~2018.5.29 / 총10명 (2020.7.31 개별발표) 
-신청조건: 블로그 일 방문자 2000명 이상   
-신청방법: 하단 구글 폼을 작성해주세요:D

 
 
선정되신 분들께는 개별 연락을 드립니다 :) 


                            ','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (7,60,'[공지] 전문가를 위한 포인트 및 판매관리 페이지 개선 안내','안녕하세요, 타임셀러입니다:)

오늘은 타임셀러 내 서비스를 판매 중인 전문가를 위한 

3가지 희소식을 전해드리고자 합니다 !

 

 

하나, 전문가에게 판매 마일리지를 드립니다. 

  - 정식 명칭: 전문가 마일리지

  - 지급 시점: 의뢰인의 구매확정 시점

  - 지급 비율: 최종 판매 금액의 5%

                 (지급 비율은 추후 변동 가능, 12.8 (목) 오후 2시 이후 시작된 거래 건부터 마일리지 지급)

  - 사용처: 타임셀러 내 상위노출 광고 상품 (플러스 광고, 프리미엄 광고) 구매 

  - 유효기간: 적립일을 기준으로 1년이며, 현금 환불 또는 직접 충전은 불가능합니다.

 

 

둘, 판매관리 페이지가 한 층 더 편하고 다양해집니다. 

  - 판매관리 / 수익관리 / 적립금관리 / 광고 결제 관리 등 ...다양한 정보들을 모두 담았습니다.

 

 

셋, 신규 전문가에게 마일리지 50,000원을 드립니다.

  - 타임셀러 사이트에서 첫 서비스를 등록한 신규 전문가에게 50,000원의 전문가 마일리지를 지원해드립니다.

     (과거 판매 등록한 이력이 있는 전문가는 해당되지 않습니다.)

  - 지급된 50,000원을 통해, 전문가는 타임셀러의 상위노출 광고 상품만을 구매할 수 있으며 마일리지의 유효기간은 1년입니다.

  - 서비스 등록은 PC에서만 가능합니다.

  - 해당 프로모션은 단기성 이벤트로써, 조기종료되거나 마일리지 지급 금액이 변동될 수 있습니다.

 

기존 판매관리의 장점은 그대로 유지하고, 단점만을 보완한 이번 개편에

많은 기대와 관심 부탁드리겠습니다:)','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (6,59,'[공지] 서버 개선 작업으로 인한 이용 제한 공지','2020년 7월 2일,  새로운 변화의 바람이 붑니다 !

보다 편리해질 타임셀러를 위한 준비 작업으로,

2020년 7월 1일 22:30 ~ 7월 2일 02:00 타임셀러 이용이 아주 잠시 제한됩니다.



무엇이 바뀌나요 ?

 

[마이페이지]
타임셀러에서의 모든 활동 및 공지들을 한 눈에 확인할 수 있습니다.

 

[프로필]

보다 다양한 정보들을 제공합니다.

 

[판매/구매]

각 상황 별로 필요한 버튼들만 쏙쏙 보여주어, 보다 빠르고 편리한 거래가 가능합니다.
기존 - 구매자의 결제 > 판매자의 주문접수 > 거래시작
  변경 - 구매자의 결제 > 거래시작 (구매자의 결제가 시작되면, 즉시 거래가 시작됩니다.)
 

-----------------------------------------------------------------------------------

 

[명칭]

2020년 7월 2일부터, 판/구매의 주체가 전문가와 의뢰인으로 바뀝니다.

전문가와 의뢰인의 프로페셔널함을 기반으로 한 거래를 기대합니다.

 

[그리고 …]

이외에도 많은 부분들이 업그레이드 될 타임셀러, 기대되시나요 ?

곧 새로워질 타임셀러를 위해,

2020년 7월 1일 22:30 ~ 7월 2일 02:00 잠시만 기다려주세요 !

','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (5,58,'[공지] 재능등록 페이지 개선관련 안내','안녕하세요, 타임셀러입니다.

오늘 공지사항을 통해 전달 드릴 내용은 타임셀러 재능 클린 정책 시행에 따른 안내입니다.

 

1. 카테고리 세분화 작업

 

새롭게 카테고리들이 구성되어 기존 재능들에 대한 정화작업이 순차적으로 진행되고 있습니다.
판매자 분들의 경우 회원님들의 재능을 검토 하시어 재능을 상품화하여 주시고 새로운 카테고리에 맞게 재구성 부탁드립니다.

 

카테고리 설정기준

 

-  1개 카테고리에 중복 재능 판매불가
-  여러 카테고리에 유사 재능 판매가능
-  1개 카테고리에 다른 재능 판매 가능(단순 가격 상이 재능 해당없음)
-  여러 카테고리에 적용 가능한 재능을 하나로 구성 불가

 

 

 2. 모니터 타임셀러가 출격

 

재능클린정책을 효과적으로 운영하기 위하여 모니터링 직원이 카테고리에 맞게 재능의 집을 찾아드리고 있으며

재능 승인부서와 협력하여 수정이 필요한 재능들에 대하여 가이드 안내 작업을 진행 하고 있습니다. 

또한 회원님들의 피해방지를 위하여

모든 채널을 동원하여 깨끗한 타임셀러를 만들기 위하여 두눈 크게 뜨고 청소하고 있답니다.
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (4,57,'[공지]제 1회 타임셀러 어워즈를 진행합니다.','
올해도 어김없이 돌아온 연말!

타임셀러팀에서도 어김없이 돌아온 연말을 위해

 

올 한해도 열심히 재능시장 확장에 기여해주신

우수 재능인분들을 위한 어워즈를 준비했습니다



 올해는 작년보다 수상자분들을 정하기가 더 어려웠는데요

팀 내에서 고심 끝에 여러가지 기준을 토의 한 뒤에

수상 후보자분들에게 저번주부터 연락을 드리고 있답니다.

 

아쉽게도 이번 제 1회 어워즈는 초청 받으신 분만 입장이 가능 하신데요

이번에 아주 아쉽게 타임셀러어워즈 후보에

들지는 못하셨지만 타임셀러에서 올 한해

재능판매에 힘써주신 모든 분들께 감사의 마음을 전합니다.

 
 많은 성장을 이룬 3년

 
그 이상을 이루기 위해 올 한해 획기적인 사이트 단장에  힘 쏟을 것을 약속 드리겠습니다 !
감사합니다.','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (3,56,'[공지] 저작권 관련 내용 및 안내사항','
안녕하세요, 타임셀러입니다!

요즘 추웠다가 안 추웠다가를 반복하고 있는 변덕의 계절이 찾아왔습니다.

덕분에 감기도 실컷 걸리고 몸져 눕기도 수차례하고 있습니다.

 

많은 판&구매자님들이 중요한 부분이지만 놓치고 계신 분들이 많은 것으로 생각되어 이렇게 공지를 통해 전달드립니다.

전달 드릴 사항은 바로 저작권 관련 내용입니다.

 

판매자님께서는 재능 판매와 관련된 내용 중 저작권법에 접촉되는 내용이 있을 경우 해당 권리를 반드시 구매하시고

재능 작업을 해주셔야 문제가 발생하지 않습니다.( 서체 라이센스 or 이미지 라이센스 등)

 

또한 재능거래시에 저작권법 관련 문제가 발생되어 소송까지 가는 경우가 발생되지 않도록

판매자님과 구매자님 모두 모두 ''저작권''을 꼭 확인해주세요!!!!!!!!

특히 구매자님들께서도 구매하는 재능이 상업적, 비상업적 등 어떠한 용도로 활용할 것인가에 대해

해당 판매자님에게 꼭 문의를 해주셔야 합니다!

 

 

저작권 침해가 인정될만한 소지가 있을 시 필히 체크해주시길 바라며 상호 간의 거래가 안전하게 이루어질 수 있기를 바랍니다.

추워진 날씨에 감기 걸리지 않도록 조심하세요!','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (2,54,'[공지] 카카오톡 타임셀러 플친 추가방법!','
안녕하세요, 타임셀러입니다.

얼마 전에 카카오톡이 업데이트를 실행하면서

플러스친구를 검색할 수 있던 카테고리가 채널로 변경되었습니다.

이에 따라 많은 분들이 플러스친구에서 타임셀러를 찾을 수 없다는 문의를 많이 해주고 계신데요,

이번 공지사항을 통해 검색하는 방법을 알려드리겠습니다. 
 아래의 이미지와 설명을 참고해주세요.



1. 화살표가 가리키고 있는 것을 클릭한다.

 
2. 아래의 화면이 나타나면 타임셀러 혹은 @타임셀러를 검색한다.


3. 친구 추가 버튼을 누른다.



저는 이미 친구 추가가 된 상태라 버튼이 노출이 안되는데요,

노란색 사람이 담겨있는 버튼을 누르시면 친구 추가가 됩니다!

 

총 3단계를 거치면 완료되는 타임셀러 친구 추가하기, 참 쉽죠?

 

앞으로도 타임셀러 플러스친구와 타임셀러 계속 애용해주세요!

감사합니다!

 사....사...아니 좋아합니다!','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
Insert into NOTICELIST (RNUM,BOARD_NO,TITLE,CONTENT,USER_NO,WRITE_DATE,READ_NUM,BOARD_CODE,BOARD_STATUS) values (1,53,'[공지]타임셀러 내 불법 홍보메시지 관련 사과문 및 후속 조치 안내','안녕하세요, 타임셀러팀입니다.

 

타임셀러를 이용해주시고 사랑해주시는 분들에게 불미스러운 일이 일어나서

이에 대한 사과문을 올리고자 공지사항을 작성하게 되었습니다.

 

최근 타임셀러와 같은 유사사이트의 홍보성 메시지로 인하여

많은 회원분들이 피해를 입으셨고 이에 고객센터로 많은 피해신고가 접수되었습니다.

이에 대한 후속조치로 해당 IP를 추적, 관련 기업의 타임셀러 이용이 영구제한 되었음을 알려드립니다.

 

 

 해당 ID

 

Jande / Angelguy1 / kwgno1 / aosxktmno2 / kyt9011

rlaalstjrno1 / rlaalstjrno2

 

사유: 불법 자사 사이트 홍보

 

추후 지속적인 모니터링을 통하여 직거래 유도 혹은 홍보성 메시지 발송과 관련하여

당 고객센터는 피해를 입는 회원이 생기지 않도록 불가피하게 이용정지 등의 패널티가 적용될 예정입니다.

 

우수 회원님들의 경우 다양한 프로모션을 통해

많은 혜택을 드릴 수 있도록 노력하는 타임셀러가 되겠습니다.

타임셀러에 바라시는 점이 있으시다면 언제든 홈페이지(www.timeseller.com) 하단의 고객센터로 메일 부탁드리며

불미스러운 일 없이 더욱 발전하는 타임셀러가 되겠습니다.

 

많은 이용 부탁드립니다.
','1',to_date('20/06/22','RR/MM/DD'),0,20,'Y');
REM INSERTING into REPORTLIST
SET DEFINE OFF;
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (1,194,'N','N',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (2,190,'N','N',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (3,188,'ㅁㄴㅇㄹ','Y',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (4,186,'ㅎㅎㅎ','Y',to_date('20/06/23','RR/MM/DD'),13,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (5,185,'asdf','Y',to_date('20/06/23','RR/MM/DD'),1234,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (6,183,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (7,182,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B2');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (8,181,'N','N',to_date('20/06/23','RR/MM/DD'),0,'B1');
Insert into REPORTLIST (RNUM,BOARD_NO,RE_CONTENT,RE_YN,RE_DATE,SERVICE_NO,REPORT_TYPE) values (9,180,null,'Y',to_date('20/06/23','RR/MM/DD'),0,'B2');
REM INSERTING into REVIEWLIST
SET DEFINE OFF;
REM INSERTING into SERVICE_BUY_LIST
SET DEFINE OFF;
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('돈까스.jpg','당신도 스윙스가 될 수 있습니다. ',to_date('20/06/22','RR/MM/DD'),'변승훈','010-1111-1111',4,'1','넌 나의 잠이야',5,300000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('fasion1.jpg','게시글 등록되나',to_date('20/06/22','RR/MM/DD'),'변승훈','010-3658-4731',14,'1','넌 똥이야',3,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('son.jpg','나도 손흥민이 될수있다 프로축구15년이상 선생님과 축구레슨 드립니다.',to_date('20/06/22','RR/MM/DD'),'테스트','010-1111-1111',52,'1','테스트중',5,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up3.jpg','창업의 기초를 알려드립니다',to_date('20/06/23','RR/MM/DD'),'오영은','010-1111-1111',66,'1','ㅅㅅㅅㅅㅅㅅ',5,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('fasion2.jpg','당신과 비',to_date('20/06/23','RR/MM/DD'),'판매자','010-9874-9874',151,'80','내가 구매한거야',4,100000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('YS.jpg','자바 마스터하게해드립니다. ',null,'변승훈','010-1111-1111',152,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('re1.jpg','비와당신',to_date('20/06/23','RR/MM/DD'),'판매자','010-9874-9874',150,'79',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('beauty5.jpg','레스토랑',to_date('20/06/22','RR/MM/DD'),'변승훈','010-3658-4731',13,'0',null,null,1111777);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('beauty4.jpg','레스토랑',to_date('20/06/22','RR/MM/DD'),'변승훈','010-3658-4731',12,'0',null,null,1111777);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('upup.png','패션관련 취업궁금증을 해결해 드립니다.',null,'테스트','010-1111-1111',11,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('beauty.jpg','뷰티 이미지 컨설팅 : 헤어, 메이크업 컨설팅 해 드립니다.',null,'테스트','010-1111-1111',10,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('fasion.jpg','알아두면 좋은 패션디자인 입문자를 위한 잡학지식을 알려 드립니다.',null,'테스트','010-1111-1111',9,'0',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('pick.jpg','스포츠 경기, 행사, 방송스틸 촬영해 드립니다.',null,'테스트','010-1111-1111',8,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('wooooo.jpg','우사인 볼트처럼 되고싶으시다면 클릭하세요',null,'테스트','010-1111-1111',7,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('people.jpg','유튜브 레슬링코치가 올림픽레슬링 알려 드립니다.',to_date('20/06/23','RR/MM/DD'),'테스트','010-1111-1111',6,'1',null,null,100000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('me.jpg','당신을 일산의 메시로 만들어드립니다. ',null,'변여신','010-1111-1111',51,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('kian1.jpg','패션센스가 기안 84인 분들께',null,'변여신','010-1111-1111',50,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('kian.jpg','패션센스가 기안 84인 분들께',null,'변여신','010-1111-1111',49,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('fassion.jpg','제2의 앙드레김을 꿈꾸는 분들에게 ',null,'변여신','010-1111-1111',48,'0',null,null,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('medi1.jpg','약사가 되기까지의 과정',null,'변여신','010-1111-1111',47,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bang1.jpg','방사선사에 대해 궁금하신 모든분들',null,'변여신','010-1111-1111',46,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('doctor1.jpg','의사가 궁금하신 모든분께',null,'변여신','010-1111-1111',45,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bang.jpg','방사선사에 대해 궁금하신 모든분들',null,'변여신','010-1111-1111',44,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('doctor.jpg','의사가 궁금하신 모든 분들에게',null,'변여신','010-1111-1111',43,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('medi.jpg','약사가 되기까지의 과정',null,'변여신','010-1111-1111',42,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('cho.jpg','초밥장인이 들려주는 초밥이야기',null,'변승훈','010-1111-1111',41,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('cheese.jpg','치즈에 관한 이야기',null,'변승훈','010-1111-1111',40,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('egg1.jpg','요리를 사랑하시는 모든 분들',null,'변승훈','010-1111-1111',39,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('back2.jpg','백종원같은 요식업계의 대부가 되게 해드립니다.',null,'변승훈','010-1111-1111',38,'0',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('pizza2.jpg','피자 장인으로 만들어드립니다.',null,'변승훈','010-1111-1111',37,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('pizza1.jpg','피자 장인으로 만들어드립니다. ',null,'변승훈','010-1111-1111',36,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('back1.jpg','백종원같은 요식업계의 대부가 되게 해드립니다.',null,'변승훈','010-1111-1111',35,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('pizza.jpg','피자 장인으로 만들어드립니다. ',null,'변승훈','010-1111-1111',34,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('back.jpg','백종원같은 요식업계의 대부가 되게 해드립니다.',null,'변승훈','010-1111-1111',33,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('egg.jpg','요리를 사랑하시는 모든 분들',null,'변승훈','010-1111-1111',32,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('maaaaaaaaaaaa1.jpg','마임의 세계를 경험해보세요.',null,'변승훈','010-1111-1111',31,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('magic1.jpg','마술의 세계를 보여드립니다. ',null,'변승훈','010-1111-1111',30,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('ha1.jpg','하정우처럼 연기의 신이 되고 싶습니까?',null,'변승훈','010-1111-1111',29,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('mona1.jpg','당신도 모나리자를 그릴 수 있습니다. ',null,'변승훈','010-1111-1111',28,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('latteeee.jpg','라떼아트에 대해 알려드립니다. ',null,'변승훈','010-1111-1111',26,'0',null,null,80000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('maaaaaaaaaaaa.jpg','마임에 대해 알려드립니다. ',null,'변승훈','010-1111-1111',25,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('magic.jpg','마술의 비밀을 알려드립니다. ',to_date('20/06/23','RR/MM/DD'),'변승훈','010-1111-1111',24,'80',null,null,800000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('ha.jpg','하정우처럼 연기하고 싶으신분',null,'변승훈','010-1111-1111',23,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('mona.jpg','레오나르도 다빈치처럼 그림그리기 ',null,'변승훈','010-1111-1111',22,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('camera.PNG','필름카메라에 대한 경험을 나누고 싶습니다. ',null,'변승훈','010-1111-1111',21,'0',null,null,20000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('kkang.jpg','1일 3깡을 하는 당신에게',null,'변승훈','010-1111-1111',5,'1',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('효신찡.jpg','단기간에 박효신 성대로 만들어 드립니다.  ',null,'변승훈','010-1111-1111',2,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('뷔찡.jpg','당신도 방탄소년단이 될 수 있습니다. ',to_date('20/06/22','RR/MM/DD'),'변승훈','010-1111-1111',3,'0',null,null,200000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('효신찡.jpg','단기간에 기타 마스터 하는법을 알려드립니다.',to_date('20/06/22','RR/MM/DD'),'변승훈','010-1111-1111',1,'0',null,null,1000000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('app3.jpg','모바일 앱 만들기 기초 강의 합니다',null,'김모바일','010-1111-1111',134,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('python3.jpg','파이썬 알려드립니다',null,'이태양','010-1111-1111',133,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('graphic3.jpg','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',null,'도그래픽','010-1111-1111',132,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('vs3.png','웹디자인 기초강의 해드립니다',null,'이웹디','010-1111-1111',131,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('LGelect3.png','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',null,'김엘쥐','010-1111-1111',130,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('samsung3.jpg','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',null,'박삼성','010-1111-1111',129,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('C3.png','C# 기초 강의 및 조언 해드립니다',null,'이정민','010-1111-1111',128,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('eclipse3.png','JAVA 기초 강의 및 조언 해드립니다',null,'김성훈','010-1111-1111',127,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('app2.jpg','모바일 앱 만들기 기초 강의 합니다',null,'김모바일','010-1111-1111',126,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('python2.jpg','파이썬 알려드립니다',null,'이태양','010-1111-1111',125,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('graphic2.jpg','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',null,'도그래픽','010-1111-1111',124,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('vs2.png','웹디자인 기초강의 해드립니다',null,'이웹디','010-1111-1111',123,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('LGelect2.png','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',null,'김엘쥐','010-1111-1111',122,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('samsung2.jpg','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',null,'박삼성','010-1111-1111',121,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('C2.png','C# 기초 강의 및 조언 해드립니다',null,'이정민','010-1111-1111',120,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('eclipse2.png','JAVA 기초 강의 및 조언 해드립니다',null,'김성훈','010-1111-1111',119,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('app1.jpg','모바일 앱 만들기 기초 강의 합니다',null,'김모바일','010-1111-1111',118,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('python1.jpg','파이썬 알려드립니다',null,'이태양','010-1111-1111',117,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('graphic1.jpg','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',null,'도그래픽','010-1111-1111',116,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('vs1.png','웹디자인 기초강의 해드립니다',null,'이웹디','010-1111-1111',115,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('LGelect1.png','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',null,'김엘쥐','010-1111-1111',114,'0',null,null,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('samsung1.jpg','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',null,'박삼성','010-1111-1111',113,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('C1.png','C# 기초 강의 및 조언 해드립니다',null,'이정민','010-1111-1111',112,'0',null,null,70000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('eclipse1.png','JAVA 기초 강의 및 조언 해드립니다',null,'김성훈','010-1111-1111',111,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('app.jpg','모바일 앱 만들기 기초 강의 합니다',null,'김모바일','010-1111-1111',110,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('python.jpg','파이썬 알려드립니다',null,'도그래픽','010-1111-1111',109,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('graphic.jpg','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',null,'도그래픽','010-1111-1111',108,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('vs.png','웹디자인 기초강의 해드립니다',null,'이웹디','010-1111-1111',107,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('LGelect.png','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',null,'김엘쥐','010-1111-1111',106,'0',null,null,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('samsung.jpg','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',null,'박삼성','010-1111-1111',105,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('C.png','C# 기초 강의 및 조언 해드립니다',null,'이정민','010-1111-1111',104,'0',null,null,70000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('eclipse.png','JAVA 기초 강의 및 조언 해드립니다',null,'김성훈','010-1111-1111',103,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank9.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',102,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank8.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',101,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank7.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',100,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank6.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',99,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank5.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',98,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank4.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',97,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank3.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',96,'0',null,null,40000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank2.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',95,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank1.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',94,'0',null,null,20000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bank.jpg','금융권 취업을 도와드립니다',null,'서정완','010-1111-1111',93,'0',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw9.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',92,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw8.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',91,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw7.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',90,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw6.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',89,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw5.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',88,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw4.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',87,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw3.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',86,'0',null,null,40000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw2.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',85,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw1.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',84,'0',null,null,20000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('gmw.jpg','공무원 준비 일대기를 들려 드립니다',null,'변매력','010-1111-1111',83,'0',null,null,10000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing9.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',82,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing8.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',81,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing7.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',80,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing6.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',79,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing5.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',78,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing4.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',77,'0',null,null,70000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing3.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',76,'0',null,null,60000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing2.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',75,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing1.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',74,'0',null,null,40000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('marketing.png','효율적인 마케팅 방법을 알려드립니다',null,'김동원','010-1111-1111',73,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up9.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',72,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up8.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',71,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up7.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',70,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up6.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',69,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up5.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',68,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up4.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',67,'0',null,null,70000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up2.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',65,'0',null,null,50000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up1.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',64,'0',null,null,40000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('up.jpg','창업의 기초를 알려드립니다',null,'오영은','010-1111-1111',63,'0',null,null,30000);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('sonjpg.jpg','손흥민 만남 이벤트',null,'admin','01012341344',62,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('sjs.jpg','소지섭 만남 이벤트',null,'admin','01012341344',61,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('messi.jpg','리오넬 메시와의 만남 이벤트',null,'admin','01012341344',60,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('yjs.jpg','유재석 만남 이벤트',null,'admin','01012341344',59,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('trump.jpg','트럼프 대통령 만남 이벤트',null,'admin','01012341344',58,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('rain.jpg','가수 비 만남 이벤트',null,'admin','01012341344',57,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('lee.png','삼성 이재용 부회장 만남 이벤트',null,'admin','01012341344',56,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bill.png','빌게이츠 방한 이벤트 안내',null,'admin','01012341344',53,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('twice.png','Twice 만남 이벤트',null,'admin','01012341344',55,'0',null,null,0);
Insert into SERVICE_BUY_LIST (CHANGE_NAME,TITLE,TRADE_DATE,USER_NAME,PHONE,SERVICE_NO,B_USER_NO,CONTENT,RATING,PRICE_SALE) values ('bts.png','BTS 만남 이벤트',null,'admin','01012341344',54,'0',null,null,0);
REM INSERTING into SERVICE_INFO
SET DEFINE OFF;
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (54,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','전 세계 아미들아 모여라!!
BTS를 만날 수 있는 기회가 Time Seller에 찾아왔습니다
경매를 통해 BTS와의 시간을 만들어 보세요!!','서울특별시 강서구','월요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (54,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','전 세계 아미들아 모여라!!
BTS를 만날 수 있는 기회가 Time Seller에 찾아왔습니다
경매를 통해 BTS와의 시간을 만들어 보세요!!','서울특별시 강서구','수요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (55,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','원스들이여 트와이스가 온다!!
트둥이들을 만날 절호의 기회를 Time Seller에서 얻어보세요!!','서울특별시 강남구','목요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (53,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller관리자','빌게이츠가 2020년 6월 30일 한국을 방한합니다!!
Time Seller에서 경매를 통해 빌게이츠와의 만남의 기회를 얻어보세요!!','서울특별시 서초구','화요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (56,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','삼성 이재용 부회장과 만남을 가질 수 있는 절호의 기회!!
오직 Time Seller에서만 누릴 수 있는 특권을 경매를 통해 얻어보세요','경기도 수원시  영통구','금요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (57,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','꾸러기 표정, 화려한 조명이 필수인 그가 온다!!
역주행 신화를 쓴 ''깡''의 주인공 비를 Time Seller에서 만날 수 있는 절호의 찬스!!
경매에 참가하여 비와 만날 수 있는 기회를 잡아보세요!!','서울특별시 서초구','월요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (58,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','현 미국의 대통령 트럼프를 만날 수 있는 기회를 Time Seller가 어렵게 구했습니다!!
경매를 통하여 트럼프를 만날 수 있는 기회를 놓치지 마세요','서울특별시 종로구','수요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (59,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','국민 MC 유재석을 만날 수 있는 절호의 기회!! Time Seller에서 기회를 잡아보세요!!
경매를 통하여 유재석과의 만남의 기회를 놓치지 마세요','서울특별시 서초구','화요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (60,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','세계 최고의 축구선수인 메시를 만날 수 있는 기회!!
Time Seller에서 메시를 만날 수 있는 기회를 놓치지 마세요!!','서울특별시 서초구','월요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (61,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','소지섭과의 1대1 만남을 할 수 있는 절호의 기회!!
Time Seller에서 제공하는 절호의 기회를 입찰을 통해 잡아보세요!!','서울특별시 서초구','화요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (62,'1','fasion.jpg','01012341344',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'Time Seller 관리자','EPL 최고의 축구 선수중 한 명이자 우리나라 국가대표인 손흥민 선수를 만날 수 있는 기회!!
Time Seller에서 그 기회를 만나보세요!!','서울특별시 서초구','화요일','이벤트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (63,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','월요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (64,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','수요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (65,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','목요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (66,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','금요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (67,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','토요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (67,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','월요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (68,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','화요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (68,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','월요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (68,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','수요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (69,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','월요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (69,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','수요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (70,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','토요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (71,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!','경기도 평택시','일요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (72,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!
','경기도 평택시','화요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (72,'12','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 오영은
나이 : 26세
학력 : 대졸
학과 : 산업경영공학과
경력 : 창업 컨설팅 경험 다수','창업의 ''창''자도 모르겠다 하시는 분들에게 창업의 기초를 알려드립니다
남녀 노소 상관 없이 누구나 쉽게 창업에 대한 기초와 저만의 꿀팁을 전수해 드립니다!!
','경기도 평택시','일요일','창업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (73,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!','경기도 용인시','월요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (74,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','경기도 용인시','화요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (75,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!','경기도 용인시','수요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (76,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','경기도 용인시','목요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (77,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','경기도 용인시','화요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (78,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','경기도 용인시','토요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (79,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!','경기도 용인시','일요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (80,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','경기도 용인시','토요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (81,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','경기도 용인시','화요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (82,'13','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김동원
나이 : 27세
학력 : 대졸
학과 : 경영학과
경력 : 마케팅 부서 경력 2년','마케팅을 하는데 방법도 비용도 걱정 되시나요??
실무에서 겪어본 경험을 토대로 마케팅을 보다 효율적으로 하는 방법을 알려드립니다!!
','경기도 용인시','목요일','마케팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (83,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!','충청남도 천안시','토요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (83,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!','충청남도 천안시','월요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (84,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','월요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (85,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','화요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (85,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','월요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (86,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','수요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (87,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','월요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (87,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','금요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (88,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','월요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (88,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','금요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (89,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!
','충청남도 천안시','일요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (89,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!
','충청남도 천안시','월요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (90,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!','충청남도 천안시','금요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (91,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!
','충청남도 천안시','목요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (92,'14','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변매력
나이 : 28세
학력 : 대졸
학과 : 경영학과
경력 : 5급 공무원','공무원 준비를 하는데 단지 학원만 다니면서 공부만 하시나요??
제 공무원 준비 일대기로 보다 효율적으로 공무원 준비하는 방법을 알려드립니다!!
','충청남도 천안시','일요일','공무원');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (93,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','월요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (94,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','수요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (95,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','수요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (96,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!
','서울시 광진구
','수요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (97,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!
','서울시 광진구','금요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (98,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','월요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (99,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','수요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (100,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!
','서울시 광진구','월요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (100,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!
','서울시 광진구','수요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (101,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','월요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (101,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','수요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (101,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','금요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (102,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','월요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (102,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','수요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (102,'15','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 서정완
나이 : 29세
학력 : 대졸
학과 : 경영학과
경력 : 신한은행 재직중','금융권 취업을 위해 고생하는 여러분들에게 도움이 되기 위한 정보를 알려드립니다!!
단순한 카페나 블로그에서 얻는 정보보다 훨 씬 더 좋은 정보가 되리라 장담 가능합니다!!','서울시 광진구','목요일','취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (103,'22','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중','JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.
','서울시 노원구','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (103,'22','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중','JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.
','서울시 노원구','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (104,'23','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.','서울시 여의도동','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (104,'23','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.','서울시 여의도동','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (105,'24','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중','삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.','경기도 화성시','토요일','교육, IT, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (105,'24','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중','삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.','경기도 화성시','일요일','교육, IT, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (106,'25','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.','서울특별시 서초구','토요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (106,'25','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.','서울특별시 서초구','일요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (107,'26','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수','웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.','경기도 구리시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (107,'26','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수','웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.','경기도 구리시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (108,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.','경기도 안성시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (108,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.','경기도 안성시','월요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (108,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.','경기도 안성시','목요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (109,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.','서울특별시 서초구','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (109,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.','서울특별시 서초구','월요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (109,'27','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.','서울특별시 서초구','금요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (110,'28','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.','경기도 평택시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (110,'28','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.','경기도 평택시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (111,'29','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중','JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.
','서울시 노원구','수요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (112,'30','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.','서울시 여의도동','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (112,'30','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.','서울시 여의도동','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (113,'31','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중','삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.','경기도 화성시','토요일','교육, IT, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (113,'31','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중','삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.','경기도 화성시','일요일','교육, IT, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (114,'32','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.','서울특별시 서초구','토요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (114,'32','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.','서울특별시 서초구','일요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (115,'33','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수','웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.','경기도 구리시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (115,'33','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수','웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.','경기도 구리시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (116,'34','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.','경기도 안성시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (116,'34','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.','경기도 안성시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (117,'35','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.','서울특별시 서초구','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (117,'35','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.','서울특별시 서초구','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (117,'35','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.','서울특별시 서초구','월요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (118,'36','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.','경기도 평택시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (118,'36','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.','경기도 평택시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (119,'37','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중
','JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.

','서울시 노원구','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (119,'37','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중
','JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.

','서울시 노원구','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (120,'38','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중
','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.
','서울시 여의도동','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (120,'38','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중
','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.
','서울시 여의도동','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (121,'39','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중
','삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.
','경기도 화성시','토요일','교육, IT, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (121,'39','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중
','삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.
','경기도 화성시','일요일','교육, IT, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (122,'40','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중
','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.
','서울특별시 서초구','토요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (122,'40','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중
','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.
','서울특별시 서초구','일요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (123,'41','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수
','웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.
','경기도 구리시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (123,'41','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수
','웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.
','경기도 구리시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (124,'42','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수
','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.
','경기도 안성시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (124,'42','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수
','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.
','경기도 안성시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (125,'43','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중
','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.
','서울특별시 서초구','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (125,'43','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중
','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.
','서울특별시 서초구','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (126,'44','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중
','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.
','경기도 평택시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (126,'44','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중
','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.
','경기도 평택시','월요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (126,'44','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중
','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.
','경기도 평택시','금요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (127,'45','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중
','JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.

','서울시 노원구','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (127,'45','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김성훈
나이 : 26세
학력 : 대졸
학과 : 컴퓨터공학과
경력 : 내담씨앤씨 재직중
','JAVA를 모르거나 처음 접하시는 분들을 위한 기초 강의를 진행합니다.
또한 현재 진행하는 프로젝트에 대한 조언 및 코드를 첨삭 해드립니다.

','서울시 노원구','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (128,'46','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중
','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.
','서울시 여의도동','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (128,'46','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중
','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.
','서울시 여의도동','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (128,'46','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이정민
나이 : 26세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 :  Travleport 재직중
','C#을 처음 접하시는 분들을 위한 기초 강의를 해드립니다.
또한 현재 진행하고 있는 프로젝트에 대한 조언 및 약간의 코드 첨삭을 해드립니다.
','서울시 여의도동','월요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (129,'47','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중
','삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.
','경기도 화성시','일요일','교육, IT, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (129,'47','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 박삼성
나이 : 27세
학력 : 대졸
학과 : 반도체 학과
경력 : 삼성전자 DS 재직중
','삼성 반도체 분야에 취업한 현 직장인 입니다.
저만의 노하우를 통하여 입사를 하게 되었고 이에 대한 노하우를 알려드릴 수 있습니다.
또한 입사 후 정확하게 어떤 일을 하는지 알려드리니 취업 조언 및 현장에서 일하는 이야기를 듣고 싶으신 분들에게 좋은 기회라 생각합니다.
','경기도 화성시','월요일','교육, IT, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (130,'48','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중
','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.
','서울특별시 서초구','토요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (130,'48','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중
','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.
','서울특별시 서초구','일요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (130,'48','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김엘쥐
나이 : 27세
학력 : 대졸
학과 : 전자공학과
경력 : LG전자 재직중
','LG전자에 취직하고 싶으신 분들 혹은 LG전자를 꿈꾸지만 정확하게 무엇을 하는지 몰라 적성에 맞는지 모르겠다는 분들을 위해 도움이 되고자 하여 글을 쓰게 되었습니다.
일반적인 팁이 아닌 정말 중요하게 작용할 수 있는 꿀팁을 알려드리며 어떤 일을 하는지에 대해 상세하게 알려 드리겠습니다.
','서울특별시 서초구','월요일','취업, IT');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (131,'49','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수
','웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.
','경기도 구리시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (131,'49','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이웹디
나이 : 28세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 웹디자인 프로젝트 경험 다수
','웹디자이너를 꿈꾸지만 아무것도 모르시는 분들을 위한 기초 강의를 해드립니다.
전반적인 사용법 및 css까지 가르쳐 드립니다.
','경기도 구리시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (132,'50','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.
','경기도 안성시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (132,'50','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 도그래픽
나이 : 30세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 그래픽 디자이너 프로젝트 참여 다수','그래픽 디자이너에 관심이 있으신 분들에게 도움이 되고자 글을 올렸습니다.
그래픽 디자이너가 되기 위한 기초 적인 것들부터 해서 방향성을 잡아드립니다.
','경기도 안성시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (133,'51','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중
','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.
','서울특별시 서초구','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (133,'51','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 이태양
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 파이썬 관련 기업 재직중
','파이썬에 대해서 관심이 있거나 배우고 싶은 분들을 위해 알기 쉽게 가르쳐 드립니다.
','서울특별시 서초구','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (134,'52','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중
','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.
','경기도 평택시','토요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (134,'52','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김모바일
나이 : 32세
학력 : 대졸
학과 : 컴퓨터 공학과
경력 : 모바일 앱 개발 회사 재직중
','모바일 앱을 만들어 보고 싶은 분들을 위해 기초 강의를 진행합니다.
또한 이 분야로 진출하고 싶은 분들에게 조언과 길잡이를 해드립니다.
','경기도 평택시','일요일','교육, IT, 코딩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (1,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'"이름 : 변승훈
나이 : 25세
학력 : 대졸
학과 : 에너지IT
경력 : 삼성전자 근무중, 국제 콩쿨대회 우승 다수 
취미 : 피아노
좋아하는 음식 : 소고기
','

단기간에 기타 마스터 하는법을 알려드립니다.
남녀노소 누구나 가능합니다.
누구보다 확실하게 마스터할 수 있게 해드립니다. 
저, 변승훈만 믿고 따라오십시오! ','강원도/횡성군',null,'기타 레슨');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (3,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 25세
학력 : 대졸
학과 : 에너지IT
경력 : 삼성전자 근무중, 국제 콩쿨대회 우승 다수 
취미 : 춤, 기타, 노래
좋아하는 음식 : 소고기
하고싶은말 : 소고기 사주는사람 착한사람 한우최고','방탄소년단 뷔만큼 잘생겨질수는 없지만 뷔만큼 춤은 출 수 있도록 해드립니다.
생초보도 쉽게 배울 수 있는 댄스 클래스 !
당신도 도전해보세요.','경기도/성남시/수정구',null,'댄스 ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (2,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 25세
학력 : 대졸
학과 : 에너지IT
경력 : 삼성전자 근무중, 국제 콩쿨대회 우승 다수 
취미 : 노래
좋아하는 음식 : 소고기
하고싶은말 : 소고기 사주는사람 착한사람 한우최고','
단기간에 박효신 성대처럼 만들어드립니다. 
이제 노래방에서 눈치 안보고 박효신 노래 맘껏 부를 수 있습니다 !!!!','경기도/고양시/일산서구',null,'노래');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (4,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 25세
학과 : 실용음악과
경력 : 쇼미더머니 시즌 18 우승 
취미 : 랩, 노래, 춤, 기타
좋아하는 음식 : 돈까스
','
스윙스 뺨치는 랩실력을 갖고 싶으십니까? 
랩 초보도 누구나 쇼미더머니 우승할 수 있는 실력으로 키워드립니다 !
돈까스 가루털기 춤도 알려드리겠습니다. ','서울시/강남구/역삼동',null,'랩');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (5,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 25세
학력 : 대졸
학과 : 실용댄스학과 
경력 : 전국 댄스배틀 1등 수상 
취미 : 노래, 춤, 기타, 랩 
좋아하는 음식 : 초밥
','꾸러기 표정을 지었나요?
화려한 조명이 감쌌나요?
신발끈을 꽉맸나요?
꼬만춤을 췄나요? 
그럼 당신은 깡을 제대로 배울 준비가 되어있습니다. 지금 바로 도전하세요 !','경기도/평택시',null,'춤 ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (21,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 40세
학력 : 대졸
학과 : 에너지IT
경력 : 삼성전자 근무중, 국제 콩쿨대회 우승 다수 
취미 : 사진찍기
좋아하는 음식 : 고기','
필름카메라와 사랑에 빠진지 10년, 저의 필름카메라 경험을 나누고 싶습니다. 
필름 카메라에 대해 알고싶으신분, 사진과 카메라를 사랑하시는 모든 분들 
환영입니다.  ','경기도/고양시',null,'카메라');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (22,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 48세
학력 : 대졸
학과 : 회화과 
경력 : 서울시 강남구 변변미술학원 원장  
취미 : 벽화그리기 
','그림을 잘그리고 싶으신데 방법을 모르시는 분들을 위한 만남을 준비해보았습니다.
레오나르도 다빈치처럼 그림 그리는 방법 알고싶지 않으십니까?
모나리자 같은 그림 하나 그려보고 싶으시다면 빠르고 이해하기 쉽게 알려드리겠습니다. ','서울시/강남구',null,'미술');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (23,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 58세
학력 : 대졸
학과 : 연극영화과 
경력 : 뿌부의 세계, 또깨비 수콰이캐슬 등 히트작 다수 출연
','
연기를 사랑하는 모든분들, 연기자가 되고싶은 모든분들 !
하정우처럼 연기하고 싶지 않으십니까 ?
연기인생 30년의 저를 만나보시면 하정우같은 리얼 생활연기가 가능해지실 겁니다. ','서울시/금천구',null,'연기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (24,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 30세
학력 : 호그와트 그리핀도르 출신
취미 : 페트로누스 소환 
좋아하는 음식 : 버터맥주
','
누구나 알고싶어하고 궁금해하지만 알수 없는 마술의 세계 !
현직 마법사가 알려드립니다. 
좋아하는 이성에게 간단한 마술을 선보여 호감을 얻어보세요 ! ','경기도/고양시/일산서구',null,'마술');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (25,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 35세
학력 : 대졸
학과 : 실용댄스학과
경력 : 전국 마임대회 2회 우승, 밀라노에서 공연 
취미 : 텝댄스
좋아하는 음식 : 새우장
','
신기하지만 생소하고 낯선 마임의 세계를 경험해보세요.
마임이 좋아서 시작한지 10년 ! 
마임이 궁금한 당신에게 저의 이야기를 들려드리겠습니다. ','서울시/강남구/역삼동',null,'마임');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (26,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 30세
학력 : 대졸
학과 : 현대미술학과 
경력 : 역삼동 스타벅스 바리스타
취미 : 노래
좋아하는 음식 : 바닐라라떼
','
라떼아트의 세계에 오신걸 환영합니다. 
라떼를 사랑하는 당신 마시는데에만 그치지 말고 
이제는 나만의 라떼를 한번 만들어보세요 !','서울시/강남구/역삼동',null,'라떼아트');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (28,'4','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 48세
학력 : 대졸
학과 : 회화과 
경력 : 서울시 강남구 변변미술학원 원장  
취미 : 벽화그리기 ','그림을 잘그리고 싶으신데 방법을 모르시는 분들을 위한 만남을 준비해보았습니다.
레오나르도 다빈치처럼 그림 그리는 방법 알고싶지 않으십니까?
모나리자 같은 그림 하나 그려보고 싶으시다면 빠르고 이해하기 쉽게 알려드리겠습니다. ','경기도/평택시',null,'미술 ');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (29,'4','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 58세
학력 : 대졸
학과 : 연극영화과 
경력 : 뿌부의 세계, 또깨비 수콰이캐슬 등 히트작 다수 출연','연기를 사랑하는 모든분들, 연기자가 되고싶은 모든분들 !
하정우처럼 연기하고 싶지 않으십니까 ?
연기인생 30년의 저를 만나보시면 하정우같은 리얼 생활연기가 가능해지실 겁니다. ','충청남도/천안시',null,'연기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (30,'4','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 30세
학력 : 호그와트 그리핀도르 출신
취미 : 페트로누스 소환 
좋아하는 음식 : 버터맥주','누구나 알고싶어하고 궁금해하지만 알수 없는 마술의 세계 !
현직 마법사가 알려드립니다. 
좋아하는 이성에게 간단한 마술을 선보여 호감을 얻어보세요 ! ','서울시/강남구',null,'마술');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (31,'4','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 30세
학력 : 대졸
학과 : 현대미술학과 
경력 : 세계 마임대회 3위 수상
취미 : 노래
좋아하는 음식 : 파니니','신기하지만 생소하고 낯선 마임의 세계를 경험해보세요.
마임이 좋아서 시작한지 10년 ! 
마임이 궁금한 당신에게 저의 이야기를 들려드리겠습니다. ','서울시/강남구/역삼동',null,'마임');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (32,'5','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 35세
학력 : 대졸
학과 : 식품영양학과
경력 : 전국 요리대회 3회 우승
','요리를 사랑하시는 모든분들 저랑 함께 요리해요!
요리에 대한 다양한 경험들과 체험을 하게 해드리겠습니다. ','서울시/강남구/역삼동',null,'요리클래스');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (33,'5','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 55세
학력 : 대졸
학과 : 식품영양학과 
경력 : 백종원 브랜드 총괄팀장
취미 : 춤, 기타, 요리 
좋아하는 음식 : 소고기
','
제2의 백종원을 꿈꾸는 당신에게만 은밀히 알려드리는 요식업계의 비밀 
','경기도/성남시/수정구',null,'요식업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (34,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 68세
학력 : 대졸
학과 : 식품과
경력 : 서울시 강남구 변변요리학원 원장
취미 : 노래','

40년 피자 외길만 걸어왔습니다. 피자에대한 모든 것을 알려드립니다. ','경기도/평택시',null,'피자요리');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (35,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 55세
학력 : 대졸
학과 : 식품영양학과 
경력 : 백종원 브랜드 총괄팀장
취미 : 춤, 기타, 요리 
좋아하는 음식 : 소고기','제2의 백종원을 꿈꾸는 당신에게만 은밀히 알려드리는 요식업계의 비밀 ','서울시/강남구/역삼동',null,'요식업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (36,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 68세
학력 : 대졸
학과 : 식품과
경력 : 서울시 강남구 변변요리학원 원장
취미 : 노래','40년 피자 외길만 걸어왔습니다. 피자에대한 모든 것을 알려드립니다.','서울시/강남구/역삼동',null,'피자요리');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (37,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 68세
학력 : 대졸
학과 : 식품과
경력 : 서울시 강남구 변변요리학원 원장
취미 : 노래
경기도/평택시','40년 피자 외길만 걸어왔습니다. 피자에대한 모든 것을 알려드립니다. ','서울시/강남구/역삼동',null,'피자요리');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (38,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 55세
학력 : 대졸
학과 : 식품영양학과 
경력 : 백종원 브랜드 총괄팀장
취미 : 춤, 기타, 요리 
좋아하는 음식 : 소고기','제2의 백종원을 꿈꾸는 당신에게만 은밀히 알려드리는 요식업계의 비밀 ','서울시/강남구/역삼동',null,'요식업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (39,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 35세
학력 : 대졸
학과 : 식품영양학과
경력 : 전국 요리대회 3회 우승','요리를 사랑하시는 모든분들 저랑 함께 요리해요!
요리에 대한 다양한 경험들과 체험을 하게 해드리겠습니다. ','충청남도/천안시',null,'요리를 사랑하시는 모든 분들');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (40,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 40세
학력 : 대졸
학과 : 식품영양학과
경력 : 치즈공장운영중','다년간 치즈만 연구했습니다. 치즈를 사랑하시는 분들에게 치즈 이야기를 들려드리고 싶습니다. ','서울시/강남구/역삼동',null,'치즈');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (41,'6','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변승훈
나이 : 60세
학력 : 대졸
학과 : 식품영양학과
경력 :  일본 초밥 프렌차이즈 전문점 스시잔마이에서 20년 근무','30년동안 초밥만 만들어왔습니다. 초밥을 좋아하시는 모든분께 초밥이야기를 
들려드리겠습니다. ','서울시/강남구/역삼동',null,'초밥요리');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (42,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 30세
학력 : 대졸
학과 : 약학과
경력 : 서울대학병원에서 근무중
','
약사가 되기로 결심한 계기, 약사가 되기까지의 과정, 
약사가되었을 때의 사건들 등
약사에 대해 궁금하신 모든 것을 알려드리겠습니다. ','서울시/강남구/역삼동',null,'의료-약사');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (43,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 38세
학력 : 대졸
학과 : 의학과 
경력 : 서울대학병원에서 근무중','의사가 되기까지의 과정과 공부법 등의 모든 과정들을 알려드립니다.
더 궁금한 사항들에 대해서도 자유롭게 질문하셔도 됩니다. ','서울시/금천구',null,'의료_의사');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (44,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 28세
학력 : 대졸
학과 : 약학과
경력 : 서울대학병원에서 근무중','
방사선사가 되기까지의 과정, 방사선사에대한 현실과 전망 등을 
솔직하게 말씀드리겠습니다. ','서울시/동작구',null,'의료_방사선사');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (45,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 38세
학력 : 대졸
학과 : 의학과 
경력 : 서울대학병원에서 근무중
서울시/금천구','의사가 되기까지의 과정과 공부법 등의 모든 과정들을 알려드립니다.
더 궁금한 사항들에 대해서도 자유롭게 질문하셔도 됩니다. ','서울시/동작구',null,'의료_의사');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (46,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 28세
학력 : 대졸
학과 : 약학과
경력 : 서울대학병원에서 근무중','방사선사가 되기까지의 과정, 방사선사에대한 현실과 전망 등을 
솔직하게 말씀드리겠습니다. ','서울시/동작구',null,'의료_방사선사');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (47,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 30세
학력 : 대졸
학과 : 약학과
경력 : 서울대학병원에서 근무중','약사가 되기로 결심한 계기, 약사가 되기까지의 과정, 
약사가되었을 때의 사건들 등
약사에 대해 궁금하신 모든 것을 알려드리겠습니다. ','충청남도/천안시',null,'의료-약사');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (48,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 35세
학력 : 대졸
학과 : 패션디자인학과
','당신도 앙드레김처럼 될 수 있습니다. 패션에 관한 모든것을 알려드립니다. ','서울시/강남구/개포동',null,'패션디자인');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (49,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 35세
학력 : 대졸
학과 : 패션디자인학과
경력 : 패션 디자이너로 유명함','
옷 잘입고싶으신 패션테러리스트분들 ! 
당신도 저를 만나면 김수현같은 사람으로 다시 태어날 수 있게 될 것입니다. ','서울시/강남구',null,'패션_옷');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (50,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 35세
학력 : 대졸
학과 : 패션디자인학과
경력 : 패션 디자이너로 유명함','
옷 잘입고싶으신 패션테러리스트분들 ! 
당신도 저를 만나면 김수현같은 사람으로 다시 태어날 수 있게 될 것입니다. ','서울시/강남구',null,'패션_옷');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (51,'7','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변여신
나이 : 30세추
경력 : 축구 국가대표출신
','
축구를 사랑하는 모든분들 일산의 메시로 만들어드립니다. 
그외에 축구 국가대표를 뛰면서 경험했던 모든 것들을 이야기 해드리겠습니다.','서울시/강남구/역삼동',null,'스포츠_축구');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (52,'8','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'학력 전공
선문대학교 석사·체육학과·졸업
경력 사항
부산아이파크 프로축·프로축구단·선수·15년.0개월','안녕하세요.
강남 최고의 선생님 변승훈 선수입니다.

저는 k리그에서 8년동안 뛰었고, 중국수퍼리그에서 3년, 태국리그에서 2년.
오랫동안 선수생활을한 전프로축구선수 입니다.

축구는 기본기가 가장 중요하죠.
제대로 된 축구를 배우지않으면 축구는 늘지않습니다.
반복적인 훈련이 필요하고 체계적인 프로그램으로 훈련을 해야합니다.

진짜 축구를 배우고싶으신 분
언제든지 축구가 처음이신 분
혹은 어린아이 성인까지 모두 즐겁게 축구를 배우실수있습니다.


프로축구15년이상의 훌륭한선생님과
최고의 프로그램으로 배우실수있는 기회입니다.
저희 스태프는 올림픽대표출신 대표님과 케이리그 중국슈퍼리그 태국리그 해외리그에서
많은경험을 한 훌륭한.스탭으로 구성되어있습니다.

이제 더 이상 축.잘.못이 아닌 그라운드의 연주자가 되어보세요.','서울시/강남구/역삼동',null,'스포츠_축구');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (6,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'학력 전공
용인대학교·격기지도학과·졸업
경력 사항
마도로스·컨텐츠사업주·매니저·0년.4개월
월드피트니스·피티팀·트레이너·1년.0개월
하이빌피트니스·피티팀·실장·1년.0개월
센트럴짐·트레이닝·피티 트레이너·0년.9개월
보유 자격증
생활스포츠지도자1급·2014.12·한국체육진흥원
생활스포츠지도자1급(레슬링)·2019.12·한국체육진흥원
노인스포츠지도자·2017.9·한국체육진흥원
','스포츠_레슬링
기초, 기본기부터 중급, 고급 기술까지
더이상 레슬링 어려워하지 마세요 !
남녀노소 불문 ! 누구나 쉽게 배울 수 있는 레슬링 레슨으로
엘리트 출신 레슬러가 레슬링을 쉽고 재미있게 알려드립니다 !



[ 이런 분들 께 추천드려요 ! ]
취미
레슬링 베이스 격투기선수및 준비생
호신술배우고 싶은 분
내 신체를 강인하게 만들고 싶은 분
다른 스포츠에 접목시키고 싶은 분
더이상 레슬링은 엘리트 선수들의 전유물이 아닙니다.
','경기도/용인시','월요일','스포츠_레슬링');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (6,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'학력 전공
용인대학교·격기지도학과·졸업
경력 사항
마도로스·컨텐츠사업주·매니저·0년.4개월
월드피트니스·피티팀·트레이너·1년.0개월
하이빌피트니스·피티팀·실장·1년.0개월
센트럴짐·트레이닝·피티 트레이너·0년.9개월
보유 자격증
생활스포츠지도자1급·2014.12·한국체육진흥원
생활스포츠지도자1급(레슬링)·2019.12·한국체육진흥원
노인스포츠지도자·2017.9·한국체육진흥원
','스포츠_레슬링
기초, 기본기부터 중급, 고급 기술까지
더이상 레슬링 어려워하지 마세요 !
남녀노소 불문 ! 누구나 쉽게 배울 수 있는 레슬링 레슨으로
엘리트 출신 레슬러가 레슬링을 쉽고 재미있게 알려드립니다 !



[ 이런 분들 께 추천드려요 ! ]
취미
레슬링 베이스 격투기선수및 준비생
호신술배우고 싶은 분
내 신체를 강인하게 만들고 싶은 분
다른 스포츠에 접목시키고 싶은 분
더이상 레슬링은 엘리트 선수들의 전유물이 아닙니다.
','경기도/용인시','수요일','스포츠_레슬링');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (6,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'학력 전공
용인대학교·격기지도학과·졸업
경력 사항
마도로스·컨텐츠사업주·매니저·0년.4개월
월드피트니스·피티팀·트레이너·1년.0개월
하이빌피트니스·피티팀·실장·1년.0개월
센트럴짐·트레이닝·피티 트레이너·0년.9개월
보유 자격증
생활스포츠지도자1급·2014.12·한국체육진흥원
생활스포츠지도자1급(레슬링)·2019.12·한국체육진흥원
노인스포츠지도자·2017.9·한국체육진흥원
','스포츠_레슬링
기초, 기본기부터 중급, 고급 기술까지
더이상 레슬링 어려워하지 마세요 !
남녀노소 불문 ! 누구나 쉽게 배울 수 있는 레슬링 레슨으로
엘리트 출신 레슬러가 레슬링을 쉽고 재미있게 알려드립니다 !



[ 이런 분들 께 추천드려요 ! ]
취미
레슬링 베이스 격투기선수및 준비생
호신술배우고 싶은 분
내 신체를 강인하게 만들고 싶은 분
다른 스포츠에 접목시키고 싶은 분
더이상 레슬링은 엘리트 선수들의 전유물이 아닙니다.
','경기도/용인시','금요일','스포츠_레슬링');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (7,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 29세
전공 : 스포츠학과
경력 : 국가대표 단거리 선수 출신
취미 : 등산, 암벽등반 
','우사인볼트처럼 인간탄환이 되는 비결을 알려드립니다. 
당신도 충분히 인간탄환이 될 수 있습니다. 
저만믿고 따라오세요 ! 

','경기도/용인시','화요일','스포츠_단거리 달리기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (7,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 29세
전공 : 스포츠학과
경력 : 국가대표 단거리 선수 출신
취미 : 등산, 암벽등반 
','우사인볼트처럼 인간탄환이 되는 비결을 알려드립니다. 
당신도 충분히 인간탄환이 될 수 있습니다. 
저만믿고 따라오세요 ! 

','경기도/용인시','토요일','스포츠_단거리 달리기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (7,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 29세
전공 : 스포츠학과
경력 : 국가대표 단거리 선수 출신
취미 : 등산, 암벽등반 
','우사인볼트처럼 인간탄환이 되는 비결을 알려드립니다. 
당신도 충분히 인간탄환이 될 수 있습니다. 
저만믿고 따라오세요 ! 

','경기도/용인시','목요일','스포츠_단거리 달리기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (8,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 40세
전공 : 사진과
경력 : 국내 사진대회 다수 입상
취미 : 등산, 암벽등반 
',' 프로 축구단의 행사 및 경기 촬영을 공식 대행하고 있으며, 축구전문 월간지의 인터뷰 촬영을 대행하고 있습니다. 다수의 경험으로 사진촬영은 물론 원활한 행사 진행까지 책임감 있는 태도로 최선을 다해 도와드립니다.

전문가의 가치는 중요한 현장에서 더욱 빛 납니다.
중요한 순간을 담아야 한다면 저렴한 가격보다 경험이 많은 작가를 선택하세요.


스포츠 경기 및 행사, 기업행사, 방송 스틸촬영이 필요하신 분은 언제든 문의주세요 *^^*
','충청남도 천안시','일요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (8,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 40세
전공 : 사진과
경력 : 국내 사진대회 다수 입상
취미 : 등산, 암벽등반 
',' 프로 축구단의 행사 및 경기 촬영을 공식 대행하고 있으며, 축구전문 월간지의 인터뷰 촬영을 대행하고 있습니다. 다수의 경험으로 사진촬영은 물론 원활한 행사 진행까지 책임감 있는 태도로 최선을 다해 도와드립니다.

전문가의 가치는 중요한 현장에서 더욱 빛 납니다.
중요한 순간을 담아야 한다면 저렴한 가격보다 경험이 많은 작가를 선택하세요.


스포츠 경기 및 행사, 기업행사, 방송 스틸촬영이 필요하신 분은 언제든 문의주세요 *^^*
','충청남도 천안시','월요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (8,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 40세
전공 : 사진과
경력 : 국내 사진대회 다수 입상
취미 : 등산, 암벽등반 
',' 프로 축구단의 행사 및 경기 촬영을 공식 대행하고 있으며, 축구전문 월간지의 인터뷰 촬영을 대행하고 있습니다. 다수의 경험으로 사진촬영은 물론 원활한 행사 진행까지 책임감 있는 태도로 최선을 다해 도와드립니다.

전문가의 가치는 중요한 현장에서 더욱 빛 납니다.
중요한 순간을 담아야 한다면 저렴한 가격보다 경험이 많은 작가를 선택하세요.


스포츠 경기 및 행사, 기업행사, 방송 스틸촬영이 필요하신 분은 언제든 문의주세요 *^^*
','충청남도 천안시','수요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (8,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 40세
전공 : 사진과
경력 : 국내 사진대회 다수 입상
취미 : 등산, 암벽등반 
',' 프로 축구단의 행사 및 경기 촬영을 공식 대행하고 있으며, 축구전문 월간지의 인터뷰 촬영을 대행하고 있습니다. 다수의 경험으로 사진촬영은 물론 원활한 행사 진행까지 책임감 있는 태도로 최선을 다해 도와드립니다.

전문가의 가치는 중요한 현장에서 더욱 빛 납니다.
중요한 순간을 담아야 한다면 저렴한 가격보다 경험이 많은 작가를 선택하세요.


스포츠 경기 및 행사, 기업행사, 방송 스틸촬영이 필요하신 분은 언제든 문의주세요 *^^*
','충청남도 천안시','금요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (9,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'저는 미술을 전공해서 패션디자인과를 다니다가 현재는 일러스트작업과 프리랜서로 일하고 있는 APE 입니다.

이름 : 변진희
나이 : 28세
전공 : 미술_패션디자인과
경력 : (現) 일러스트 작업, 디자인 관련 프리랜서
','안녕하세요.
패션디자인을 막 배우려고 생각하시거나 고민을 하고 계신 입문자님들에게 도움을 드리고 싶습니다. 
패션디자인을 시작하기 전 직면하는 고민이나 의문점, 알아두면 좋은 지식들을 경험으로 알려드리고 목표를 향해 나아가는데 도움이 되었으면 좋겠습니다:)
','경기도/용인시','화요일','패션디자인_지식');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (9,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'저는 미술을 전공해서 패션디자인과를 다니다가 현재는 일러스트작업과 프리랜서로 일하고 있는 APE 입니다.

이름 : 변진희
나이 : 28세
전공 : 미술_패션디자인과
경력 : (現) 일러스트 작업, 디자인 관련 프리랜서
','안녕하세요.
패션디자인을 막 배우려고 생각하시거나 고민을 하고 계신 입문자님들에게 도움을 드리고 싶습니다. 
패션디자인을 시작하기 전 직면하는 고민이나 의문점, 알아두면 좋은 지식들을 경험으로 알려드리고 목표를 향해 나아가는데 도움이 되었으면 좋겠습니다:)
','경기도/용인시','토요일','패션디자인_지식');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (9,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'저는 미술을 전공해서 패션디자인과를 다니다가 현재는 일러스트작업과 프리랜서로 일하고 있는 APE 입니다.

이름 : 변진희
나이 : 28세
전공 : 미술_패션디자인과
경력 : (現) 일러스트 작업, 디자인 관련 프리랜서
','안녕하세요.
패션디자인을 막 배우려고 생각하시거나 고민을 하고 계신 입문자님들에게 도움을 드리고 싶습니다. 
패션디자인을 시작하기 전 직면하는 고민이나 의문점, 알아두면 좋은 지식들을 경험으로 알려드리고 목표를 향해 나아가는데 도움이 되었으면 좋겠습니다:)
','경기도/용인시','목요일','패션디자인_지식');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (10,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'<면접·취업 코칭 전문가 자기소개>
1. 전문가의 주요 분야:
_ 이력서/자소서 작성
_ 기업분석/직무소개
_ 인사채용시스템의 이해와 단계별 준비
_ 면접코칭
2. 전문가의 경력/이력사항:
_ 대기업/중견기업 인사팀장&임원(제조/금융/패션/의료/해외법인 근무경험)
_ 헤드헌팅(전기/전자/패션/유통/건설/금융 등)
_ 공무원, 공공기업 전문면접위원 활동
_ 취업특강/멘토링 진행(서울시일자리센터, 대학 등)
_ 전직지원프로그램 설계 및 운영(공공기업 및 대기업)
3. 컨설팅 내용:
_ 취업준비에 필요한 궁금증 해소 및 개인별 맞춤 지원
_ 대졸공채시스템설계 및 운영 경험을 바탕으로 실질적인 코칭 지원
_ 자소서/면접/이미지메이킹
4. 컨설팅 절차:
_코칭 신청-패키지선택 -시간약속(온라인_카카오영상통화/대면)
5. 금액에 따른 서비스 제공 범위:
_ 패키지 금액별 온라인 서비스
','안녕하세요.
비쥬얼님은 20년 방송과 뷰티 이미지컨설팅, 강의 등 현장 경험과 실전을 바탕으로
고객님 한분 한분에게 맞춤 서비스로 헤어, 메이크업, 패션의 노하우를 고객분에게 맞는 컨설팅을 해 드립니다.


<이런 분에게 추천해 드립니다~~^^>
*이미지 변화를 주고 싶으신 분
*내 이미지에 맞는 스타일을 찾고 싶으신 분
*내 체형에 어울리는 의상 선택을 원하시는 분
*나의 퍼스널 컬러를 알고 싶으신 분
*퍼스널 메이크업을 원하시는 분
*내 이미지에 맞는 헤어 스타일을 찾고 싶으신분
*헤어ㆍ메이크업 토탈컨설팅을 받고 싶으신 분

*개인 화장품 파우치 준비해주시면 파우치 분석 후 제품으로 레슨 해 드립니다.
*내 헤어 스타일에 맞게 아이롱, 고데기 사용 방법을 알려드립니다.
*체형 분석 통해 패션 스타일을 제안해 드립니다.

**교육 후 개인에게 맞는 화장품 재료와 헤어 제품,의상 컨셉 공유해드립니다.**
**수업 후 일주일 간 궁금한 사항 피드백 해 드립니다.*
','서울시/강남구/논현동','화요일','뷰티컨설팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (10,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'<면접·취업 코칭 전문가 자기소개>
1. 전문가의 주요 분야:
_ 이력서/자소서 작성
_ 기업분석/직무소개
_ 인사채용시스템의 이해와 단계별 준비
_ 면접코칭
2. 전문가의 경력/이력사항:
_ 대기업/중견기업 인사팀장&임원(제조/금융/패션/의료/해외법인 근무경험)
_ 헤드헌팅(전기/전자/패션/유통/건설/금융 등)
_ 공무원, 공공기업 전문면접위원 활동
_ 취업특강/멘토링 진행(서울시일자리센터, 대학 등)
_ 전직지원프로그램 설계 및 운영(공공기업 및 대기업)
3. 컨설팅 내용:
_ 취업준비에 필요한 궁금증 해소 및 개인별 맞춤 지원
_ 대졸공채시스템설계 및 운영 경험을 바탕으로 실질적인 코칭 지원
_ 자소서/면접/이미지메이킹
4. 컨설팅 절차:
_코칭 신청-패키지선택 -시간약속(온라인_카카오영상통화/대면)
5. 금액에 따른 서비스 제공 범위:
_ 패키지 금액별 온라인 서비스
','안녕하세요.
비쥬얼님은 20년 방송과 뷰티 이미지컨설팅, 강의 등 현장 경험과 실전을 바탕으로
고객님 한분 한분에게 맞춤 서비스로 헤어, 메이크업, 패션의 노하우를 고객분에게 맞는 컨설팅을 해 드립니다.


<이런 분에게 추천해 드립니다~~^^>
*이미지 변화를 주고 싶으신 분
*내 이미지에 맞는 스타일을 찾고 싶으신 분
*내 체형에 어울리는 의상 선택을 원하시는 분
*나의 퍼스널 컬러를 알고 싶으신 분
*퍼스널 메이크업을 원하시는 분
*내 이미지에 맞는 헤어 스타일을 찾고 싶으신분
*헤어ㆍ메이크업 토탈컨설팅을 받고 싶으신 분

*개인 화장품 파우치 준비해주시면 파우치 분석 후 제품으로 레슨 해 드립니다.
*내 헤어 스타일에 맞게 아이롱, 고데기 사용 방법을 알려드립니다.
*체형 분석 통해 패션 스타일을 제안해 드립니다.

**교육 후 개인에게 맞는 화장품 재료와 헤어 제품,의상 컨셉 공유해드립니다.**
**수업 후 일주일 간 궁금한 사항 피드백 해 드립니다.*
','서울시/강남구/논현동','토요일','뷰티컨설팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (10,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'<면접·취업 코칭 전문가 자기소개>
1. 전문가의 주요 분야:
_ 이력서/자소서 작성
_ 기업분석/직무소개
_ 인사채용시스템의 이해와 단계별 준비
_ 면접코칭
2. 전문가의 경력/이력사항:
_ 대기업/중견기업 인사팀장&임원(제조/금융/패션/의료/해외법인 근무경험)
_ 헤드헌팅(전기/전자/패션/유통/건설/금융 등)
_ 공무원, 공공기업 전문면접위원 활동
_ 취업특강/멘토링 진행(서울시일자리센터, 대학 등)
_ 전직지원프로그램 설계 및 운영(공공기업 및 대기업)
3. 컨설팅 내용:
_ 취업준비에 필요한 궁금증 해소 및 개인별 맞춤 지원
_ 대졸공채시스템설계 및 운영 경험을 바탕으로 실질적인 코칭 지원
_ 자소서/면접/이미지메이킹
4. 컨설팅 절차:
_코칭 신청-패키지선택 -시간약속(온라인_카카오영상통화/대면)
5. 금액에 따른 서비스 제공 범위:
_ 패키지 금액별 온라인 서비스
','안녕하세요.
비쥬얼님은 20년 방송과 뷰티 이미지컨설팅, 강의 등 현장 경험과 실전을 바탕으로
고객님 한분 한분에게 맞춤 서비스로 헤어, 메이크업, 패션의 노하우를 고객분에게 맞는 컨설팅을 해 드립니다.


<이런 분에게 추천해 드립니다~~^^>
*이미지 변화를 주고 싶으신 분
*내 이미지에 맞는 스타일을 찾고 싶으신 분
*내 체형에 어울리는 의상 선택을 원하시는 분
*나의 퍼스널 컬러를 알고 싶으신 분
*퍼스널 메이크업을 원하시는 분
*내 이미지에 맞는 헤어 스타일을 찾고 싶으신분
*헤어ㆍ메이크업 토탈컨설팅을 받고 싶으신 분

*개인 화장품 파우치 준비해주시면 파우치 분석 후 제품으로 레슨 해 드립니다.
*내 헤어 스타일에 맞게 아이롱, 고데기 사용 방법을 알려드립니다.
*체형 분석 통해 패션 스타일을 제안해 드립니다.

**교육 후 개인에게 맞는 화장품 재료와 헤어 제품,의상 컨셉 공유해드립니다.**
**수업 후 일주일 간 궁금한 사항 피드백 해 드립니다.*
','서울시/강남구/논현동','목요일','뷰티컨설팅');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (11,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 35세
','취업궁금증을 해결해 드립니다.

<면접·취업 코칭 전문가 자기소개>
1. 전문가의 주요 분야:
_ 이력서/자소서 작성
_ 기업분석/직무소개
_ 인사채용시스템의 이해와 단계별 준비
_ 면접코칭
2. 전문가의 경력/이력사항:
_ 대기업/중견기업 인사팀장&임원(제조/금융/패션/의료/해외법인 근무경험)
_ 헤드헌팅(전기/전자/패션/유통/건설/금융 등)
_ 공무원, 공공기업 전문면접위원 활동
_ 취업특강/멘토링 진행(서울시일자리센터, 대학 등)
_ 전직지원프로그램 설계 및 운영(공공기업 및 대기업)
3. 컨설팅 내용:
_ 취업준비에 필요한 궁금증 해소 및 개인별 맞춤 지원
_ 대졸공채시스템설계 및 운영 경험을 바탕으로 실질적인 코칭 지원
_ 자소서/면접/이미지메이킹
4. 컨설팅 절차:
_코칭 신청-패키지선택 -시간약속(온라인_카카오영상통화/대면)
5. 금액에 따른 서비스 제공 범위:
_ 패키지 금액별 온라인 서비스
','서울시/강남구/논현동','화요일','패션, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (11,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 35세
','취업궁금증을 해결해 드립니다.

<면접·취업 코칭 전문가 자기소개>
1. 전문가의 주요 분야:
_ 이력서/자소서 작성
_ 기업분석/직무소개
_ 인사채용시스템의 이해와 단계별 준비
_ 면접코칭
2. 전문가의 경력/이력사항:
_ 대기업/중견기업 인사팀장&임원(제조/금융/패션/의료/해외법인 근무경험)
_ 헤드헌팅(전기/전자/패션/유통/건설/금융 등)
_ 공무원, 공공기업 전문면접위원 활동
_ 취업특강/멘토링 진행(서울시일자리센터, 대학 등)
_ 전직지원프로그램 설계 및 운영(공공기업 및 대기업)
3. 컨설팅 내용:
_ 취업준비에 필요한 궁금증 해소 및 개인별 맞춤 지원
_ 대졸공채시스템설계 및 운영 경험을 바탕으로 실질적인 코칭 지원
_ 자소서/면접/이미지메이킹
4. 컨설팅 절차:
_코칭 신청-패키지선택 -시간약속(온라인_카카오영상통화/대면)
5. 금액에 따른 서비스 제공 범위:
_ 패키지 금액별 온라인 서비스
','서울시/강남구/논현동','토요일','패션, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (11,'10','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 변진희
나이 : 35세
','취업궁금증을 해결해 드립니다.

<면접·취업 코칭 전문가 자기소개>
1. 전문가의 주요 분야:
_ 이력서/자소서 작성
_ 기업분석/직무소개
_ 인사채용시스템의 이해와 단계별 준비
_ 면접코칭
2. 전문가의 경력/이력사항:
_ 대기업/중견기업 인사팀장&임원(제조/금융/패션/의료/해외법인 근무경험)
_ 헤드헌팅(전기/전자/패션/유통/건설/금융 등)
_ 공무원, 공공기업 전문면접위원 활동
_ 취업특강/멘토링 진행(서울시일자리센터, 대학 등)
_ 전직지원프로그램 설계 및 운영(공공기업 및 대기업)
3. 컨설팅 내용:
_ 취업준비에 필요한 궁금증 해소 및 개인별 맞춤 지원
_ 대졸공채시스템설계 및 운영 경험을 바탕으로 실질적인 코칭 지원
_ 자소서/면접/이미지메이킹
4. 컨설팅 절차:
_코칭 신청-패키지선택 -시간약속(온라인_카카오영상통화/대면)
5. 금액에 따른 서비스 제공 범위:
_ 패키지 금액별 온라인 서비스
','서울시/강남구/논현동','목요일','패션, 취업');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (12,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'변승훈
나이 490세
','립스틱 바르는법','충청남도 천안시','화요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (12,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'변승훈
나이 490세
','립스틱 바르는법','충청남도 천안시','목요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (13,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'변승훈
나이 490세
','립스틱 바르는법','충청남도 천안시','화요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (13,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'변승훈
나이 490세
','립스틱 바르는법','충청남도 천안시','목요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (14,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ㅎㅎㅎㅎ','노는게 제일좋아','충청남도 천안시','화요일','놀기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (14,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ㅎㅎㅎㅎ','노는게 제일좋아','충청남도 천안시','월요일','놀기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (14,'73','noimg.gif','010-3658-4731',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'ㅎㅎㅎㅎ','노는게 제일좋아','충청남도 천안시','수요일','놀기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (150,'78','noimg.gif','010-9874-9874',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'비와 당신 ','비와 당신','경기도/용인시','화요일','놀기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (150,'78','noimg.gif','010-9874-9874',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'비와 당신 ','비와 당신','경기도/용인시','월요일','놀기');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (151,'78','noimg.gif','010-9874-9874',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'나는 당신','당신과 비','충남 천안시','목요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (151,'78','noimg.gif','010-9874-9874',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'나는 당신','당신과 비','충남 천안시','금요일','스포츠_사진');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (152,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김용승
나이 : 25세
경력 : kh정보교육원 최연소 강사
취미 : 아몬드먹기
좋아하는 음식 : 아몬드','자바의 ''자''자도 모르시는 분들도 자바 마스터 하게 해드립니다. ','서울시/강남구/역삼동','화요일','IT_JAVA');
Insert into SERVICE_INFO (SERVICE_NO,S_USER_NO,CHANGE_NAME,PHONE,CONTACTTIME_START,CONTACTTIME_FINISH,SALE_INFO,S_EXPLAIN,AVAILABLE_AREA,AVAILABLE_DATE,SUBJECT) values (152,'3','peng3.jpg','010-1111-1111',to_date('20/06/01','RR/MM/DD'),to_date('20/06/01','RR/MM/DD'),'이름 : 김용승
나이 : 25세
경력 : kh정보교육원 최연소 강사
취미 : 아몬드먹기
좋아하는 음식 : 아몬드','자바의 ''자''자도 모르시는 분들도 자바 마스터 하게 해드립니다. ','서울시/강남구/역삼동','월요일','IT_JAVA');
REM INSERTING into SERVICE_PD
SET DEFINE OFF;
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (54,'1','auction','Ev','이벤트','bts.png','admin','BTS 만남 이벤트',0,100000000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (55,'1','auction','Ev','이벤트','twice.png','admin','Twice 만남 이벤트',0,100000000,'브론즈','BRONZE',1,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (53,'1','auction','Ev','이벤트','bill.png','admin','빌게이츠 방한 이벤트 안내',0,100000000,'브론즈','BRONZE',1,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (56,'1','auction','Ev','이벤트','lee.png','admin','삼성 이재용 부회장 만남 이벤트',0,100000000,'브론즈','BRONZE',2,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (57,'1','auction','Ev','이벤트','rain.jpg','admin','가수 비 만남 이벤트',0,30000000,'브론즈','BRONZE',0,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (58,'1','auction','Ev','이벤트','trump.jpg','admin','트럼프 대통령 만남 이벤트',0,100000000,'브론즈','BRONZE',0,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (59,'1','auction','Ev','이벤트','yjs.jpg','admin','유재석 만남 이벤트',0,30000000,'브론즈','BRONZE',0,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (60,'1','auction','Ev','이벤트','messi.jpg','admin','리오넬 메시와의 만남 이벤트',0,100000000,'브론즈','BRONZE',0,to_date('20/07/02','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (61,'1','auction','Ev','이벤트','sjs.jpg','admin','소지섭 만남 이벤트',0,20000000,'브론즈','BRONZE',0,to_date('20/07/03','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (62,'1','auction','Ev','이벤트','sonjpg.jpg','admin','손흥민 만남 이벤트',0,30000000,'브론즈','BRONZE',2,to_date('20/07/08','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (63,'12','general','Bu','창업','up.jpg','test10','창업의 기초를 알려드립니다',30000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (64,'12','general','Bu','창업','up1.jpg','test10','창업의 기초를 알려드립니다',40000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (65,'12','general','Bu','창업','up2.jpg','test10','창업의 기초를 알려드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (66,'12','general','Bu','창업','up3.jpg','test10','창업의 기초를 알려드립니다',60000,0,'브론즈','BRONZE',1,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (67,'12','general','Bu','창업','up4.jpg','test10','창업의 기초를 알려드립니다',70000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (68,'12','auction','Bu','창업','up5.jpg','test10','창업의 기초를 알려드립니다',0,10000,'브론즈','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (69,'12','auction','Bu','창업','up6.jpg','test10','창업의 기초를 알려드립니다',0,20000,'브론즈','BRONZE',0,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (70,'12','auction','Bu','창업','up7.jpg','test10','창업의 기초를 알려드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (71,'12','auction','Bu','창업','up8.jpg','test10','창업의 기초를 알려드립니다',0,40000,'브론즈','BRONZE',0,to_date('20/06/28','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (72,'12','auction','Bu','창업','up9.jpg','test10','창업의 기초를 알려드립니다',0,50000,'브론즈','BRONZE',1,to_date('20/07/04','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (73,'13','general','Ma','마케팅','marketing.png','test11','효율적인 마케팅 방법을 알려드립니다',30000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (74,'13','general','Ma','마케팅','marketing1.png','test11','효율적인 마케팅 방법을 알려드립니다',40000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (75,'13','general','Ma','마케팅','marketing2.png','test11','효율적인 마케팅 방법을 알려드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (76,'13','general','Ma','마케팅','marketing3.png','test11','효율적인 마케팅 방법을 알려드립니다',60000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (77,'13','general','Ma','마케팅','marketing4.png','test11','효율적인 마케팅 방법을 알려드립니다',70000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (78,'13','auction','Ma','마케팅','marketing5.png','test11','효율적인 마케팅 방법을 알려드립니다',0,10000,'브론즈','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (79,'13','auction','Ma','마케팅','marketing6.png','test11','효율적인 마케팅 방법을 알려드립니다',0,20000,'브론즈','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (80,'13','auction','Ma','마케팅','marketing7.png','test11','효율적인 마케팅 방법을 알려드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (81,'13','auction','Ma','마케팅','marketing8.png','test11','효율적인 마케팅 방법을 알려드립니다',0,40000,'브론즈','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (82,'13','auction','Ma','마케팅','marketing9.png','test11','효율적인 마케팅 방법을 알려드립니다',0,50000,'브론즈','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (83,'14','general','Pu','공무원','gmw.jpg','test12','공무원 준비 일대기를 들려 드립니다',10000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (84,'14','general','Pu','공무원','gmw1.jpg','test12','공무원 준비 일대기를 들려 드립니다',20000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (85,'14','general','Pu','공무원','gmw2.jpg','test12','공무원 준비 일대기를 들려 드립니다',30000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (86,'14','general','Pu','공무원','gmw3.jpg','test12','공무원 준비 일대기를 들려 드립니다',40000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (87,'14','general','Pu','공무원','gmw4.jpg','test12','공무원 준비 일대기를 들려 드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (88,'14','auction','Pu','공무원','gmw5.jpg','test12','공무원 준비 일대기를 들려 드립니다',0,10000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (89,'14','auction','Pu','공무원','gmw6.jpg','test12','공무원 준비 일대기를 들려 드립니다',0,20000,'브론즈','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (90,'14','auction','Pu','공무원','gmw7.jpg','test12','공무원 준비 일대기를 들려 드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (91,'14','auction','Pu','공무원','gmw8.jpg','test12','공무원 준비 일대기를 들려 드립니다',0,40000,'브론즈','BRONZE',1,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (92,'14','auction','Pu','공무원','gmw9.jpg','test12','공무원 준비 일대기를 들려 드립니다',0,50000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (93,'15','general','Fi','금융','bank.jpg','test13','금융권 취업을 도와드립니다',10000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (94,'15','general','Fi','금융','bank1.jpg','test13','금융권 취업을 도와드립니다',20000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (95,'15','general','Fi','금융','bank2.jpg','test13','금융권 취업을 도와드립니다',30000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (96,'15','general','Fi','금융','bank3.jpg','test13','금융권 취업을 도와드립니다',40000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (97,'15','general','Fi','금융','bank4.jpg','test13','금융권 취업을 도와드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (98,'15','auction','Fi','금융','bank5.jpg','test13','금융권 취업을 도와드립니다',0,10000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (99,'15','auction','Fi','금융','bank6.jpg','test13','금융권 취업을 도와드립니다',0,20000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (100,'15','auction','Fi','금융','bank7.jpg','test13','금융권 취업을 도와드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (101,'15','auction','Fi','금융','bank8.jpg','test13','금융권 취업을 도와드립니다',0,40000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (102,'15','auction','Fi','금융','bank9.jpg','test13','금융권 취업을 도와드립니다',0,50000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (103,'22','general','It','IT','eclipse.png','test20','JAVA 기초 강의 및 조언 해드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (104,'23','general','It','IT','C.png','test21','C# 기초 강의 및 조언 해드립니다',70000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (105,'24','general','It','IT','samsung.jpg','test22','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (106,'25','general','It','IT','LGelect.png','test23','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',60000,0,'브론즈','BRONZE',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (107,'26','general','It','IT','vs.png','test24','웹디자인 기초강의 해드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (108,'27','general','It','IT','graphic.jpg','test25','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (109,'27','general','It','IT','python.jpg','test25','파이썬 알려드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (110,'28','general','It','IT','app.jpg','test26','모바일 앱 만들기 기초 강의 합니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (111,'29','general','It','IT','eclipse1.png','test27','JAVA 기초 강의 및 조언 해드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (112,'30','general','It','IT','C1.png','test28','C# 기초 강의 및 조언 해드립니다',70000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (113,'31','general','It','IT','samsung1.jpg','test29','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (114,'32','general','It','IT','LGelect1.png','test30','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',60000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (115,'33','general','It','IT','vs1.png','test31','웹디자인 기초강의 해드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (116,'34','general','It','IT','graphic1.jpg','test32','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (117,'35','general','It','IT','python1.jpg','test33','파이썬 알려드립니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (118,'36','general','It','IT','app1.jpg','test34','모바일 앱 만들기 기초 강의 합니다',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (119,'37','auction','It','IT','eclipse2.png','test35','JAVA 기초 강의 및 조언 해드립니다',0,10000,'브론즈','BRONZE',1,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (120,'38','auction','It','IT','C2.png','test36','C# 기초 강의 및 조언 해드립니다',0,30000,'브론즈','BRONZE',3,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (121,'39','auction','It','IT','samsung2.jpg','test37','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (122,'40','auction','It','IT','LGelect2.png','test38','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (123,'41','auction','It','IT','vs2.png','test39','웹디자인 기초강의 해드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (124,'42','auction','It','IT','graphic2.jpg','test40','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',0,40000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (125,'43','auction','It','IT','python2.jpg','test41','파이썬 알려드립니다',0,40000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (126,'44','auction','It','IT','app2.jpg','test42','모바일 앱 만들기 기초 강의 합니다',0,40000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (127,'45','auction','It','IT','eclipse3.png','test43','JAVA 기초 강의 및 조언 해드립니다',0,40000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (128,'46','auction','It','IT','C3.png','test44','C# 기초 강의 및 조언 해드립니다',0,40000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (129,'47','auction','It','IT','samsung3.jpg','test45','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (130,'48','auction','It','IT','LGelect3.png','test46','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다',0,10000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (131,'49','auction','It','IT','vs3.png','test47','웹디자인 기초강의 해드립니다',0,30000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (132,'50','auction','It','IT','graphic3.jpg','test48','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다',0,40000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (133,'51','auction','It','IT','python3.jpg','test49','파이썬 알려드립니다',0,10000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (134,'52','auction','It','IT','app3.jpg','test50','모바일 앱 만들기 기초 강의 합니다',0,10000,'브론즈','BRONZE',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (1,'3','general','Ar','예술','효신찡.jpg','test1','단기간에 기타 마스터 하는법을 알려드립니다.',1000000,0,'골드','GOLD',3,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (3,'3','auction','Ar','예술','뷔찡.jpg','test1','당신도 방탄소년단이 될 수 있습니다. ',200000,200000,'골드','GOLD',2,to_date('20/06/16','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (2,'3','auction','Ar','예술','효신찡.jpg','test1','단기간에 박효신 성대로 만들어 드립니다.  ',0,1000000,'골드','GOLD',3,to_date('20/06/26','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (4,'3','general','Ar','예술','돈까스.jpg','test1','당신도 스윙스가 될 수 있습니다. ',300000,0,'골드','GOLD',9,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (5,'3','auction','Ar','예술','kkang.jpg','test1','1일 3깡을 하는 당신에게',0,210000,'골드','GOLD',3,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (21,'3','general','Ar','예술','camera.PNG','test1','필름카메라에 대한 경험을 나누고 싶습니다. ',20000,0,'골드','GOLD',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (22,'3','general','Ar','예술','mona.jpg','test1','레오나르도 다빈치처럼 그림그리기 ',50000,0,'골드','GOLD',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (23,'3','auction','Ar','예술','ha.jpg','test1','하정우처럼 연기하고 싶으신분',0,50000,'골드','GOLD',0,to_date('20/07/01','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (24,'3','auction','Ar','예술','magic.jpg','test1','마술의 비밀을 알려드립니다. ',800000,800000,'골드','GOLD',10,to_date('20/06/23','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (25,'3','general','Ar','예술','maaaaaaaaaaaa.jpg','test1','마임에 대해 알려드립니다. ',50000,0,'골드','GOLD',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (26,'3','general','Ar','예술','latteeee.jpg','test1','라떼아트에 대해 알려드립니다. ',80000,0,'골드','GOLD',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (28,'4','auction','Ar','예술','mona1.jpg','test2','당신도 모나리자를 그릴 수 있습니다. ',0,10000,'브론즈','BRONZE',0,to_date('20/06/27','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (29,'4','auction','Ar','예술','ha1.jpg','test2','하정우처럼 연기의 신이 되고 싶습니까?',0,100000,'브론즈','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (30,'4','general','Ar','예술','magic1.jpg','test2','마술의 세계를 보여드립니다. ',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (31,'4','auction','Ar','예술','maaaaaaaaaaaa1.jpg','test2','마임의 세계를 경험해보세요.',0,100000,'브론즈','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (32,'5','general','Re','요식업','egg.jpg','test3','요리를 사랑하시는 모든 분들',30000,0,'플래티넘','PLATINUM',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (33,'5','auction','Re','요식업','back.jpg','test3','백종원같은 요식업계의 대부가 되게 해드립니다.',0,200000,'플래티넘','PLATINUM',1,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (34,'6','general','Re','요식업','pizza.jpg','test4','피자 장인으로 만들어드립니다. ',50000,0,'실버','SILVER',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (35,'6','auction','Re','요식업','back1.jpg','test4','백종원같은 요식업계의 대부가 되게 해드립니다.',0,100000,'실버','SILVER',2,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (36,'6','auction','Re','요식업','pizza1.jpg','test4','피자 장인으로 만들어드립니다. ',0,100000,'실버','SILVER',0,to_date('20/07/10','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (37,'6','general','Re','요식업','pizza2.jpg','test4','피자 장인으로 만들어드립니다.',50000,0,'실버','SILVER',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (38,'6','general','Re','요식업','back2.jpg','test4','백종원같은 요식업계의 대부가 되게 해드립니다.',10000,0,'실버','SILVER',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (39,'6','general','Re','요식업','egg1.jpg','test4','요리를 사랑하시는 모든 분들',50000,0,'실버','SILVER',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (40,'6','auction','Re','요식업','cheese.jpg','test4','치즈에 관한 이야기',0,50000,'실버','SILVER',0,to_date('20/06/17','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (41,'6','general','Re','요식업','cho.jpg','test4','초밥장인이 들려주는 초밥이야기',50000,0,'실버','SILVER',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (42,'7','general','Me','의료','medi.jpg','test5','약사가 되기까지의 과정',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (43,'7','auction','Me','의료','doctor.jpg','test5','의사가 궁금하신 모든 분들에게',0,100000,'브론즈','BRONZE',1,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (44,'7','general','Me','의료','bang.jpg','test5','방사선사에 대해 궁금하신 모든분들',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (45,'7','auction','Me','의료','doctor1.jpg','test5','의사가 궁금하신 모든분께',0,100000,'브론즈','BRONZE',2,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (46,'7','auction','Me','의료','bang1.jpg','test5','방사선사에 대해 궁금하신 모든분들',0,100000,'브론즈','BRONZE',0,to_date('20/07/06','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (47,'7','auction','Me','의료','medi1.jpg','test5','약사가 되기까지의 과정',0,100000,'브론즈','BRONZE',1,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (48,'7','general','Fa','패션','fassion.jpg','test5','제2의 앙드레김을 꿈꾸는 분들에게 ',60000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (49,'7','auction','Fa','패션','kian.jpg','test5','패션센스가 기안 84인 분들께',0,100000,'브론즈','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (50,'7','general','Fa','패션','kian1.jpg','test5','패션센스가 기안 84인 분들께',50000,0,'브론즈','BRONZE',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (51,'7','auction','Sp','스포츠','me.jpg','test5','당신을 일산의 메시로 만들어드립니다. ',0,100000,'브론즈','BRONZE',1,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (52,'8','general','Sp','스포츠','son.jpg','test6','나도 손흥민이 될수있다 프로축구15년이상 선생님과 축구레슨 드립니다.',50000,0,'브론즈','BRONZE',1,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (6,'10','general','Sp','스포츠','re.jpg','test8','유튜브 레슬링코치가 올림픽레슬링 알려 드립니다.',100000,0,'브론즈','BRONZE',2,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (6,'10','general','Sp','스포츠','people.jpg','test8','유튜브 레슬링코치가 올림픽레슬링 알려 드립니다.',100000,0,'브론즈','BRONZE',2,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (7,'10','auction','Sp','스포츠','wooooo.jpg','test8','우사인 볼트처럼 되고싶으시다면 클릭하세요',0,50000,'브론즈','BRONZE',0,to_date('20/06/26','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (8,'10','general','Sp','스포츠','pick.jpg','test8','스포츠 경기, 행사, 방송스틸 촬영해 드립니다.',50000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (9,'10','general','Fa','패션','fasion.jpg','test8','알아두면 좋은 패션디자인 입문자를 위한 잡학지식을 알려 드립니다.',10000,0,'브론즈','BRONZE',0,null,'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (10,'10','auction','Fa','패션','beauty.jpg','test8','뷰티 이미지 컨설팅 : 헤어, 메이크업 컨설팅 해 드립니다.',0,50000,'브론즈','BRONZE',0,to_date('20/06/30','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (11,'10','auction','Fa','패션','upup.png','test8','패션관련 취업궁금증을 해결해 드립니다.',0,30000,'브론즈','BRONZE',13,to_date('20/06/29','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (12,'73','auction','Re','요식업','beauty4.jpg','tmdgns','레스토랑',1111777,1111777,'브론즈','BRONZE',1,to_date('20/06/19','RR/MM/DD'),'Y');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (13,'73','auction','Re','요식업','beauty5.jpg','tmdgns','레스토랑',1111777,1111777,'브론즈','BRONZE',2,to_date('20/06/19','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (14,'73','auction','Ar','예술','fasion1.jpg','tmdgns','게시글 등록되나',60000,60000,'브론즈','BRONZE',3,to_date('20/06/22','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (150,'78','general','Ar','예술','re1.jpg','sell','비와당신',10000,0,'브론즈','BRONZE',102,null,'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (151,'78','auction','Ar','예술','fasion2.jpg','sell','당신과 비',100000,100000,'브론즈','BRONZE',113,to_date('20/06/23','RR/MM/DD'),'N');
Insert into SERVICE_PD (SERVICE_NO,S_USER_NO,SALEMETHOD,CATEGORY_CODE,CATEGORY_NAME,CHANGE_NAME,USER_ID,TITLE,PRICE_SALE,PRICE_BIDDING,GRADE_NAME,GRADE_NO,READCOUNT,DEADLINE,SERVICE_STATUS) values (152,'3','auction','It','IT','YS.jpg','test1','자바 마스터하게해드립니다. ',0,300000,'골드','GOLD',1,to_date('20/06/30','RR/MM/DD'),'Y');
REM INSERTING into SERVICE_REVIEW_INFO
SET DEFINE OFF;
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('3','1','admin',5,'넌 나의 잠이야','Y',to_date('20/06/22','RR/MM/DD'));
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('73','1','admin',3,'넌 똥이야','Y',to_date('20/06/22','RR/MM/DD'));
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('8','1','admin',5,'테스트중','N',to_date('20/06/23','RR/MM/DD'));
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('12','1','admin',5,'ㅅㅅㅅㅅㅅㅅ','N',to_date('20/06/23','RR/MM/DD'));
Insert into SERVICE_REVIEW_INFO (S_USER_NO,USER_NO,USER_ID,RATING,CONTENT,BOARD_STATUS,WRITE_DATE) values ('78','80','buy2',4,'내가 구매한거야','N',to_date('20/06/23','RR/MM/DD'));
REM INSERTING into SERVICE_SELL_LIST
SET DEFINE OFF;
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (152,'3','자바 마스터하게해드립니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (151,'78','당신과 비','N','구매자이','010-3214-6547',4,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (150,'78','비와당신','N','구매자일','010-9874-6547',null,'Y');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (134,'52','모바일 앱 만들기 기초 강의 합니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (133,'51','파이썬 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (132,'50','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (131,'49','웹디자인 기초강의 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (130,'48','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (129,'47','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (128,'46','C# 기초 강의 및 조언 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (127,'45','JAVA 기초 강의 및 조언 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (126,'44','모바일 앱 만들기 기초 강의 합니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (125,'43','파이썬 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (124,'42','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (123,'41','웹디자인 기초강의 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (122,'40','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (121,'39','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (120,'38','C# 기초 강의 및 조언 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (119,'37','JAVA 기초 강의 및 조언 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (118,'36','모바일 앱 만들기 기초 강의 합니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (117,'35','파이썬 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (116,'34','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (115,'33','웹디자인 기초강의 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (114,'32','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (113,'31','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (112,'30','C# 기초 강의 및 조언 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (111,'29','JAVA 기초 강의 및 조언 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (110,'28','모바일 앱 만들기 기초 강의 합니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (109,'27','파이썬 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (108,'27','그래픽 디자이너가 되기 위한 기초 강의를 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (107,'26','웹디자인 기초강의 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (106,'25','현 LG전자 재직중인 직장인이 취업 및 하는 일을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (105,'24','삼성 반도체분야 취업 비결 및 하는 일을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (104,'23','C# 기초 강의 및 조언 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (103,'22','JAVA 기초 강의 및 조언 해드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (102,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (101,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (100,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (99,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (98,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (97,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (96,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (95,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (94,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (93,'15','금융권 취업을 도와드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (92,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (91,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (90,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (89,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (88,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (87,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (86,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (85,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (84,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (83,'14','공무원 준비 일대기를 들려 드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (82,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (81,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (80,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (79,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (78,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (77,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (76,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (75,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (74,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (73,'13','효율적인 마케팅 방법을 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (72,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (71,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (70,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (69,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (68,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (67,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (66,'12','창업의 기초를 알려드립니다','N','admin','01012341344',5,'Y');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (65,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (64,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (63,'12','창업의 기초를 알려드립니다','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (62,'1','손흥민 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (61,'1','소지섭 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (60,'1','리오넬 메시와의 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (59,'1','유재석 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (58,'1','트럼프 대통령 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (57,'1','가수 비 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (56,'1','삼성 이재용 부회장 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (55,'1','Twice 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (54,'1','BTS 만남 이벤트','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (53,'1','빌게이츠 방한 이벤트 안내','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (52,'8','나도 손흥민이 될수있다 프로축구15년이상 선생님과 축구레슨 드립니다.','Y','admin','01012341344',5,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (51,'7','당신을 일산의 메시로 만들어드립니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (50,'7','패션센스가 기안 84인 분들께','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (49,'7','패션센스가 기안 84인 분들께','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (48,'7','제2의 앙드레김을 꿈꾸는 분들에게 ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (47,'7','약사가 되기까지의 과정','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (46,'7','방사선사에 대해 궁금하신 모든분들','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (45,'7','의사가 궁금하신 모든분께','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (44,'7','방사선사에 대해 궁금하신 모든분들','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (43,'7','의사가 궁금하신 모든 분들에게','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (42,'7','약사가 되기까지의 과정','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (41,'6','초밥장인이 들려주는 초밥이야기','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (40,'6','치즈에 관한 이야기','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (39,'6','요리를 사랑하시는 모든 분들','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (38,'6','백종원같은 요식업계의 대부가 되게 해드립니다.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (37,'6','피자 장인으로 만들어드립니다.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (36,'6','피자 장인으로 만들어드립니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (35,'6','백종원같은 요식업계의 대부가 되게 해드립니다.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (34,'6','피자 장인으로 만들어드립니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (33,'5','백종원같은 요식업계의 대부가 되게 해드립니다.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (32,'5','요리를 사랑하시는 모든 분들','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (31,'4','마임의 세계를 경험해보세요.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (30,'4','마술의 세계를 보여드립니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (29,'4','하정우처럼 연기의 신이 되고 싶습니까?','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (28,'4','당신도 모나리자를 그릴 수 있습니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (26,'3','라떼아트에 대해 알려드립니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (25,'3','마임에 대해 알려드립니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (24,'3','마술의 비밀을 알려드립니다. ','N','구매자이','010-3214-6547',null,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (23,'3','하정우처럼 연기하고 싶으신분','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (22,'3','레오나르도 다빈치처럼 그림그리기 ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (21,'3','필름카메라에 대한 경험을 나누고 싶습니다. ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (14,'73','게시글 등록되나','N','admin','01012341344',3,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (13,'73','레스토랑','N','admin','01012341344',null,'Y');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (12,'73','레스토랑','Y','admin','01012341344',null,'Y');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (11,'10','패션관련 취업궁금증을 해결해 드립니다.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (10,'10','뷰티 이미지 컨설팅 : 헤어, 메이크업 컨설팅 해 드립니다.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (9,'10','알아두면 좋은 패션디자인 입문자를 위한 잡학지식을 알려 드립니다.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (8,'10','스포츠 경기, 행사, 방송스틸 촬영해 드립니다.','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (7,'10','우사인 볼트처럼 되고싶으시다면 클릭하세요','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (6,'10','유튜브 레슬링코치가 올림픽레슬링 알려 드립니다.','N','admin','01012341344',null,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (5,'3','1일 3깡을 하는 당신에게','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (4,'3','당신도 스윙스가 될 수 있습니다. ','Y','admin','01012341344',5,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (3,'3','당신도 방탄소년단이 될 수 있습니다. ','N','admin','01012341344',null,'N');
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (2,'3','단기간에 박효신 성대로 만들어 드립니다.  ','Y',null,null,null,null);
Insert into SERVICE_SELL_LIST (SERVICE_NO,S_USER_NO,TITLE,SERVICE_STATUS,USER_NAME,PHONE,RATING,REFUND_YN) values (1,'3','단기간에 기타 마스터 하는법을 알려드립니다.','N','admin','01012341344',null,'N');
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
