DESCRIBE COUNTRIES;

CREATE TABLE ADDRESS(id NUMBER CONSTRAINT ad_id_un UNIQUE,COUNTRY VARCHAR2(40),CITY VARCHAR2(40));
SELECT * FROM ADDRESS;

CREATE TABLE FRIENDS(ID INTEGER, NAME VARCHAR2(15),EMAIL VARCHAR2(25),ADDRESS_ID NUMBER CONSTRAINT ad_aid_fk REFERENCES ADDRESS(ID) ON DELETE SET NULL,
BIRTHDAY DATE,
CONSTRAINT ad_name_ch CHECK (LENGTH(NAME)>3));

SELECT * FROM FRIENDS;

ALTER TABLE FRIENDS ADD PRIMARY KEY(ID);
ALTER TABLE FRIENDS DROP PRIMARY KEY;

CREATE UNIQUE INDEX add_id_index ON FRIENDS(ID);

ALTER TABLE FRIENDS ADD  CONSTRAINT  fr_id_pk PRIMARY KEY (ID);

CREATE INDEX fr_email_in ON FRIENDS(EMAIL);

ALTER TABLE FRIENDS MODIFY(EMAIL CONSTRAINT fr_email_nn NOT NULL);

DROP TABLE FRIENDS;
DROP TABLE ADDRESS;