
USE student;
DROP TABLE personal ;
CREATE TABLE personal(
 ID INT NOT NULL PRIMARY KEY,
 NAME VARCHAR(50) UNIQUE NOT NULL,
 AGE INT NOT NULL CHECK( AGE >= 18),
 GENDER VARCHAR(1) NOT NULL,
 CITY VARCHAR(15)  DEFAULT'PAKISTAN'
 );
 
 INSERT INTO personal(ID,NAME,AGE,GENDER,CITY)
 VALUES
 (1,'Amna',19,'F','PAKISTAN'),
 (2, 'Ali', 22, 'M', 'Karachi'),
(3, 'Sara', 25, 'F', 'Islamabad'),
(4, 'Ahmed', 28, 'M', 'Multan'),
(5, 'Hina', 23, 'F', 'Faisalabad'),
(6, 'Usman', 30, 'M', 'Rawalpindi'),
(7, 'Ayesha', 21, 'F', 'Quetta'),
(8, 'Bilal', 24, 'M', 'Peshawar'),
(9, 'Nida', 27, 'F', 'Sialkot'),
(10, 'Hamza', 26, 'M', 'Hyderabad');