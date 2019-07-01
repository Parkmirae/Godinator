ALTER TABLE reply
	DROP
		CONSTRAINT FK_board_TO_reply
		CASCADE;

ALTER TABLE reply
	DROP
		CONSTRAINT FK_member_TO_reply
		CASCADE;

ALTER TABLE board
	DROP
		CONSTRAINT FK_category_TO_board
		CASCADE;

ALTER TABLE board
	DROP
		CONSTRAINT FK_member_TO_board
		CASCADE;

ALTER TABLE mentor
	DROP
		CONSTRAINT FK_member_TO_mentor
		CASCADE;

ALTER TABLE love
	DROP
		CONSTRAINT FK_board_TO_love
		CASCADE;

ALTER TABLE love
	DROP
		CONSTRAINT FK_reply_TO_love
		CASCADE;

ALTER TABLE love
	DROP
		CONSTRAINT FK_member_TO_love
		CASCADE;

ALTER TABLE user_prefer
	DROP
		CONSTRAINT FK_member_TO_user_prefer
		CASCADE;

ALTER TABLE eval_school
	DROP
		CONSTRAINT FK_member_TO_eval_school
		CASCADE;

ALTER TABLE eval_ud_log
	DROP
		CONSTRAINT FK_member_TO_eval_ud_log
		CASCADE;

ALTER TABLE eval_ud_log
	DROP
		CONSTRAINT FK_eval_school_TO_eval_ud_log
		CASCADE;

ALTER TABLE edit
	DROP
		CONSTRAINT FK_board_TO_edit
		CASCADE;

ALTER TABLE edit
	DROP
		CONSTRAINT FK_member_TO_edit
		CASCADE;

ALTER TABLE report
	DROP
		CONSTRAINT FK_board_TO_report
		CASCADE;

ALTER TABLE report
	DROP
		CONSTRAINT FK_reply_TO_report
		CASCADE;

ALTER TABLE report
	DROP
		CONSTRAINT FK_report_cate_TO_report
		CASCADE;

ALTER TABLE bbs
	DROP
		CONSTRAINT FK_board_TO_bbs
		CASCADE;

ALTER TABLE search_log
	DROP
		CONSTRAINT FK_member_TO_search_log
		CASCADE;

ALTER TABLE msg
	DROP
		CONSTRAINT FK_member_TO_msg2
		CASCADE;

ALTER TABLE msg
	DROP
		CONSTRAINT FK_member_TO_msg
		CASCADE;

ALTER TABLE category
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE u_school
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE reply
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE report_cate
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE member
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE board
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE visit
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE love
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE user_prefer
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE h_school
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE eval_school
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE edit
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE report
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE bbs
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE search_log
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE msg
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_category;

DROP INDEX PK_u_school;

DROP INDEX PK_reply;

DROP INDEX PK_report_cate;

DROP INDEX PK_member;

DROP INDEX PK_board;

DROP INDEX PK_visit;

DROP INDEX PK_love;

DROP INDEX PK_user_prefer;

DROP INDEX PK_h_school;

DROP INDEX PK_eval_school;

DROP INDEX PK_edit;

DROP INDEX PK_report;

DROP INDEX PK_bbs;

DROP INDEX PK_search_log;

DROP INDEX PK_msg;

DROP SEQUENCE ad_seq;

DROP SEQUENCE board_seq;

DROP SEQUENCE bbs_seq;

DROP SEQUENCE comment_seq;

DROP SEQUENCE like_seq;

DROP SEQUENCE report_seq;

DROP SEQUENCE edit_seq;

DROP SEQUENCE msg_seq;

CREATE SEQUENCE ad_seq
START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE board_seq
START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE bbs_seq
START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE comment_seq
START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE like_seq
START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE report_seq
START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE edit_seq
START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE SEQUENCE msg_seq
START WITH 1 INCREMENT BY 1 NOCACHE;

/* ī�װ� */
DROP TABLE category 
	CASCADE CONSTRAINTS;

/* ���б� */
DROP TABLE u_school 
	CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE reply 
	CASCADE CONSTRAINTS;

/* �Ű����� */
DROP TABLE report_cate 
	CASCADE CONSTRAINTS;

/* ȸ�� */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* �Խ��� */
DROP TABLE board 
	CASCADE CONSTRAINTS;

/* �湮��� */
DROP TABLE visit 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE mentor 
	CASCADE CONSTRAINTS;

/* ���ƿ� */
DROP TABLE love 
	CASCADE CONSTRAINTS;

/* ȸ����ȣ�� */
DROP TABLE user_prefer 
	CASCADE CONSTRAINTS;

/* ����б� */
DROP TABLE h_school 
	CASCADE CONSTRAINTS;

/* ����� */
DROP TABLE eval_school 
	CASCADE CONSTRAINTS;

/* �����α� */
DROP TABLE eval_ud_log 
	CASCADE CONSTRAINTS;

/* ÷�� */
DROP TABLE edit 
	CASCADE CONSTRAINTS;

/* �Ű� */
DROP TABLE report 
	CASCADE CONSTRAINTS;

/* �ڷ�Խ��� */
DROP TABLE bbs 
	CASCADE CONSTRAINTS;

/* �˻���� */
DROP TABLE search_log 
	CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE msg 
	CASCADE CONSTRAINTS;

/* ī�װ� */
CREATE TABLE category (
	category_no number NOT NULL, /* ī�װ���ȣ */
	catogroy_name varchar2(16) NOT NULL /* ī�װ��̸� */
);

ALTER TABLE category
	ADD
		CONSTRAINT PK_category
		PRIMARY KEY (
			category_no
		);

/* ���б� */
CREATE TABLE u_school (
	code varchar2(20) NOT NULL, /* �б��ڵ� */
	name VARCHAR(50) NOT NULL, /* �б��� */
	type varchar2(20) NOT NULL, /* �б����� */
	estType  varchar2(50), /* �������� */
	zipcode varchar2(5), /* �����ȣ */
	region varchar2(100), /* ���� */
	address varchar2(100), /* �ּ� */
	link varchar2(100), /* Ȩ�������ּ� */
	latitude varchar2(50), /* ���� */
	longitude varchar2(50), /* �浵 */
	tel varchar2(20), /* ��ȭ��ȣ */
	fax varchar2(20), /* �ѽ���ȣ */
	eval1_avg number, /* ���׸�1 ��� */
	eval2_avg number, /* ���׸�2 ��� */
	eval3_avg number, /* ���׸�3 ��� */
	eval4_avg number, /* ���׸�4 ��� */
	eval5_avg number, /* ���׸�5 ��� */
	eval_cnt number /* ���ο��� */
);

ALTER TABLE u_school
	ADD
		CONSTRAINT PK_u_school
		PRIMARY KEY (
			code
		);

/* ��� */
CREATE TABLE reply (
	comment_no number NOT NULL, /* ��۹�ȣ */
	board_no number, /* �۹�ȣ */
	c_user_id varchar2(10), /* �ۼ��ھ��̵� */
	c_postdate DATE NOT NULL, /* �ۼ��ð� */
	comment_content CLOB NOT NULL, /* ���� */
	state CHAR(1) /* ���� */
);

ALTER TABLE reply
	ADD
		CONSTRAINT PK_reply
		PRIMARY KEY (
			comment_no
		);

/* �Ű����� */
CREATE TABLE report_cate (
	code number NOT NULL, /* �Ű��ڵ� */
	subject varchar2(32) /* �Ű����� */
);

ALTER TABLE report_cate
	ADD
		CONSTRAINT PK_report_cate
		PRIMARY KEY (
			code
		);

/* ȸ�� */
CREATE TABLE member (
	user_id varchar2(10) NOT NULL, /* ȸ�����̵� */
	user_name varchar2(8) NOT NULL, /* �̸� */
	pass varchar2(10) NOT NULL, /* ��й�ȣ */
	email varchar2(50), /* �̸��� */
	email_domain varchar2(50), /* �̸��ϵ����� */
	phone1 varchar2(3), /* ��ȭ��ȣ1 */
	phone2 varchar2(4), /* ��ȭ��ȣ2 */
	phone3 varchar2(4), /* ��ȭ��ȣ3 */
	zipcode varchar2(5), /* �����ȣ */
	address varchar2(100), /* �⺻�ּ� */
	address_detail varchar2(100), /* ���ּ� */
	h_school_code varchar2(20), /* ����б��ڵ� */
	h_school_cate varchar2(50), /* ����б� ���� */
	u_school_code varchar2(20), /* ���б��ڵ� */
	u_school_cate varchar2(50), /* ���б� ���� */
	user_cate CHAR(1) NOT NULL, /* ȸ������ */
	join_date DATE, /* ������ */
	withdraw  CHAR(1) DEFAULT 'n', /* Ż�𿩺� */
	latitude varchar2(50), /* ���� */
	longitude varchar2(50) /* �浵 */
);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			user_id
		);

/* �Խ��� */
CREATE TABLE board (
	board_no number NOT NULL, /* �۹�ȣ */
	b_user_id varchar2(10) NOT NULL, /* ���̵� */
	board_category number, /* ī�װ���ȣ */
	user_name varchar2(8), /* �̸� */
	board_subject varchar2(50) NOT NULL, /* ���� */
	board_content clob NOT NULL, /* ���� */
	b_school_name varchar2(20) NOT NULL, /* �б��̸� */
	b_school_code VARCHAR(20) NOT NULL, /* �б� �ڵ�  */
	b_school_cate1 CHAR(1), /* �б� ����1 */
	b_school_cate2 VARCHAR(50), /* �б� ����2 */
	b_view_count number DEFAULT 0, /* ��ȸ�� */
	del_stus CHAR(1) DEFAULT 0, /* �������� */
	state CHAR(1), /* ���� */
	b_postdate DATE /* �ۼ��ð� */
);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			board_no
		);

/* �湮��� */
CREATE TABLE visit (
	visti_date varchar(10) NOT NULL, /* �湮���� */
	visti_cnt number DEFAULT 1 /* �湮�ڼ� */
);

ALTER TABLE visit
	ADD
		CONSTRAINT PK_visit
		PRIMARY KEY (
			visti_date
		);

/* ���� */
CREATE TABLE mentor (
	user_id varchar2(10) NOT NULL, /* ȸ�����̵� */
	mentor CHAR(1) DEFAULT 'n', /* ���� */
	aprvl_date DATE, /* �������� */
	cate CHAR(1) /* ���� */
);

/* ���ƿ� */
CREATE TABLE love (
	like_no number NOT NULL, /* �Ϸù�ȣ */
	board_no number, /* �۹�ȣ */
	user_id varchar2(10) NOT NULL, /* ȸ�����̵� */
	comment_no number, /* ��۹�ȣ */
	like_unlike CHAR(1) /* ���ƿ�Ⱦ�� */
);

ALTER TABLE love
	ADD
		CONSTRAINT PK_love
		PRIMARY KEY (
			like_no
		);

/* ȸ����ȣ�� */
CREATE TABLE user_prefer (
	user_id varchar2(10) NOT NULL, /* ȸ�����̵� */
	h_eval1 number, /* ����׸�1 */
	h_eval2 number, /* ����׸�2 */
	h_eval3 number, /* ����׸�3 */
	h_eval4 NUMBER, /* ����׸�4 */
	h_eval5 number, /* ����׸�5 */
	u_eval1 number, /* �����׸�1 */
	u_eval2 number, /* �����׸�2 */
	u_eval3 number, /* �����׸�3 */
	u_eval4 number, /* �����׸�4 */
	u_eval5 number /* �����׸�5 */
);

ALTER TABLE user_prefer
	ADD
		CONSTRAINT PK_user_prefer
		PRIMARY KEY (
			user_id
		);

/* ����б� */
CREATE TABLE h_school (
	school_code varchar2(20) NOT NULL, /* �б��ڵ� */
	school_name VARCHAR(50), /* �б��� */
	school_cate1 varchar2(20) NOT NULL, /* �б�����1 */
	school_cate2 varchar2(20) NOT NULL, /* �б�����2 */
	estbl_date DATE, /* ������ */
	zipcode varchar2(5), /* �����ȣ */
	address varchar2(100), /* ���θ��ּ� */
	address_detail varchar2(100), /* ���ּ� */
	latitude varchar2(50), /* ���� */
	longitude varchar2(50), /* �浵 */
	phone varchar2(20), /* ��ȭ��ȣ */
	fax varchar2(20), /* �ѽ���ȣ */
	home_page varchar2(100), /* Ȩ�������ּ� */
	mw_cate varchar2(20), /* ������б��� */
	edu_office varchar2(50), /* ����û */
	estType  varchar2(50), /* �������� */
	eval1_avg number, /* ���׸�1 ��� */
	eval2_avg number, /* ���׸�2 ��� */
	eval3_avg number, /* ���׸�3 ��� */
	eval4_avg number, /* ���׸�4 ��� */
	eval5_avg number, /* ���׸�5 ��� */
	eval_cnt number /* ���ο��� */
);

ALTER TABLE h_school
	ADD
		CONSTRAINT PK_h_school
		PRIMARY KEY (
			school_code
		);

/* ����� */
CREATE TABLE eval_school (
	ad_no number NOT NULL, /* �Ϸù�ȣ */
	ad_div CHAR(1), /* ����� */
	user_id varchar2(10), /* ȸ�����̵� */
	school_cate CHAR(1), /* �б����� */
	school_code varchar2(20), /* �б��ڵ� */
	advan clob, /* ���� */
	disad clob, /* ���� */
	upvote number, /* ���� */
	downvote number, /* ����� */
	state CHAR(1) /* ���� */
);

ALTER TABLE eval_school
	ADD
		CONSTRAINT PK_eval_school
		PRIMARY KEY (
			ad_no
		);

/* �����α� */
CREATE TABLE eval_ud_log (
	user_id varchar2(10), /* ȸ�����̵� */
	ad_no number, /* ������Ϸù�ȣ */
	updown CHAR(1) /* ����/����� */
);

/* ÷�� */
CREATE TABLE edit (
	edit_no number NOT NULL, /* �Ϸù�ȣ */
	board_no number, /* �۹�ȣ */
	ref number, /* �׷��ȣ */
	pseq number, /* ���۹�ȣ */
	state CHAR(1), /* �ϷῩ�� */
	mentee_id varchar2(10), /* ��Ƽ ���̵� */
	mentor_id varchar2(10) /* ���� ���̵� */
);

ALTER TABLE edit
	ADD
		CONSTRAINT PK_edit
		PRIMARY KEY (
			edit_no
		);

/* �Ű� */
CREATE TABLE report (
	report_seq number NOT NULL, /* �Ϸù�ȣ */
	code number, /* �Ű��ڵ� */
	rel_seq number, /* �ش��Ϸù�ȣ */
	report_time DATE /* �Ű��� */
);

ALTER TABLE report
	ADD
		CONSTRAINT PK_report
		PRIMARY KEY (
			report_seq
		);

/* �ڷ�Խ��� */
CREATE TABLE bbs (
	bbs_no number NOT NULL, /* �Ϸù�ȣ */
	board_no number, /* �۹�ȣ */
	save_folder varchar2(8), /* �������� */
	orginal_name varchar2(100), /* ���������̸� */
	saved_name varchar2(100), /* ���������̸� */
	file_size number, /* ����ũ�� */
	latitude number, /* ���� */
	longitude number /* �浵 */
);

ALTER TABLE bbs
	ADD
		CONSTRAINT PK_bbs
		PRIMARY KEY (
			bbs_no
		);

/* �˻���� */
CREATE TABLE search_log (
	school_code varchar2(20) NOT NULL, /* �б��ڵ� */
	user_id varchar2(10) NOT NULL, /* ȸ�����̵� */
	school_cate varchar2(50), /* �б����� */
	search_cnt number, /* �˻��� */
	search_date DATE /* �������˻��ð� */
);

ALTER TABLE search_log
	ADD
		CONSTRAINT PK_search_log
		PRIMARY KEY (
			school_code,
			user_id
		);

/* ���� */
CREATE TABLE msg (
	msg_no number NOT NULL, /* �Ϸù�ȣ */
	send_id varchar2(10), /* ������� */
	recv_id varchar2(10), /* ������� */
	send_date DATE, /* �۽��� */
	recv_date DATE, /* ������ */
	msg_title varchar2(200), /* ���� */
	msg_content clob, /* ���� */
	send_stus CHAR(1) DEFAULT 0, /* �۽��� ���� */
	recv_stus CHAR(1) DEFAULT 0 /* ������ ���� */
);

ALTER TABLE msg
	ADD
		CONSTRAINT PK_msg
		PRIMARY KEY (
			msg_no
		);

ALTER TABLE reply
	ADD
		CONSTRAINT FK_board_TO_reply
		FOREIGN KEY (
			board_no
		)
		REFERENCES board (
			board_no
		);

ALTER TABLE reply
	ADD
		CONSTRAINT FK_member_TO_reply
		FOREIGN KEY (
			c_user_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_category_TO_board
		FOREIGN KEY (
			board_category
		)
		REFERENCES category (
			category_no
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_member_TO_board
		FOREIGN KEY (
			b_user_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE mentor
	ADD
		CONSTRAINT FK_member_TO_mentor
		FOREIGN KEY (
			user_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE love
	ADD
		CONSTRAINT FK_board_TO_love
		FOREIGN KEY (
			board_no
		)
		REFERENCES board (
			board_no
		);

ALTER TABLE love
	ADD
		CONSTRAINT FK_reply_TO_love
		FOREIGN KEY (
			comment_no
		)
		REFERENCES reply (
			comment_no
		);

ALTER TABLE love
	ADD
		CONSTRAINT FK_member_TO_love
		FOREIGN KEY (
			user_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE user_prefer
	ADD
		CONSTRAINT FK_member_TO_user_prefer
		FOREIGN KEY (
			user_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE eval_school
	ADD
		CONSTRAINT FK_member_TO_eval_school
		FOREIGN KEY (
			user_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE eval_ud_log
	ADD
		CONSTRAINT FK_member_TO_eval_ud_log
		FOREIGN KEY (
			user_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE eval_ud_log
	ADD
		CONSTRAINT FK_eval_school_TO_eval_ud_log
		FOREIGN KEY (
			ad_no
		)
		REFERENCES eval_school (
			ad_no
		);

ALTER TABLE edit
	ADD
		CONSTRAINT FK_board_TO_edit
		FOREIGN KEY (
			board_no
		)
		REFERENCES board (
			board_no
		);

ALTER TABLE edit
	ADD
		CONSTRAINT FK_member_TO_edit
		FOREIGN KEY (
			mentee_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_board_TO_report
		FOREIGN KEY (
			rel_seq
		)
		REFERENCES board (
			board_no
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_reply_TO_report
		FOREIGN KEY (
			rel_seq
		)
		REFERENCES reply (
			comment_no
		);

ALTER TABLE report
	ADD
		CONSTRAINT FK_report_cate_TO_report
		FOREIGN KEY (
			code
		)
		REFERENCES report_cate (
			code
		);

ALTER TABLE bbs
	ADD
		CONSTRAINT FK_board_TO_bbs
		FOREIGN KEY (
			board_no
		)
		REFERENCES board (
			board_no
		);

ALTER TABLE search_log
	ADD
		CONSTRAINT FK_member_TO_search_log
		FOREIGN KEY (
			user_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE msg
	ADD
		CONSTRAINT FK_member_TO_msg2
		FOREIGN KEY (
			send_id
		)
		REFERENCES member (
			user_id
		);

ALTER TABLE msg
	ADD
		CONSTRAINT FK_member_TO_msg
		FOREIGN KEY (
			recv_id
		)
		REFERENCES member (
			user_id
		);