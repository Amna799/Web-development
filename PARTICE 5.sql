-- Create database
CREATE DATABASE student_records;

DROP DATABASE student_records;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS CITY;


USE student_records;

-- CITY table
CREATE TABLE CITY( 
    CID INT NOT NULL AUTO_INCREMENT,
    CITY_NAME VARCHAR(50) NOT NULL,
    PRIMARY KEY (CID)
);

-- Insert cities
INSERT INTO CITY (CITY_NAME) VALUES
('Lahore'),
('Karachi'),
('Islamabad'),
('Multan'),
('Peshawar');

-- Student table
CREATE TABLE student(
    ID INT NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(50) NOT NULL UNIQUE,
    AGE INT NOT NULL,
    CID INT NOT NULL,
    PRIMARY KEY(ID),
    FOREIGN KEY (CID) REFERENCES CITY(CID)
);

-- Insert students
INSERT INTO student (NAME, AGE, CID) VALUES
('Ahmed Khan', 20, 1),     -- Lahore
('Amna Ashraf', 22, 2),    -- Karachi
('Sara Ali', 19, 1),       -- Lahore
('Bilal Hussain', 21, 3),  -- Islamabad
('Hina Malik', 23, 2),     -- Karachi
('Usman Shah', 20, 4),     -- Multan
('Zara Qureshi', 22, 5),   -- Peshawar
('Ali Raza', 19, 1),       -- Lahore
('Fiza Khan', 21, 3),      -- Islamabad
('Omar Saeed', 20, 2);     -- Karachi


SELECT * FROM student INNER JOIN city
ON student.CID = city.cid;

SELECT * FROM student s INNER JOIN city c
ON s.CID = c.cid;

SELECT s.ID,s.NAME,s.AGE,c.CITY_NAME 
FROM student s 
INNER JOIN city c
ON s.CID = c.cid;

SELECT * FROM student left JOIN city
ON student.CID = city.cid;

SELECT * FROM student right JOIN city
ON student.CID = city.cid;

select CID from student

Group by CID;