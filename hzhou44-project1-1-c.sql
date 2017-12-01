INSERT INTO Author Values(62321,'marksd.com','10 highland, decatur, GA',423323212);
INSERT INTO Author Values(23235,'nierloveme.com','1st street, Nashville, TN',689346789);
INSERT INTO Author Values(97542,'newfuture.com','701 Rb, San Monica, CA',052368429);
INSERT INTO Author Values(09723,'twistedfate.com','682 Main, Dallas, TX',234655667);
INSERT INTO Author Values(87692,'simleyaya.com','892 beach, Miami, FL',746823049);

INSERT INTO Publisher Values('A Publisher','13 Garden St.Livingston, NJ',923232847,'Apublisher.com');
INSERT INTO Publisher Values('B Publisher','42 West Arch Drive Windermere, FL',934782547,'Bpublisher.com');
INSERT INTO Publisher Values('C Publisher','85 Bay Drive New Port Richey, FL',922304984,'Cpublisher.com');
INSERT INTO Publisher Values('D Publisher','7920 Glenlake Avenue Ankeny, IA',777689092,'Dpublisher.com');
INSERT INTO Publisher Values('E Publisher','490 W. Oklahoma St.Ontario, CA',588446844,'Epublisher.com');

INSERT INTO Book Values(9375283293724261,'K and D',2012,123.24,'A Publisher');
INSERT INTO Book Values(8428928327492103,'Mystery in castle',2016,10.00,'C Publisher');
INSERT INTO Book Values(0357485942638473,'A Bird',2000,12.99,'C Publisher');
INSERT INTO Book Values(7462750326538093,'My trip',1988,14.24,'A Publisher');
INSERT INTO Book Values(3783492027839412,'Database',2002,55.20,'D Publisher');

INSERT INTO Customer Values('ken2323@hotmail.com','Ken','74 West Ivy Court Winona, MN',9232897092);
INSERT INTO Customer Values('bob009@gmail.com','Bob','7463 Williams Street Burnsville, MN',2356544345);
INSERT INTO Customer Values('calvin213@hotmail.com','Calvin','93 Cleveland Dr.Basking Ridge, NJ',3565757842);
INSERT INTO Customer Values('peter666@yahoo.com','Peter','82 Dunbar Road Milwaukee, WI',9236483142);
INSERT INTO Customer Values('god@gmail.com','God','17 Rosewood St.Salem, MA',3746319423);

INSERT INTO Shopping_cart Values(23834924,'bob009@gmail.com');
INSERT INTO Shopping_cart Values(83410244,'calvin213@hotmail.com');
INSERT INTO Shopping_cart Values(97349232,'calvin213@hotmail.com');
INSERT INTO Shopping_cart Values(54756329,'god@gmail.com');
INSERT INTO Shopping_cart Values(02139148,'bob009@gmail.com');

INSERT INTO Writtenby Values(09723,0357485942638473);
INSERT INTO Writtenby Values(87692,7462750326538093);
INSERT INTO Writtenby Values(23235,8428928327492103);
INSERT INTO Writtenby Values(62321,3783492027839412);
INSERT INTO Writtenby Values(97542,9375283293724261);

INSERT INTO Contains Values(0357485942638473,23834924,'bob009@gmail.com');
INSERT INTO Contains Values(7462750326538093,23834924,'bob009@gmail.com');
INSERT INTO Contains Values(3783492027839412,97349232,'calvin213@hotmail.com');
INSERT INTO Contains Values(0357485942638473,02139148,'bob009@gmail.com');
INSERT INTO Contains Values(3783492027839412,02139148,'bob009@gmail.com');