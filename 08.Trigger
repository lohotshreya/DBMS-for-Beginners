Create Database Trig;
USE Trig;
CREATE TABLE Student(
SID INT PRIMARY KEY,
Name VARCHAR(50),
Marks INT
);

CREATE TABLE Student_Log(
Message VARCHAR(100)
);

DELIMITER $$

CREATE TRIGGER trg_after_insert
AFTER INSERT ON Student
FOR EACH ROW 
BEGIN
INSERT INTO Student_Log
VALUES(CONCAT("Student Inserted: ", NEW.name));
END $$

DELIMITER ;
SELECT* FROM Student_Log;
INSERT INTO Student VALUES (123, "Raman", 57)
