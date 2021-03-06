DROP DATABASE onlineBookstoreDB;
CREATE DATABASE onlineBookstoreDB;
USE onlineBookstoreDB;
CREATE TABLE Author
(
aID INT NOT NULL,
aURL CHAR(30),
aAddress CHAR(30) NOT NULL,
aPhone INT NOT NULL,
CONSTRAINT ArthorPK PRIMARY KEY(aID)
);


CREATE TABLE Publisher
(
pname CHAR(20) NOT NULL,
pAddress CHAR(30) NOT NULL,
pPhone INT NOT NULL,
pURL CHAR(30),
CONSTRAINT pPK PRIMARY KEY(pname)
);

CREATE TABLE Book
(
ISBN INT NOT NULL,
title CHAR(20) NOT NULL,
Yr INT,
Price DECIMAL(5,2) NOT NULL,
Publishername CHAR(20) NOT NULL,
CONSTRAINT bookPK PRIMARY KEY(ISBN),
CONSTRAINT bookPubFK FOREIGN KEY(Publishername) REFERENCES Publisher(pname)
);

CREATE TABLE Customer
(
email CHAR(20) NOT NULL,
cname CHAR(20) NOT NULL,
cAddress CHAR(30) NOT NULL,
cPhone INT NOT NULL,
CONSTRAINT cPK PRIMARY KEY(email),
CONSTRAINT cNameSK UNIQUE(cname)
);

CREATE TABLE Shopping_cart
(
cID INT NOT NULL,
cemail CHAR(20) NOT NULL,
CONSTRAINT scPK PRIMARY KEY(cID,cemail),
CONSTRAINT scCus FOREIGN KEY(cemail) REFERENCES Customer(email)
);

CREATE TABLE Writtenby
(
AuthorID INT NOT NULL,
bISBN INT NOT NULL,
CONSTRAINT wbPK PRIMARY KEY(AuthorID,bISBN),
CONSTRAINT wbAIDFK FOREIGN KEY(AuthorID) REFERENCES Author(aID),
CONSTRAINT wbBISBNFK FOREIGN KEY(bISBN) REFERENCES Book(ISBN)
);

CREATE TABLE Contains
(
bISBN INT NOT NULL,
scCID INT NOT NULL,
cusEmail CHAR(20) NOT NULL,
CONSTRAINT conPK PRIMARY KEY(bISBN, scCID, cusEmail),
CONSTRAINT conBISBNFK FOREIGN KEY(bISBN) REFERENCES Book(ISBN),
CONSTRAINT conSCCIDFK FOREIGN KEY(scCID) REFERENCES Shopping_cart(cID),
CONSTRAINT conCusEmFK FOREIGN KEY(cusEmail) REFERENCES Customer(email)
);
