﻿CREATE TABLE "MEMBER" (
	"USER_NO"	VARCHAR2(100)		NOT NULL,
	"USER_ID"	VARCHAR2(100)		NOT NULL,
	"USER_PWD"	VARCHAR2(100)		NOT NULL,
	"USER_NAME"	VARCHAR2(30)		NOT NULL,
	"BIRTH"	VARCHAR2(100)		NOT NULL,
	"PHONE"	VARCHAR2(100)		NOT NULL,
	"EMAIL"	VARCHAR2(100)		NOT NULL,
	"POINT"	NUMBER	DEFAULT 0	NOT NULL,
	"ENROLL_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"DROP_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"STATUS"	VARCHAR2(20)	DEFAULT 'Y'	NOT NULL,
	"GRADE"	VARCHAR2(20)	DEFAULT 'BRONZE'	NOT NULL,
	"GRADE_TOT"	NUMBER	DEFAULT 0	NOT NULL,
	"PROFILE"	VARCHAR2(100)		NULL,
	"SELL_YN"	VARCHAR2(3)	DEFAULT 'Y'	NULL,
	"REVIEW_YN"	VARCHAR2(3)	DEFAULT 'Y'	NULL
);

CREATE TABLE "SELLER" (
	"S_USER_NO"	VARCHAR2(100)		NOT NULL,
	"REPORT_NUM"	NUMBER	DEFAULT 0	NOT NULL,
	"Field"	VARCHAR(255)		NULL
);

CREATE TABLE "BUYER" (
	"B_USER_NO"	VARCHAR2(100)		NOT NULL,
	"REPORT_NUM"	NUMBER	DEFAULT 0	NOT NULL,
	"BUY_NUM"	VARCHAR(255)		NULL
);

CREATE TABLE "REVIEW" (
	"BOARD_NO"	NUMBER		NOT NULL,
	"RATING"	NUMBER		NOT NULL,
	"SERVICE_NO"	NUMBER		NOT NULL
);

CREATE TABLE "BOARD" (
	"BOARD_NO"	NUMBER		NOT NULL,
	"TITLE"	VARCHAR2(100)		NOT NULL,
	"CONTENT"	VARCHAR2(2000)		NOT NULL,
	"USER_NO"	VARCHAR2(100)		NOT NULL,
	"WRITE_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"READ_NUM"	NUMBER		NULL,
	"BOARD_CODE"	NUMBER		NOT NULL,
	"BOARD_STATUS"	VARCHAR(255)		NULL
);

CREATE TABLE "INQUIARY" (
	"BOARD_NO"	NUMBER		NOT NULL,
	"INQUIRY_CONTENT"	VARCHAR2(2000)	DEFAULT 'N'	NULL,
	"INQUIRY_YN"	VARCHAR2(3)	DEFAULT 'N'	NOT NULL,
	"INQUIRY_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"BOARD_TYPE"	VARCHAR2(100)		NOT NULL
);

CREATE TABLE "REPORT" (
	"BOARD_NO"	NUMBER		NOT NULL,
	"RE_CONTENT"	VARCHAR2(4000)	DEFAULT 'N'	NULL,
	"RE_YN"	VARCHAR2(3)	DEFAULT 'N'	NOT NULL,
	"RE_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"SERVICE_NO"	NUMBER		NOT NULL,
	"REPORT_TYPE"	VARCHAR2(100)		NOT NULL
);

CREATE TABLE "SERVICE" (
	"SERVICE_NO"	NUMBER		NOT NULL,
	"S_USER_NO"	VARCHAR2(100)		NOT NULL,
	"SALE_INFO"	VARCHAR2(4000)		NOT NULL,
	"AVAILABLE_AREA"	VARCHAR2(100)		NOT NULL,
	"READCOUNT"	NUMBER	DEFAULT 0	NOT NULL,
	"FILE_COUNT"	NUMBER	DEFAULT 0	NULL,
	"FILE_YN"	VARCHAR2(5)	DEFAULT N	NOT NULL,
	"B_USER_NO"	VARCHAR2(100)		NOT NULL,
	"SALEMETHOD"	VARCHAR(10)		NOT NULL,
	"SUBJECT"	VARCHAR2(200)		NOT NULL,
	"CATEGORY_CODE"	VARCHAR2(10)		NOT NULL,
	"DEADLINE"	DATE		NULL,
	"PRICE_BIDDING"	NUMBER		NULL,
	"PRICE_SALE"	NUMBER		NULL,
	"CONTACTTIME_START"	DATE		NOT NULL,
	"CONTACTTIME_FINISH"	DATE		NOT NULL,
	"TITLE"	VARCHAR2(100)		NOT NULL,
	"REGISTER_DATE"	DATE		NOT NULL,
	"S_EXPLAIN"	VARCHAR2(4000)		NOT NULL
);

CREATE TABLE "LIST" (
	"SERVICE_NO"	NUMBER		NOT NULL,
	"TRADE_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"S_USER_NO"	VARCHAR2(100)		NOT NULL,
	"B_USER_NO"	VARCHAR2(100)		NOT NULL,
	"REFUND_YN"	VARCHAR2(3)	DEFAULT 'N'	NOT NULL
);

CREATE TABLE "ACCOUNT" (
	"ACCOUNT"	VARCHAR2(100)		NOT NULL,
	"BANK"	VARCHAR2(100)		NOT NULL,
	"ACCOUNT_HOLD"	VARCHAR2(100)		NOT NULL,
	"USER_NO"	VARCHAR2(100)		NOT NULL
);

CREATE TABLE "GRADE_CLASS" (
	"GRADE_NO"	VARCHAR2(20)		NOT NULL,
	"GRADE_MIN"	NUMBER		NOT NULL,
	"GRADE_MAX"	NUMBER		NOT NULL,
	"GRADE_IMG"	VARCHAR2(100)		NOT NULL,
	"GRADE_NAME"	VARCHAR2(20)		NOT NULL
);

CREATE TABLE "CATEGORY" (
	"CATEGORY_CODE"	VARCHAR2(10)		NOT NULL,
	"CATEGORY_NAME"	VARCHAR2(30)		NOT NULL
);

CREATE TABLE "FILES" (
	"FID"	NUMBER		NOT NULL,
	"BOARD_NO"	NUMBER		NOT NULL,
	"ORIGIN_NAME"	VARCHAR2(255)		NOT NULL,
	"CHANGE_NAME"	VARCHAR2(255)		NOT NULL,
	"FILE_PATH"	VARCHAR2(1000)		NOT NULL,
	"UPLOAD_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"FILE_LEVEL"	NUMBER		NULL,
	"DOWNLOAD_COUNT"	NUMBER	DEFAULT 0	NOT NULL,
	"STATUS"	VARCHAR2(3)		NULL
);

CREATE TABLE "SERVICE_FILES" (
	"FID"	NUMBER		NOT NULL,
	"SERVICE_NO"	NUMBER		NOT NULL,
	"ORIGIN_NAME"	VARCHAR2(20)		NOT NULL,
	"CHANGE_NAME"	VARCHAR2(20)		NOT NULL,
	"FILE_PATH"	VARCHAR2(1000)		NOT NULL,
	"UPLOAD_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"FILE_LEVEL"	NUMBER		NULL,
	"DOWNLOAD_COUNT"	NUMBER		NULL,
	"STATUS"	VARCHAR2(3)	DEFAULT 'N'	NOT NULL
);

CREATE TABLE "DAYS" (
	"AVAILABLE_DATE"	VARCHAR2(10)		NOT NULL,
	"SERVICE_NO"	NUMBER		NOT NULL
);

CREATE TABLE "PROFILE_FILES" (
	"FID"	NUMBER		NOT NULL,
	"USER_NO"	VARCHAR2(100)		NOT NULL,
	"ORIGIN_NAME"	VARCHAR2(255)		NOT NULL,
	"CHANGE_NAME"	VARCHAR2(255)		NOT NULL,
	"FILE_PATH"	VARCHAR2(1000)		NOT NULL,
	"UPLOAD_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"STATUS"	VARCHAR2(3)		NULL
);

CREATE TABLE "B_CATEGORY" (
	"BOARD_CODE"	VARCHAR(255)		NOT NULL,
	"BOARD_NAME"	VARCHAR(255)		NULL
);

CREATE TABLE "INQUIARY_TYPE" (
	"BOARD_TYPE"	VARCHAR2(20)		NOT NULL,
	"INQUIARY_NAME"	VARCHAR2(20)		NULL
);

CREATE TABLE "REPORT_TYPE" (
	"REPORT_TYPE"	VARCHAR2(100)		NOT NULL,
	"REPORT_NAME"	VARCHAR2(100)		NULL
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"USER_NO"
);

ALTER TABLE "SELLER" ADD CONSTRAINT "PK_SELLER" PRIMARY KEY (
	"S_USER_NO"
);

ALTER TABLE "BUYER" ADD CONSTRAINT "PK_BUYER" PRIMARY KEY (
	"B_USER_NO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY (
	"BOARD_NO"
);

ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY (
	"BOARD_NO"
);

ALTER TABLE "INQUIARY" ADD CONSTRAINT "PK_INQUIARY" PRIMARY KEY (
	"BOARD_NO"
);

ALTER TABLE "REPORT" ADD CONSTRAINT "PK_REPORT" PRIMARY KEY (
	"BOARD_NO"
);

ALTER TABLE "SERVICE" ADD CONSTRAINT "PK_SERVICE" PRIMARY KEY (
	"SERVICE_NO"
);

ALTER TABLE "LIST" ADD CONSTRAINT "PK_LIST" PRIMARY KEY (
	"SERVICE_NO"
);

ALTER TABLE "ACCOUNT" ADD CONSTRAINT "PK_ACCOUNT" PRIMARY KEY (
	"ACCOUNT"
);

ALTER TABLE "GRADE_CLASS" ADD CONSTRAINT "PK_GRADE_CLASS" PRIMARY KEY (
	"GRADE_NO"
);

ALTER TABLE "CATEGORY" ADD CONSTRAINT "PK_CATEGORY" PRIMARY KEY (
	"CATEGORY_CODE"
);

ALTER TABLE "FILES" ADD CONSTRAINT "PK_FILES" PRIMARY KEY (
	"FID",
	"BOARD_NO"
);

ALTER TABLE "SERVICE_FILES" ADD CONSTRAINT "PK_SERVICE_FILES" PRIMARY KEY (
	"FID",
	"SERVICE_NO"
);

ALTER TABLE "DAYS" ADD CONSTRAINT "PK_DAYS" PRIMARY KEY (
	"AVAILABLE_DATE",
	"SERVICE_NO"
);

ALTER TABLE "PROFILE_FILES" ADD CONSTRAINT "PK_PROFILE_FILES" PRIMARY KEY (
	"FID",
	"USER_NO"
);

ALTER TABLE "B_CATEGORY" ADD CONSTRAINT "PK_B_CATEGORY" PRIMARY KEY (
	"BOARD_CODE"
);

ALTER TABLE "INQUIARY_TYPE" ADD CONSTRAINT "PK_INQUIARY_TYPE" PRIMARY KEY (
	"BOARD_TYPE"
);

ALTER TABLE "REPORT_TYPE" ADD CONSTRAINT "PK_REPORT_TYPE" PRIMARY KEY (
	"REPORT_TYPE"
);

ALTER TABLE "SELLER" ADD CONSTRAINT "FK_MEMBER_TO_SELLER_1" FOREIGN KEY (
	"S_USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "BUYER" ADD CONSTRAINT "FK_MEMBER_TO_BUYER_1" FOREIGN KEY (
	"B_USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_BOARD_TO_REVIEW_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "INQUIARY" ADD CONSTRAINT "FK_BOARD_TO_INQUIARY_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "REPORT" ADD CONSTRAINT "FK_BOARD_TO_REPORT_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "LIST" ADD CONSTRAINT "FK_SERVICE_TO_LIST_1" FOREIGN KEY (
	"SERVICE_NO"
)
REFERENCES "SERVICE" (
	"SERVICE_NO"
);

ALTER TABLE "FILES" ADD CONSTRAINT "FK_BOARD_TO_FILES_1" FOREIGN KEY (
	"BOARD_NO"
)
REFERENCES "BOARD" (
	"BOARD_NO"
);

ALTER TABLE "SERVICE_FILES" ADD CONSTRAINT "FK_SERVICE_TO_SERVICE_FILES_1" FOREIGN KEY (
	"SERVICE_NO"
)
REFERENCES "SERVICE" (
	"SERVICE_NO"
);

ALTER TABLE "DAYS" ADD CONSTRAINT "FK_SERVICE_TO_DAYS_1" FOREIGN KEY (
	"SERVICE_NO"
)
REFERENCES "SERVICE" (
	"SERVICE_NO"
);

ALTER TABLE "PROFILE_FILES" ADD CONSTRAINT "FK_MEMBER_TO_PROFILE_FILES_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

