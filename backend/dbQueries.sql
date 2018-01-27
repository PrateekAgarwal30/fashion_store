CREATE TABLE CATEGORY(ID IDENTITY,NAME VARCHAR(50),DESCRIPTION VARCHAR(255),IMAGE_URL VARCHAR(50),IS_ACTIVE BOOLEAN,CONSTRAINT PK_CATEGORY_ID PRIMARY KEY(ID));

INSERT INTO CATEGORY(NAME,DESCRIPTION,IMAGE_URL,IS_ACTIVE)
VALUES ('Tshirts','Tshirts Description','Tshirts.PNG',true);

INSERT INTO CATEGORY(NAME,DESCRIPTION,IMAGE_URL,IS_ACTIVE)
VALUES ('Shirts','Shirts Description','Shirts.PNG',true);

INSERT INTO CATEGORY(NAME,DESCRIPTION,IMAGE_URL,IS_ACTIVE)
VALUES ('Jeans','Jeans Description','Jeans.PNG',true);

INSERT INTO CATEGORY(NAME,DESCRIPTION,IMAGE_URL,IS_ACTIVE)
VALUES ('Boxers','Boxers Description','Boxers.PNG',true);

INSERT INTO CATEGORY(NAME,DESCRIPTION,IMAGE_URL,IS_ACTIVE)
VALUES ('Hoddies','Hoddies Description','Hoddies.PNG',true);


CREATE TABLE USER_DETAILS (
ID IDENTITY,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
ROLE VARCHAR(30),
ENABLED BOOLEAN,
EMAIL VARCHAR(50),
CONTACT_NO VARCHAR(16),
PASSWORD VARCHAR(50),
CONSTRAINT PK_USER_DETAILS_ID PRIMARY KEY(ID)
);



INSERT INTO USER_DETAILS (FIRST_NAME,LAST_NAME,ROLE,ENABLED,EMAIL,CONTACT_NO,PASSWORD)
VALUES('PRATEEK','AGARWAL','ADMIN',TRUE,'PRATEEK.AGARWAL.30@GMAIL.COM','1234567890','ADMIN');
INSERT INTO USER_DETAILS (FIRST_NAME,LAST_NAME,ROLE,ENABLED,EMAIL,CONTACT_NO,PASSWORD)
VALUES('TSHIRT','SUPPLIER','SUPPLIER',TRUE,'TSHIRT.SUPPLIER.30@GMAIL.COM','6789012345','SUPPLIER');
INSERT INTO USER_DETAILS (FIRST_NAME,LAST_NAME,ROLE,ENABLED,EMAIL,CONTACT_NO,PASSWORD)
VALUES('HOODIES','SUPPLIER','SUPPLIER',TRUE,'HOODIES.SUPPLIER.30@GMAIL.COM','5432109876','SUPPLIER');



CREATE TABLE PRODUCT(
ID IDENTITY,
NAME VARCHAR(50),
BRAND VARCHAR(50),
DESCRIPTION VARCHAR(255),
CODE VARCHAR(25),
UNIT_PRICE INT,
AVAILABLE_QTY INT,
IS_ACTIVE BOOLEAN,
CATEGORY_ID INT,
SUPPLIER_ID INT,
SOLD_QTY INT DEFAULT 0,
VIEWS INT DEFAULT 0,
CONSTRAINT PK_PRODUCT_ID PRIMARY KEY(ID),
CONSTRAINT FK_PRODUCT_CATEGORY_ID FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORY(ID),
CONSTRAINT FK_PRODUCT_USER_DETAILS_ID FOREIGN KEY(SUPPLIER_ID) REFERENCES USER_DETAILS(ID)
);

INSERT INTO PRODUCT(NAME,BRAND,DESCRIPTION,CODE,UNIT_PRICE,AVAILABLE_QTY,IS_ACTIVE,CATEGORY_ID,SUPPLIER_ID,SOLD_QTY,VIEWS)
VALUES('SHIELD UNITED','WWE','WWE : SHIELD UNITED','PRD405-9121-60EE',500,54,TRUE,1,2,3,6);

INSERT INTO PRODUCT(NAME,BRAND,DESCRIPTION,CODE,UNIT_PRICE,AVAILABLE_QTY,IS_ACTIVE,CATEGORY_ID,SUPPLIER_ID,SOLD_QTY,VIEWS)
VALUES('PRINCESS DIANA','DC COMICS','WONDER WOMANC : PRINCESS DIANA','PRD72D-BEB8-A010',450,56,TRUE,5,3,10,8);

INSERT INTO PRODUCT(NAME,BRAND,DESCRIPTION,CODE,UNIT_PRICE,AVAILABLE_QTY,IS_ACTIVE,CATEGORY_ID,SUPPLIER_ID,SOLD_QTY,VIEWS)
VALUES('GRYFFINDOR SIGIL','HARRY POTTER','HARRY POTTER : GRYFFINDOR SIGIL','PRDF1E-AFAA-1A1E',500,55,TRUE,1,2,20,34);

INSERT INTO PRODUCT(NAME,BRAND,DESCRIPTION,CODE,UNIT_PRICE,AVAILABLE_QTY,IS_ACTIVE,CATEGORY_ID,SUPPLIER_ID,SOLD_QTY,VIEWS)
VALUES('CA LOGO','MARVEL','CAPTAIN AMERICA: LOGO','PRD42D-9B4A-F23F',450,34,TRUE,5,3,5,52);

INSERT INTO PRODUCT(NAME,BRAND,DESCRIPTION,CODE,UNIT_PRICE,AVAILABLE_QTY,IS_ACTIVE,CATEGORY_ID,SUPPLIER_ID,SOLD_QTY,VIEWS)
VALUES('BUGS','LOONEY TUNES','LOONEY TUNES: BUGS','PRD284-97C1-4D1C',500,0,TRUE,1,2,50,34);






