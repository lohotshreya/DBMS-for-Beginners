# 🎓 College Database Management System

## 📌 Overview

This project is a simple relational database built using SQL to manage students and their course enrollments.

It demonstrates core database concepts like:

* Table creation
* Primary and foreign keys
* Relationships (one-to-many & many-to-many)
* JOIN operations

---

## 🧠 Database Structure

The database consists of the following tables:

### 👩‍🎓 Students

Stores student information.

* StudentID (Primary Key)
* FirstName
* RollNo
* Marks

### 📚 Courses

Stores available courses.

* CourseID (Primary Key)
* CourseName

### 🔗 Student_Course

A junction table to handle the many-to-many relationship between students and courses.

* StudentID (Foreign Key)
* CourseID (Foreign Key)

---

## 🔗 Relationships

* One student can enroll in multiple courses
* One course can have multiple students
* This is implemented using a junction table (**Student_Course**)

---

## 💻 Sample Query (JOIN Operation)

```sql
SELECT Students.FirstName, Courses.CourseName
FROM Students
INNER JOIN Student_Course 
ON Students.StudentID = Student_Course.StudentID
INNER JOIN Courses 
ON Student_Course.CourseID = Courses.CourseID;
```

---

## 📊 Concepts Used

* Primary Keys
* Foreign Keys
* INNER JOIN
* Relational Schema Design
* Basic Normalization

---

## 🚀 Future Improvements

* Add marks per course
* Implement GPA calculation
* Add Faculty table and relationships
* Build a frontend (optional)

---

## 👩‍💻 Author

Shreya
BTech Data Science Student

---

## ⭐ Note

This project is designed to help you learn and practice relational database concepts using MySQL.
