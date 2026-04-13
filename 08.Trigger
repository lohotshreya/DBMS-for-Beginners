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

//TRIGGER AFTER INSERT

DELIMITER $$

CREATE TRIGGER trg_after_insert
AFTER INSERT ON Student
FOR EACH ROW 
BEGIN
INSERT INTO Student_Log
VALUES(CONCAT("Student Inserted: ", NEW.name));
END $$

//TRIGGER AFTER UPDATE

DELIMITER ;
SELECT* FROM Student_Log;
INSERT INTO Student VALUES (123, "Raman", 57)

DELIMITER $$
CREATE TRIGGER trg_after_update
AFTER UPDATE ON Student
FOR EACH ROW
BEGIN
    INSERT INTO Student_Log
    VALUES (CONCAT("Updated Student ID ", OLD.SID, ": Changed name from ", OLD.Name, " to ", NEW.Name));
END $$

DELIMITER ;

UPDATE Student SET Name = 'Raman Kumar' WHERE SID = 123;
SELECT * FROM Student_Log;
