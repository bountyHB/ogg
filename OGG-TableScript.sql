DROP TABLE "FILM";

CREATE TABLE "FILM" (
	"F_CODE"	VARCHAR2(20)		NOT NULL,
	"F_TYPE"	VARCHAR2(20)	DEFAULT 'movie'	NOT NULL,
	"F_TITLE"	VARCHAR2(50)		NOT NULL
);

DROP TABLE "REVIEW_CMT";

CREATE TABLE "REVIEW_CMT" (
	"CMT_NO"	NUMBER		NOT NULL,
	"RV_NO"	NUMBER		NOT NULL,
	"CMT_WRITER_NO"	NUMBER		NOT NULL,
	"CMT_DATE"	DATE		NOT NULL,
	"CMT_UPDATE"	DATE		NULL,
	"CMT_CONTENT"	VARCHAR2(200)		NOT NULL,
	"CMT_STATUS"	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL,
	"CMT_LIKES"	NUMBER	DEFAULT 0	NULL,
	"CMT_GROUP"	NUMBER		NULL,
	"CMT_DEPTH"	NUMBER	DEFAULT 0	NOT NULL
);

DROP TABLE "REVIEW";

CREATE TABLE "REVIEW" (
	"RV_NO"	NUMBER		NOT NULL,
	"RV_WRITER_NO"	NUMBER		NOT NULL,
	"F_CODE"	VARCHAR2(20)		NOT NULL,
	"F_TYPE"	VARCHAR2(20)	DEFAULT 'movie'	NOT NULL,
	"RV_DATE"	DATE		NOT NULL,
	"RV_UPDATE"	DATE		NULL,
	"RV_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"RV_STATUS"	VARCHAR2(1)	DEFAULT 'Y'	NOT NULL,
	"RV_LIKES"	NUMBER	DEFAULT 0	NULL,
	"RV_READ_COUNT"	NUMBER	DEFAULT 0	NULL,
	"RV_CMT_COUNT"	NUMBER	DEFAULT 0	NULL,
	"RV_UP_STATUS"	VARCHAR2(1)	DEFAULT 'N'	NOT NULL
);

DROP TABLE "MEMBER";

CREATE TABLE "MEMBER" (
	"M_NO"	NUMBER		NULL,
	"M_ID"	VARCHAR2(500)		NULL,
	"M_PWD"	NUMBER		NULL,
	"M_NAME"	VARCHAR2(500)		NULL,
	"M_NICKNAME"	VARCHAR2(500)		NULL,
	"M_PHONENUMBER"	VARCHAR2(500)		NULL,
	"M_EMAIL"	VARCHAR2(500)		NULL,
	"M_JOINDATE"	DATE	DEFAULT SYSDATE	NULL,
	"M_EMAILAGREEMENT"	CHAR(1)	DEFAULT 'N'	NULL,
	"M_RECOMMEND"	VARCHAR2(500)		NULL,
	"M_AGREEMENT"	DATE	DEFAULT SYSDATE	NULL,
	"M_STATUS"	CHAR(1)	DEFAULT 'Y'	NULL,
	"M_AUTHORITY"	VARCHAR(500)	DEFAULT 'ROLE_USER'	NULL,
	"M_ENABLED"	NUMBER	DEFAULT 1	NULL,
	"M_ACCOUNT"	VARCHAR2(500)		NULL,
	"M_CARD_NAME"	VARCHAR2(500)		NULL,
	"M_CARD_NUM"	VARCHAR2(500)		NULL,
	"M_POINT"	NUMBER		NULL,
	"R_TIME"	NUMBER	DEFAULT 0	NULL
);

DROP TABLE "NOTICE";

CREATE TABLE "NOTICE" (
	"N_NO"	NUMBER		NOT NULL,
	"N_TITLE"	VARCHAR2(50)		NOT NULL,
	"N_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"N_READCOUNT"	NUMBER	DEFAULT 0	NULL,
	"N_STATUS"	CHAR(1)	DEFAULT 'Y'	NULL,
	"N_CREATE_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"N_PATH"	VARCHAR2(500)		NULL,
	"N_M_NO"	NUMBER		NOT NULL
);

DROP TABLE "MEMBER_OAUTH";

CREATE TABLE "MEMBER_OAUTH" (
	"M_NO"	NUMBER		NOT NULL,
	"M_PROVIDER"	VARCHAR(20)		NULL,
	"M_UNIQUE_ID"	VARCHAR2(200)		NULL,
	"M_TOKEN"	VARCHAR2(1000)		NULL
);

COMMENT ON COLUMN "MEMBER_OAUTH"."M_PROVIDER" IS 'naver, google 등 입력';

DROP TABLE "QUESTION";

CREATE TABLE "QUESTION" (
	"Q_NO"	NUMBER		NOT NULL,
	"Q_TITLE"	VARCHAR2(50)		NOT NULL,
	"Q_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"Q_STATUS"	CHAR(1)		NULL,
	"Q_ENROLLDATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"Q_M_NO"	NUMBER		NOT NULL,
	"A_NO"	NUMBER		NOT NULL
);

DROP TABLE "PARTY";

CREATE TABLE "PARTY" (
	"P_NO"	NUMBER		NOT NULL,
	"OTT_NO"	NUMBER		NOT NULL,
	"P_SHARE_ID"	VARCHAR2(30)		NULL,
	"P_SHARE_PWD"	VARCHAR2(20)		NULL,
	"P_MAX_MEMBER"	NUMBER		NULL,
	"P_CUR_MEMBER"	NUMBER		NULL,
	"P_START_DATE"	DATE		NULL,
	"P_PERIOD"	NUMBER		NULL,
	"P_END_DATE"	DATE		NULL,
	"P_COMMENT"	VARCHAR2(100)		NULL,
	"P_ENTRY_PRICE"	NUMBER		NULL,
	"P_STATUS"	VARCHAR2(1)	DEFAULT 'Y'	NULL
);

DROP TABLE "MEMBER_PARTY";

CREATE TABLE "MEMBER_PARTY" (
	"P_NO"	NUMBER		NOT NULL,
	"M_NO"	NUMBER		NOT NULL,
	"STATUS"	VARCHAR2(1)	DEFAULT 'N'	NULL,
	"START_DATE"	DATE	DEFAULT CURRENT_DATE	NULL
);

DROP TABLE "MYPAGE_PERSONAL";

CREATE TABLE "MYPAGE_PERSONAL" (
	"M_ID"	VARCHAR2(50)		NOT NULL,
	"P_NO"	NUMBER		NOT NULL,
	"CON_CODE"	NUMBER		NULL
);

DROP TABLE "MYPAGE_PAYMENT";

CREATE TABLE "MYPAGE_PAYMENT" (
	"M_ID"	VARCHAR2(50)		NOT NULL
);

DROP TABLE "MYPAGE_BOARD";

CREATE TABLE "MYPAGE_BOARD" (
	"M_ID"	VARCHAR2(50)		NOT NULL,
	"RV_NO"	NUMBER		NOT NULL,
	"FR_NO"	NUMBER		NOT NULL,
	"Q_NO"	NUMBER		NOT NULL
);

DROP TABLE "COMMENT";

CREATE TABLE "COMMENT" (
	"CR_NO"	NUMBER		NOT NULL,
	"C_NO"	NUMBER		NOT NULL,
	"CR_WRITEDATE"	DATE		NULL,
	"CR_CONTENT"	VARCHAR2(2000)		NULL,
	"CR_STATUS"	VARCHAR2(1)		NULL,
	"CR_WRITERNO"	NUMBER		NULL,
	"CR_MODIFYDATE"	DATE		NULL,
	"CR_COMMUNITYNO"	NUMBER		NULL
);

DROP TABLE "COMMUNITY_POSTS";

CREATE TABLE "COMMUNITY_POSTS" (
	"C_NO"	NUMBER		NOT NULL,
	"C_TITLE"	VARCHAR2(200)		NULL,
	"C_CONTENT"	VARCHAR2(1000)		NULL,
	"C_FIEL"	VARCHAR2(500)		NULL,
	"C_WIRTEDATE"	DATE		NULL,
	"C_VIEWCOUNT"	NUMBER		NULL,
	"C_MODIFYDATE"	DATE		NULL,
	"C_STATUS"	VARCHAR2(1)		NULL,
	"C_FILERENAME"	VARCHAR2(500)		NULL
);

DROP TABLE "OUT";

CREATE TABLE "OUT" (
	"M_ID"	VARCHAR2(50)		NOT NULL,
	"M_PWD"	NUMBER		NOT NULL,
	"M_NAME"	VARCHAR2(20)		NOT NULL,
	"M_NICKNAME"	VARCHAR2(100)		NOT NULL,
	"M_BIRTH"	DATE		NOT NULL,
	"M_GENDER"	CHAR(1)		NOT NULL,
	"M_ADDRESS"	VARCHAR2(100)		NOT NULL,
	"M_PHONENUMBER"	NUMBER		NOT NULL,
	"M_EMAIL"	VARCHAR2(200)		NOT NULL,
	"M_JOINDATE"	DATE	DEFAULT SYSDATE	NULL,
	"M_INTRO"	VARCHAR2(1000)		NULL,
	"M_IMAGE"	VARCHAR2(500)		NULL,
	"M_STATUS"	CHAR(1)		NULL,
	"M_AUTHORITY"	CHAR(1)	DEFAULT C	NULL,
	"M_ACCOUNT"	VARCHAR2(30)		NULL,
	"M_CARD_NAME"	VARCHAR2(20)		NULL,
	"M_CARD_NUM"	VARCHAR2(20)		NULL,
	"M_POINT"	NUMBER		NULL,
	"O_DATE"	DATE		NULL
);

DROP TABLE "OTT_INFO";

CREATE TABLE "OTT_INFO" (
	"OTT_NO"	NUMBER		NOT NULL,
	"OTT_NAME"	VARCHAR2(30)		NULL,
	"OTT_THUMB"	VARCHAR2(300)		NULL,
	"OTT_CLASS"	VARCHAR2(20)		NULL,
	"OTT_MAX_MEMBER"	NUMBER		NULL,
	"OTT_STATUS"	VARCHARR(20)		NULL,
	"PLAN_NAME"	VARCHARR2(100)		NULL,
	"PLAN_PRICE"	VARCHAR2(20)		NULL
);

DROP TABLE "ANSWER";

CREATE TABLE "ANSWER" (
	"A_NO"	NUMBER		NOT NULL,
	"A_TITLE"	VARCHAR2(50)		NOT NULL,
	"A_CONTENT"	VARCHER2(2000)		NOT NULL,
	"A_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"A_M_NO"	NUMBER		NOT NULL,
	"Q_NO"	NUMBER		NOT NULL
);

DROP TABLE "REVIEW_LIKES";

CREATE TABLE "REVIEW_LIKES" (
	"L_NO"	NUMBER		NOT NULL,
	"M_NO"	NUMBER		NOT NULL,
	"RV_NO"	NUMBER		NULL,
	"CMT_NO"	NUMBER		NULL,
	"F_CODE"	VARCHAR2(20)		NULL,
	"F_TYPE"	VARCHAR2(20)	DEFAULT 'movie'	NULL,
	"F_LIKES"	NUMBER	DEFAULT 0	NULL,
	"F_STAR"	NUMBER	DEFAULT 0	NULL,
	"L_DATE"	DATE		NULL,
	"L_UPDATE"	DATE		NULL,
	"L_TYPE"	VARCHAR2(20)		NOT NULL
);

DROP TABLE "POINT";

CREATE TABLE "POINT" (
	"PO_NO"	NUMBER		NOT NULL,
	"PO_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"PO_STATUS"	VARCHAR2(5)	DEFAULT 'PLUS'	NULL,
	"PO_POINT"	NUMBER		NULL,
	"M_NO"	NUMBER		NULL
);

DROP TABLE "PAY";

CREATE TABLE "PAY" (
	"PAY_NO"	NUMBER		NOT NULL,
	"PAY_DATE"	VARCHAR2(30)	DEFAULT SYSDATE	NULL,
	"AMOUNT"	NUMBER		NULL,
	"M_NO"	NUMBER		NULL
);

ALTER TABLE "FILM" ADD CONSTRAINT "PK_FILM" PRIMARY KEY (
	"F_CODE",
	"F_TYPE"
);

ALTER TABLE "REVIEW_CMT" ADD CONSTRAINT "PK_REVIEW_CMT" PRIMARY KEY (
	"CMT_NO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY (
	"RV_NO"
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"M_NO"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY (
	"N_NO"
);

ALTER TABLE "MEMBER_OAUTH" ADD CONSTRAINT "PK_MEMBER_OAUTH" PRIMARY KEY (
	"M_NO"
);

ALTER TABLE "QUESTION" ADD CONSTRAINT "PK_QUESTION" PRIMARY KEY (
	"Q_NO"
);

ALTER TABLE "PARTY" ADD CONSTRAINT "PK_PARTY" PRIMARY KEY (
	"P_NO"
);

ALTER TABLE "MEMBER_PARTY" ADD CONSTRAINT "PK_MEMBER_PARTY" PRIMARY KEY (
	"P_NO",
	"M_NO"
);

ALTER TABLE "MYPAGE_PERSONAL" ADD CONSTRAINT "PK_MYPAGE_PERSONAL" PRIMARY KEY (
	"M_ID"
);

ALTER TABLE "MYPAGE_PAYMENT" ADD CONSTRAINT "PK_MYPAGE_PAYMENT" PRIMARY KEY (
	"M_ID"
);

ALTER TABLE "MYPAGE_BOARD" ADD CONSTRAINT "PK_MYPAGE_BOARD" PRIMARY KEY (
	"M_ID"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "PK_COMMENT" PRIMARY KEY (
	"CR_NO",
	"C_NO"
);

ALTER TABLE "COMMUNITY_POSTS" ADD CONSTRAINT "PK_COMMUNITY_POSTS" PRIMARY KEY (
	"C_NO"
);

ALTER TABLE "OTT_INFO" ADD CONSTRAINT "PK_OTT_INFO" PRIMARY KEY (
	"OTT_NO"
);

ALTER TABLE "ANSWER" ADD CONSTRAINT "PK_ANSWER" PRIMARY KEY (
	"A_NO"
);

ALTER TABLE "REVIEW_LIKES" ADD CONSTRAINT "PK_REVIEW_LIKES" PRIMARY KEY (
	"L_NO"
);

ALTER TABLE "POINT" ADD CONSTRAINT "PK_POINT" PRIMARY KEY (
	"PO_NO"
);

ALTER TABLE "PAY" ADD CONSTRAINT "PK_PAY" PRIMARY KEY (
	"PAY_NO"
);

ALTER TABLE "REVIEW_CMT" ADD CONSTRAINT "FK_REVIEW_TO_REVIEW_CMT_1" FOREIGN KEY (
	"RV_NO"
)
REFERENCES "REVIEW" (
	"RV_NO"
);

ALTER TABLE "REVIEW_CMT" ADD CONSTRAINT "FK_MEMBER_TO_REVIEW_CMT_1" FOREIGN KEY (
	"CMT_WRITER_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_MEMBER_TO_REVIEW_1" FOREIGN KEY (
	"RV_WRITER_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_FILM_TO_REVIEW_1" FOREIGN KEY (
	"F_CODE"
)
REFERENCES "FILM" (
	"F_CODE"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_FILM_TO_REVIEW_2" FOREIGN KEY (
	"F_TYPE"
)
REFERENCES "FILM" (
	"F_TYPE"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_MEMBER_TO_NOTICE_1" FOREIGN KEY (
	"N_M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "MEMBER_OAUTH" ADD CONSTRAINT "FK_MEMBER_TO_MEMBER_OAUTH_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "QUESTION" ADD CONSTRAINT "FK_MEMBER_TO_QUESTION_1" FOREIGN KEY (
	"Q_M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "QUESTION" ADD CONSTRAINT "FK_ANSWER_TO_QUESTION_1" FOREIGN KEY (
	"A_NO"
)
REFERENCES "ANSWER" (
	"A_NO"
);

ALTER TABLE "PARTY" ADD CONSTRAINT "FK_OTT_INFO_TO_PARTY_1" FOREIGN KEY (
	"OTT_NO"
)
REFERENCES "OTT_INFO" (
	"OTT_NO"
);

ALTER TABLE "MEMBER_PARTY" ADD CONSTRAINT "FK_PARTY_TO_MEMBER_PARTY_1" FOREIGN KEY (
	"P_NO"
)
REFERENCES "PARTY" (
	"P_NO"
);

ALTER TABLE "MEMBER_PARTY" ADD CONSTRAINT "FK_MEMBER_TO_MEMBER_PARTY_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "COMMENT" ADD CONSTRAINT "FK_COMMUNITY_POSTS_TO_COMMENT_1" FOREIGN KEY (
	"C_NO"
)
REFERENCES "COMMUNITY_POSTS" (
	"C_NO"
);

ALTER TABLE "ANSWER" ADD CONSTRAINT "FK_MEMBER_TO_ANSWER_1" FOREIGN KEY (
	"A_M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "ANSWER" ADD CONSTRAINT "FK_QUESTION_TO_ANSWER_1" FOREIGN KEY (
	"Q_NO"
)
REFERENCES "QUESTION" (
	"Q_NO"
);

ALTER TABLE "REVIEW_LIKES" ADD CONSTRAINT "FK_MEMBER_TO_REVIEW_LIKES_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "REVIEW_LIKES" ADD CONSTRAINT "FK_REVIEW_TO_REVIEW_LIKES_1" FOREIGN KEY (
	"RV_NO"
)
REFERENCES "REVIEW" (
	"RV_NO"
);

ALTER TABLE "REVIEW_LIKES" ADD CONSTRAINT "FK_REVIEW_CMT_TO_REVIEW_LIKES_1" FOREIGN KEY (
	"CMT_NO"
)
REFERENCES "REVIEW_CMT" (
	"CMT_NO"
);

ALTER TABLE "REVIEW_LIKES" ADD CONSTRAINT "FK_FILM_TO_REVIEW_LIKES_1" FOREIGN KEY (
	"F_CODE"
)
REFERENCES "FILM" (
	"F_CODE"
);

ALTER TABLE "REVIEW_LIKES" ADD CONSTRAINT "FK_FILM_TO_REVIEW_LIKES_2" FOREIGN KEY (
	"F_TYPE"
)
REFERENCES "FILM" (
	"F_TYPE"
);

ALTER TABLE "POINT" ADD CONSTRAINT "FK_MEMBER_TO_POINT_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

ALTER TABLE "PAY" ADD CONSTRAINT "FK_MEMBER_TO_PAY_1" FOREIGN KEY (
	"M_NO"
)
REFERENCES "MEMBER" (
	"M_NO"
);

