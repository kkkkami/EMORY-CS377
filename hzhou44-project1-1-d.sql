USE onlineBookstoreDB;
SELECT cname, title, pname, pAddress
FROM Contains, Customer, Publisher, Book
WHERE cusEmail = email AND bISBN = ISBN AND Publishername = pname;
