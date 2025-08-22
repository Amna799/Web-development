CREATE DATABASE student;
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
 SELECT * FROM personal;
 SELECT NAME FROM personal;
 
 SELECT NAME AS STUDENT_NAME FROM personal;
 
 SELECT * FROM personal
 WHERE GENDER = 'F';
 
 SELECT * FROM personal
 WHERE AGE >20 ;
 
 SELECT * FROM personal
 WHERE CITY != 'karachi';
 
  SELECT * FROM personal
 WHERE AGE >20 and AGE > 25;
 
   SELECT * FROM personal
 WHERE AGE <=20 OR AGE <= 25;
 
    SELECT * FROM personal
 WHERE AGE >= 20  AND AGE <= 28 AND GENDER = 'M';
 
  
    SELECT * FROM personal
 WHERE AGE NOT IN (19,25);
 
  SELECT * FROM personal
 WHERE AGE IN (19,25);
 
   SELECT * FROM personal
 WHERE AGE BETWEEN 19 AND 22;
 
  SELECT * FROM personal
 WHERE AGE NOT BETWEEN 19 AND 22;
 
  SELECT * FROM personal
 WHERE NAME LIKE 'A%';
 
  SELECT * FROM personal
 WHERE NAME LIKE '%A';
 
  SELECT * FROM personal
 WHERE NAME LIKE '%-MN';
 
  SELECT * FROM personal
 WHERE NAME LIKE '__A';
 
  SELECT * FROM personal
 WHERE NAME NOT  LIKE '%A';
 
   SELECT * FROM personal
 WHERE NAME REGEXP 'AM';
 
 
   SELECT * FROM personal
 ORDER BY NAME ASC;
 
   SELECT DISTINCT CITY
   FROM personal;

   SELECT * FROM personal
   WHERE AGE IS NULL;
   
      SELECT * FROM personal
   WHERE AGE IS NOT NULL;
   
SELECT * FROM personal
LIMIT 2,5;  

SELECT COUNT(ID)
FROM personal ;

