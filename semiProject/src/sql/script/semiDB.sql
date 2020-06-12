--------------------------------------------------------
--  파일이 생성됨 - 월요일-6월-08-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACCOUNT
--------------------------------------------------------

  CREATE TABLE "ACCOUNT" 
   (	"ACCOUNT" NUMBER, 
	"BANK" VARCHAR2(20 BYTE), 
	"ACCOUNT_HOLD" VARCHAR2(20 BYTE), 
	"USER_NO" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "ACCOUNT"."ACCOUNT" IS '계좌번호';
   COMMENT ON COLUMN "ACCOUNT"."BANK" IS '은행';
   COMMENT ON COLUMN "ACCOUNT"."ACCOUNT_HOLD" IS '예금주';
   COMMENT ON COLUMN "ACCOUNT"."USER_NO" IS '회원번호';
--------------------------------------------------------
--  DDL for Table BOARDER
--------------------------------------------------------

  CREATE TABLE "BOARDER" 
   (	"BOARDER_NO" NUMBER, 
	"TITLE" VARCHAR2(20 BYTE), 
	"CATEGORY" VARCHAR2(20 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"USER_NO" NUMBER, 
	"WRITE_DATE" DATE DEFAULT SYSDATE, 
	"READ_NUM" NUMBER
   ) ;

   COMMENT ON COLUMN "BOARDER"."BOARDER_NO" IS '게시글번호';
   COMMENT ON COLUMN "BOARDER"."TITLE" IS '제목';
   COMMENT ON COLUMN "BOARDER"."CATEGORY" IS '분류';
   COMMENT ON COLUMN "BOARDER"."CONTENT" IS '내용';
   COMMENT ON COLUMN "BOARDER"."USER_NO" IS '게시물 작성자';
   COMMENT ON COLUMN "BOARDER"."WRITE_DATE" IS '작성일자';
   COMMENT ON COLUMN "BOARDER"."READ_NUM" IS '조회수';
--------------------------------------------------------
--  DDL for Table BUYER
--------------------------------------------------------

  CREATE TABLE "BUYER" 
   (	"B_USER_NO" VARCHAR2(20 BYTE), 
	"REPORT_NUM" NUMBER
   ) ;

   COMMENT ON COLUMN "BUYER"."B_USER_NO" IS '회원번호';
   COMMENT ON COLUMN "BUYER"."REPORT_NUM" IS '신고받은 횟수';
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "CATEGORY" 
   (	"CATEGORY_CODE" VARCHAR2(10 BYTE), 
	"CATEGORY_NAME" VARCHAR2(30 BYTE)
   ) ;

   COMMENT ON COLUMN "CATEGORY"."CATEGORY_CODE" IS '카테고리코드';
   COMMENT ON COLUMN "CATEGORY"."CATEGORY_NAME" IS '카테고리명';
--------------------------------------------------------
--  DDL for Table DAYS
--------------------------------------------------------

  CREATE TABLE "DAYS" 
   (	"AVAILABLE_DATE" VARCHAR2(10 BYTE), 
	"SERVICE_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "DAYS"."AVAILABLE_DATE" IS '요일';
   COMMENT ON COLUMN "DAYS"."SERVICE_NO" IS '서비스번호';
--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "FAQ" 
   (	"BOARDER_NO" NUMBER, 
	"FAQ_DEL" VARCHAR2(3 BYTE) DEFAULT 'N'
   ) ;

   COMMENT ON COLUMN "FAQ"."BOARDER_NO" IS 'FAQ번호';
   COMMENT ON COLUMN "FAQ"."FAQ_DEL" IS '삭제여부';
--------------------------------------------------------
--  DDL for Table FILES
--------------------------------------------------------

  CREATE TABLE "FILES" 
   (	"FID" NUMBER, 
	"BOARDER_NO" NUMBER, 
	"ORIGIN_NAME" VARCHAR2(255 BYTE), 
	"CHANGE_NAME" VARCHAR2(255 BYTE), 
	"FILE_PATH" VARCHAR2(1000 BYTE), 
	"UPLOAD_DATE" DATE DEFAULT SYSDATE, 
	"FILE_LEVEL" NUMBER, 
	"DOWNLOAD_COUNT" NUMBER, 
	"STATUS" VARCHAR2(3 BYTE)
   ) ;

   COMMENT ON COLUMN "FILES"."FID" IS '파일번호';
   COMMENT ON COLUMN "FILES"."BOARDER_NO" IS '게시글번호';
   COMMENT ON COLUMN "FILES"."ORIGIN_NAME" IS '원본이름';
   COMMENT ON COLUMN "FILES"."CHANGE_NAME" IS '바뀐이름';
   COMMENT ON COLUMN "FILES"."FILE_PATH" IS '파일경로';
   COMMENT ON COLUMN "FILES"."UPLOAD_DATE" IS '올린날짜';
   COMMENT ON COLUMN "FILES"."FILE_LEVEL" IS '파일레벨';
   COMMENT ON COLUMN "FILES"."DOWNLOAD_COUNT" IS '다운로드횟수';
   COMMENT ON COLUMN "FILES"."STATUS" IS '상태';
--------------------------------------------------------
--  DDL for Table GRADE_CLASS
--------------------------------------------------------

  CREATE TABLE "GRADE_CLASS" 
   (	"GRADE_NO" VARCHAR2(20 BYTE), 
	"GRADE_MIN" NUMBER, 
	"GRADE_MAX" NUMBER, 
	"GRADE_IMG" VARCHAR2(100 BYTE), 
	"GRADE_NAME" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "GRADE_CLASS"."GRADE_NO" IS '등급';
   COMMENT ON COLUMN "GRADE_CLASS"."GRADE_MIN" IS '평점최소값';
   COMMENT ON COLUMN "GRADE_CLASS"."GRADE_MAX" IS '평점최대값';
   COMMENT ON COLUMN "GRADE_CLASS"."GRADE_IMG" IS '등급이미지';
   COMMENT ON COLUMN "GRADE_CLASS"."GRADE_NAME" IS '등급명';
--------------------------------------------------------
--  DDL for Table INQUIARY
--------------------------------------------------------

  CREATE TABLE "INQUIARY" 
   (	"BOARDER_NO" NUMBER, 
	"BOARDER_TYPE" VARCHAR2(20 BYTE), 
	"INQUIRY_DEL" VARCHAR2(3 BYTE) DEFAULT 'N', 
	"INQUIRY_CONTENT" VARCHAR2(2000 BYTE), 
	"INQUIRY_YN" VARCHAR2(3 BYTE) DEFAULT 'N', 
	"INQUIRY_DATE" DATE DEFAULT SYSDATE, 
	"INQUIRY_FILE" VARCHAR2(20 BYTE) DEFAULT 'N'
   ) ;

   COMMENT ON COLUMN "INQUIARY"."BOARDER_NO" IS '문의번호';
   COMMENT ON COLUMN "INQUIARY"."BOARDER_TYPE" IS '문의유형';
   COMMENT ON COLUMN "INQUIARY"."INQUIRY_DEL" IS '삭제여부';
   COMMENT ON COLUMN "INQUIARY"."INQUIRY_CONTENT" IS '답변내용';
   COMMENT ON COLUMN "INQUIARY"."INQUIRY_YN" IS '답변여부';
   COMMENT ON COLUMN "INQUIARY"."INQUIRY_DATE" IS '답변날짜';
   COMMENT ON COLUMN "INQUIARY"."INQUIRY_FILE" IS '파일명';
--------------------------------------------------------
--  DDL for Table LIST
--------------------------------------------------------

  CREATE TABLE "LIST" 
   (	"SERVICE_NO" NUMBER, 
	"TRADE_DATE" DATE DEFAULT SYSDATE, 
	"S_USER_NO" VARCHAR2(20 BYTE), 
	"B_USER_NO" VARCHAR2(20 BYTE), 
	"REFUND_YN" VARCHAR2(3 BYTE) DEFAULT 'N'
   ) ;

   COMMENT ON COLUMN "LIST"."SERVICE_NO" IS '서비스 번호';
   COMMENT ON COLUMN "LIST"."TRADE_DATE" IS '거래일자';
   COMMENT ON COLUMN "LIST"."S_USER_NO" IS '판매자번호';
   COMMENT ON COLUMN "LIST"."B_USER_NO" IS '구매자번호';
   COMMENT ON COLUMN "LIST"."REFUND_YN" IS '환불여부';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"USER_NO" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_PWD" VARCHAR2(20 BYTE), 
	"USER_NAME" VARCHAR2(30 BYTE), 
	"BIRTH" NUMBER, 
	"PHONE" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"POINT" NUMBER, 
	"ENROLL_DATE" DATE DEFAULT SYSDATE, 
	"DROP_DATE" DATE DEFAULT SYSDATE, 
	"STATUS" VARCHAR2(20 BYTE) DEFAULT 'N', 
	"GRADE" VARCHAR2(20 BYTE), 
	"GRADE_AVG" NUMBER, 
	"PROFILE" VARCHAR2(100 BYTE), 
	"SELL_YN" VARCHAR2(3 BYTE) DEFAULT 'Y', 
	"REVIEW_YN" VARCHAR2(3 BYTE) DEFAULT 'Y'
   ) ;

   COMMENT ON COLUMN "MEMBER"."USER_NO" IS '회원번호';
   COMMENT ON COLUMN "MEMBER"."USER_ID" IS '아이디';
   COMMENT ON COLUMN "MEMBER"."USER_PWD" IS '비밀번호';
   COMMENT ON COLUMN "MEMBER"."USER_NAME" IS '이름';
   COMMENT ON COLUMN "MEMBER"."BIRTH" IS '생년월일';
   COMMENT ON COLUMN "MEMBER"."PHONE" IS '전화번호';
   COMMENT ON COLUMN "MEMBER"."EMAIL" IS '이메일';
   COMMENT ON COLUMN "MEMBER"."POINT" IS '포인트';
   COMMENT ON COLUMN "MEMBER"."ENROLL_DATE" IS '가입일';
   COMMENT ON COLUMN "MEMBER"."DROP_DATE" IS '탈퇴일자';
   COMMENT ON COLUMN "MEMBER"."STATUS" IS '탈퇴여부';
   COMMENT ON COLUMN "MEMBER"."GRADE" IS '등급';
   COMMENT ON COLUMN "MEMBER"."GRADE_AVG" IS '등급평점';
   COMMENT ON COLUMN "MEMBER"."PROFILE" IS '프로필사진';
   COMMENT ON COLUMN "MEMBER"."SELL_YN" IS '판매자권한';
   COMMENT ON COLUMN "MEMBER"."REVIEW_YN" IS '구매자권한';
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"BOARDER_NO" NUMBER, 
	"NOTICE_DEL" VARCHAR2(3 BYTE) DEFAULT 'N'
   ) ;

   COMMENT ON COLUMN "NOTICE"."BOARDER_NO" IS '공지번호';
   COMMENT ON COLUMN "NOTICE"."NOTICE_DEL" IS '삭제여부';
--------------------------------------------------------
--  DDL for Table PROFILE_FILES
--------------------------------------------------------

  CREATE TABLE "PROFILE_FILES" 
   (	"FID" NUMBER, 
	"USER_NO" VARCHAR2(20 BYTE), 
	"ORIGIN_NAME" VARCHAR2(255 BYTE), 
	"CHANGE_NAME" VARCHAR2(255 BYTE), 
	"FILE_PATH" VARCHAR2(1000 BYTE), 
	"UPLOAD_DATE" DATE DEFAULT SYSDATE, 
	"FILE_LEVEL" NUMBER, 
	"DOWNLOAD_COUNT" NUMBER, 
	"STATUS" VARCHAR2(3 BYTE)
   ) ;

   COMMENT ON COLUMN "PROFILE_FILES"."FID" IS '파일번호';
   COMMENT ON COLUMN "PROFILE_FILES"."USER_NO" IS '회원번호';
   COMMENT ON COLUMN "PROFILE_FILES"."ORIGIN_NAME" IS '원본이름';
   COMMENT ON COLUMN "PROFILE_FILES"."CHANGE_NAME" IS '바뀐이름';
   COMMENT ON COLUMN "PROFILE_FILES"."FILE_PATH" IS '파일경로';
   COMMENT ON COLUMN "PROFILE_FILES"."UPLOAD_DATE" IS '올린날짜';
   COMMENT ON COLUMN "PROFILE_FILES"."FILE_LEVEL" IS '파일레벨';
   COMMENT ON COLUMN "PROFILE_FILES"."DOWNLOAD_COUNT" IS '다운로드횟수';
   COMMENT ON COLUMN "PROFILE_FILES"."STATUS" IS '상태';
--------------------------------------------------------
--  DDL for Table REPORT
--------------------------------------------------------

  CREATE TABLE "REPORT" 
   (	"BOARDER_NO" NUMBER, 
	"REPORT_TYPE" VARCHAR2(20 BYTE), 
	"REPORT_DEL" VARCHAR2(3 BYTE) DEFAULT 'N', 
	"RE_CONTENT" VARCHAR2(4000 BYTE), 
	"RE_YN" VARCHAR2(3 BYTE) DEFAULT 'N', 
	"RE_DATE" DATE DEFAULT SYSDATE, 
	"SERVICE_NO" NUMBER, 
	"RE_FILE" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "REPORT"."BOARDER_NO" IS '신고번호';
   COMMENT ON COLUMN "REPORT"."REPORT_TYPE" IS '신고유형';
   COMMENT ON COLUMN "REPORT"."REPORT_DEL" IS '삭제여부';
   COMMENT ON COLUMN "REPORT"."RE_CONTENT" IS '답변내용';
   COMMENT ON COLUMN "REPORT"."RE_YN" IS '답변날짜';
   COMMENT ON COLUMN "REPORT"."RE_DATE" IS '서비스번호';
   COMMENT ON COLUMN "REPORT"."SERVICE_NO" IS '파일명';
   COMMENT ON COLUMN "REPORT"."RE_FILE" IS '신고번호';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"BOARDER_NO" NUMBER, 
	"RATING" NUMBER, 
	"REVIEW_DEL" VARCHAR2(3 BYTE) DEFAULT 'N', 
	"SERVICE_NO" NUMBER
   ) ;

   COMMENT ON COLUMN "REVIEW"."BOARDER_NO" IS '리뷰번호';
   COMMENT ON COLUMN "REVIEW"."RATING" IS '평점';
   COMMENT ON COLUMN "REVIEW"."REVIEW_DEL" IS '삭제여부';
   COMMENT ON COLUMN "REVIEW"."SERVICE_NO" IS '서비스번호';
--------------------------------------------------------
--  DDL for Table SELLER
--------------------------------------------------------

  CREATE TABLE "SELLER" 
   (	"S_USER_NO" VARCHAR2(20 BYTE), 
	"REPORT_NUM" NUMBER
   ) ;

   COMMENT ON COLUMN "SELLER"."S_USER_NO" IS '회원번호';
   COMMENT ON COLUMN "SELLER"."REPORT_NUM" IS '신고받은 횟수';
--------------------------------------------------------
--  DDL for Table SERVICE
--------------------------------------------------------

  CREATE TABLE "SERVICE" 
   (	"SERVICE_NO" NUMBER, 
	"S_USER_NO" NUMBER, 
	"SALE_INFO" VARCHAR2(4000 BYTE), 
	"AVAILABLE_AREA" VARCHAR2(50 BYTE), 
	"CONTACTTIME" DATE, 
	"IMAGE" VARCHAR2(100 BYTE), 
	"READCOUNT" NUMBER, 
	"FILE_COUNT" NUMBER, 
	"FILE_YN" VARCHAR2(1 BYTE), 
	"B_USER_NO" NUMBER, 
	"SALEMETHOD" VARCHAR2(10 BYTE), 
	"DEADLINE" DATE, 
	"PRICE_BIDDING" NUMBER, 
	"PRICE_SALE" NUMBER, 
	"SUBJECT" VARCHAR2(100 BYTE), 
	"CATEGORY_CODE" VARCHAR2(10 BYTE), 
	"FILE_LEVEL" VARCHAR2(10 BYTE), 
	"DIVISION" VARCHAR2(3 BYTE)
   ) ;

   COMMENT ON COLUMN "SERVICE"."SERVICE_NO" IS '서비스번호';
   COMMENT ON COLUMN "SERVICE"."S_USER_NO" IS '판매자번호';
   COMMENT ON COLUMN "SERVICE"."SALE_INFO" IS '판매자정보';
   COMMENT ON COLUMN "SERVICE"."AVAILABLE_AREA" IS '가능지역';
   COMMENT ON COLUMN "SERVICE"."CONTACTTIME" IS '연락가능시간';
   COMMENT ON COLUMN "SERVICE"."IMAGE" IS '사진';
   COMMENT ON COLUMN "SERVICE"."READCOUNT" IS '조회수';
   COMMENT ON COLUMN "SERVICE"."FILE_COUNT" IS '첨부파일갯수';
   COMMENT ON COLUMN "SERVICE"."FILE_YN" IS '파일첨부여부';
   COMMENT ON COLUMN "SERVICE"."B_USER_NO" IS '구매자 번호';
   COMMENT ON COLUMN "SERVICE"."SALEMETHOD" IS '판매방식';
   COMMENT ON COLUMN "SERVICE"."DEADLINE" IS '마감시간   ';
   COMMENT ON COLUMN "SERVICE"."PRICE_BIDDING" IS '최소금액   ';
   COMMENT ON COLUMN "SERVICE"."PRICE_SALE" IS '판매가격';
   COMMENT ON COLUMN "SERVICE"."SUBJECT" IS '관련주제';
   COMMENT ON COLUMN "SERVICE"."CATEGORY_CODE" IS '카테고리코드';
   COMMENT ON COLUMN "SERVICE"."FILE_LEVEL" IS '파일레벨';
   COMMENT ON COLUMN "SERVICE"."DIVISION" IS '판매구분';
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
	"STATUS" VARCHAR2(3 BYTE)
   ) ;

   COMMENT ON COLUMN "SERVICE_FILES"."FID" IS '파일번호';
   COMMENT ON COLUMN "SERVICE_FILES"."SERVICE_NO" IS '서비스번호';
   COMMENT ON COLUMN "SERVICE_FILES"."ORIGIN_NAME" IS '원본이름';
   COMMENT ON COLUMN "SERVICE_FILES"."CHANGE_NAME" IS '바뀐이름';
   COMMENT ON COLUMN "SERVICE_FILES"."FILE_PATH" IS '파일경로';
   COMMENT ON COLUMN "SERVICE_FILES"."UPLOAD_DATE" IS '올린날짜';
   COMMENT ON COLUMN "SERVICE_FILES"."FILE_LEVEL" IS '파일레벨';
   COMMENT ON COLUMN "SERVICE_FILES"."DOWNLOAD_COUNT" IS '다운로드횟수';
   COMMENT ON COLUMN "SERVICE_FILES"."STATUS" IS '상태';
REM INSERTING into ACCOUNT
SET DEFINE OFF;
REM INSERTING into BOARDER
SET DEFINE OFF;
REM INSERTING into BUYER
SET DEFINE OFF;
REM INSERTING into CATEGORY
SET DEFINE OFF;
REM INSERTING into DAYS
SET DEFINE OFF;
REM INSERTING into FAQ
SET DEFINE OFF;
REM INSERTING into FILES
SET DEFINE OFF;
REM INSERTING into GRADE_CLASS
SET DEFINE OFF;
REM INSERTING into INQUIARY
SET DEFINE OFF;
REM INSERTING into LIST
SET DEFINE OFF;
REM INSERTING into MEMBER
SET DEFINE OFF;
REM INSERTING into NOTICE
SET DEFINE OFF;
REM INSERTING into PROFILE_FILES
SET DEFINE OFF;
REM INSERTING into REPORT
SET DEFINE OFF;
REM INSERTING into REVIEW
SET DEFINE OFF;
REM INSERTING into SELLER
SET DEFINE OFF;
REM INSERTING into SERVICE
SET DEFINE OFF;
REM INSERTING into SERVICE_FILES
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_ACCOUNT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ACCOUNT" ON "ACCOUNT" ("ACCOUNT") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BOARDER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BOARDER" ON "BOARDER" ("BOARDER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_BUYER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BUYER" ON "BUYER" ("B_USER_NO") 
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
--  DDL for Index PK_FAQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FAQ" ON "FAQ" ("BOARDER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_FILES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FILES" ON "FILES" ("FID", "BOARDER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_GRADE_CLASS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_GRADE_CLASS" ON "GRADE_CLASS" ("GRADE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_INQUIARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_INQUIARY" ON "INQUIARY" ("BOARDER_NO") 
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
--  DDL for Index PK_NOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_NOTICE" ON "NOTICE" ("BOARDER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_PROFILE_FILES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PROFILE_FILES" ON "PROFILE_FILES" ("FID", "USER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REPORT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REPORT" ON "REPORT" ("BOARDER_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REVIEW" ON "REVIEW" ("BOARDER_NO") 
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

  ALTER TABLE "ACCOUNT" ADD CONSTRAINT "PK_ACCOUNT" PRIMARY KEY ("ACCOUNT") ENABLE;
  ALTER TABLE "ACCOUNT" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("ACCOUNT_HOLD" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("BANK" NOT NULL ENABLE);
  ALTER TABLE "ACCOUNT" MODIFY ("ACCOUNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOARDER
--------------------------------------------------------

  ALTER TABLE "BOARDER" ADD CONSTRAINT "PK_BOARDER" PRIMARY KEY ("BOARDER_NO") ENABLE;
  ALTER TABLE "BOARDER" MODIFY ("WRITE_DATE" NOT NULL ENABLE);
  ALTER TABLE "BOARDER" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "BOARDER" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "BOARDER" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "BOARDER" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "BOARDER" MODIFY ("BOARDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BUYER
--------------------------------------------------------

  ALTER TABLE "BUYER" ADD CONSTRAINT "PK_BUYER" PRIMARY KEY ("B_USER_NO") ENABLE;
  ALTER TABLE "BUYER" MODIFY ("B_USER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "CATEGORY" ADD CONSTRAINT "PK_CATEGORY" PRIMARY KEY ("CATEGORY_CODE") ENABLE;
  ALTER TABLE "CATEGORY" MODIFY ("CATEGORY_NAME" NOT NULL ENABLE);
  ALTER TABLE "CATEGORY" MODIFY ("CATEGORY_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DAYS
--------------------------------------------------------

  ALTER TABLE "DAYS" ADD CONSTRAINT "PK_DAYS" PRIMARY KEY ("AVAILABLE_DATE", "SERVICE_NO") ENABLE;
  ALTER TABLE "DAYS" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "DAYS" MODIFY ("AVAILABLE_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "FAQ" ADD CONSTRAINT "PK_FAQ" PRIMARY KEY ("BOARDER_NO") ENABLE;
  ALTER TABLE "FAQ" MODIFY ("FAQ_DEL" NOT NULL ENABLE);
  ALTER TABLE "FAQ" MODIFY ("BOARDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILES
--------------------------------------------------------

  ALTER TABLE "FILES" ADD CONSTRAINT "PK_FILES" PRIMARY KEY ("FID", "BOARDER_NO") ENABLE;
  ALTER TABLE "FILES" MODIFY ("FILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("CHANGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("ORIGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("BOARDER_NO" NOT NULL ENABLE);
  ALTER TABLE "FILES" MODIFY ("FID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GRADE_CLASS
--------------------------------------------------------

  ALTER TABLE "GRADE_CLASS" ADD CONSTRAINT "PK_GRADE_CLASS" PRIMARY KEY ("GRADE_NO") ENABLE;
  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_NAME" NOT NULL ENABLE);
  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_IMG" NOT NULL ENABLE);
  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_MAX" NOT NULL ENABLE);
  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_MIN" NOT NULL ENABLE);
  ALTER TABLE "GRADE_CLASS" MODIFY ("GRADE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table INQUIARY
--------------------------------------------------------

  ALTER TABLE "INQUIARY" ADD CONSTRAINT "PK_INQUIARY" PRIMARY KEY ("BOARDER_NO") ENABLE;
  ALTER TABLE "INQUIARY" MODIFY ("INQUIRY_DEL" NOT NULL ENABLE);
  ALTER TABLE "INQUIARY" MODIFY ("BOARDER_TYPE" NOT NULL ENABLE);
  ALTER TABLE "INQUIARY" MODIFY ("BOARDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIST
--------------------------------------------------------

  ALTER TABLE "LIST" ADD CONSTRAINT "PK_LIST" PRIMARY KEY ("SERVICE_NO") ENABLE;
  ALTER TABLE "LIST" MODIFY ("REFUND_YN" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("B_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("S_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("TRADE_DATE" NOT NULL ENABLE);
  ALTER TABLE "LIST" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("USER_NO") ENABLE;
  ALTER TABLE "MEMBER" MODIFY ("GRADE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("ENROLL_DATE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("POINT" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("USER_PWD" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("USER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY ("BOARDER_NO") ENABLE;
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_DEL" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("BOARDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFILE_FILES
--------------------------------------------------------

  ALTER TABLE "PROFILE_FILES" ADD CONSTRAINT "PK_PROFILE_FILES" PRIMARY KEY ("FID", "USER_NO") ENABLE;
  ALTER TABLE "PROFILE_FILES" MODIFY ("FILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" MODIFY ("CHANGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" MODIFY ("ORIGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" MODIFY ("USER_NO" NOT NULL ENABLE);
  ALTER TABLE "PROFILE_FILES" MODIFY ("FID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPORT
--------------------------------------------------------

  ALTER TABLE "REPORT" ADD CONSTRAINT "PK_REPORT" PRIMARY KEY ("BOARDER_NO") ENABLE;
  ALTER TABLE "REPORT" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "REPORT" MODIFY ("REPORT_DEL" NOT NULL ENABLE);
  ALTER TABLE "REPORT" MODIFY ("REPORT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "REPORT" MODIFY ("BOARDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY ("BOARDER_NO") ENABLE;
  ALTER TABLE "REVIEW" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("RATING" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("BOARDER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SELLER
--------------------------------------------------------

  ALTER TABLE "SELLER" ADD CONSTRAINT "PK_SELLER" PRIMARY KEY ("S_USER_NO") ENABLE;
  ALTER TABLE "SELLER" MODIFY ("S_USER_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SERVICE
--------------------------------------------------------

  ALTER TABLE "SERVICE" ADD CONSTRAINT "PK_SERVICE" PRIMARY KEY ("SERVICE_NO") ENABLE;
  ALTER TABLE "SERVICE" MODIFY ("DIVISION" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("CATEGORY_CODE" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("SALEMETHOD" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("B_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("FILE_YN" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("S_USER_NO" NOT NULL ENABLE);
  ALTER TABLE "SERVICE" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SERVICE_FILES
--------------------------------------------------------

  ALTER TABLE "SERVICE_FILES" ADD CONSTRAINT "PK_SERVICE_FILES" PRIMARY KEY ("FID", "SERVICE_NO") ENABLE;
  ALTER TABLE "SERVICE_FILES" MODIFY ("FILE_PATH" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("CHANGE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("ORIGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("SERVICE_NO" NOT NULL ENABLE);
  ALTER TABLE "SERVICE_FILES" MODIFY ("FID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BUYER
--------------------------------------------------------

  ALTER TABLE "BUYER" ADD CONSTRAINT "FK_MEMBER_TO_BUYER_1" FOREIGN KEY ("B_USER_NO")
	  REFERENCES "MEMBER" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DAYS
--------------------------------------------------------

  ALTER TABLE "DAYS" ADD CONSTRAINT "FK_SERVICE_TO_DAYS_1" FOREIGN KEY ("SERVICE_NO")
	  REFERENCES "SERVICE" ("SERVICE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "FAQ" ADD CONSTRAINT "FK_BOARDER_TO_FAQ_1" FOREIGN KEY ("BOARDER_NO")
	  REFERENCES "BOARDER" ("BOARDER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FILES
--------------------------------------------------------

  ALTER TABLE "FILES" ADD CONSTRAINT "FK_BOARDER_TO_FILES_1" FOREIGN KEY ("BOARDER_NO")
	  REFERENCES "BOARDER" ("BOARDER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INQUIARY
--------------------------------------------------------

  ALTER TABLE "INQUIARY" ADD CONSTRAINT "FK_BOARDER_TO_INQUIARY_1" FOREIGN KEY ("BOARDER_NO")
	  REFERENCES "BOARDER" ("BOARDER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIST
--------------------------------------------------------

  ALTER TABLE "LIST" ADD CONSTRAINT "FK_SERVICE_TO_LIST_1" FOREIGN KEY ("SERVICE_NO")
	  REFERENCES "SERVICE" ("SERVICE_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_BOARDER_TO_NOTICE_1" FOREIGN KEY ("BOARDER_NO")
	  REFERENCES "BOARDER" ("BOARDER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROFILE_FILES
--------------------------------------------------------

  ALTER TABLE "PROFILE_FILES" ADD CONSTRAINT "FK_MEMBER_TO_PROFILE_FILES_1" FOREIGN KEY ("USER_NO")
	  REFERENCES "MEMBER" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPORT
--------------------------------------------------------

  ALTER TABLE "REPORT" ADD CONSTRAINT "FK_BOARDER_TO_REPORT_1" FOREIGN KEY ("BOARDER_NO")
	  REFERENCES "BOARDER" ("BOARDER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_BOARDER_TO_REVIEW_1" FOREIGN KEY ("BOARDER_NO")
	  REFERENCES "BOARDER" ("BOARDER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SELLER
--------------------------------------------------------

  ALTER TABLE "SELLER" ADD CONSTRAINT "FK_MEMBER_TO_SELLER_1" FOREIGN KEY ("S_USER_NO")
	  REFERENCES "MEMBER" ("USER_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SERVICE_FILES
--------------------------------------------------------

  ALTER TABLE "SERVICE_FILES" ADD CONSTRAINT "FK_SERVICE_TO_SERVICE_FILES_1" FOREIGN KEY ("SERVICE_NO")
	  REFERENCES "SERVICE" ("SERVICE_NO") ENABLE;
