CREATE DATABASE Universitycoursesystem;
USE Universitycoursesystem;

CREATE TABLE Students
(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(100) NOT NULL, Surname NVARCHAR(100) NOT NULL,
Email NVARCHAR(100) NOT NULL,
BirthDate DATETIME
);


CREATE TABLE Courses
(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(100) NOT NULL,
Credit INT NOT NULL, Price DECIMAL(10,2) NOT NULL
);


CREATE TABLE Enrollments
(
Id INT PRIMARY KEY IDENTITY(1,1),
StudentId INT NOT NULL,
CourseId INT NOT NULL,
EnrollmentDate DATETIME NOT NULL,
FOREIGN KEY (StudentId) REFERENCES Students(Id),
FOREIGN KEY (CourseId) REFERENCES Courses(Id)
);


INSERT INTO Students (Name, Surname, Email, BirthDate) 
VALUES 
('Ali', 'Mammadov', 'ali@gmail.com', '2002-05-10'), 
('Aysel', 'Aliyeva', 'aysel@gmail.com', '2001-08-15'), 
('Murad', 'Hasanov', 'murad@gmail.com', '2003-02-20'), 
('Leyla', 'Huseynova', 'leyla@gmail.com', '2002-11-05'), 
('Muhammad', 'Rahimov', 'kamran@gmail.com', '2001-06-18');


INSERT INTO Courses (Name, Credit, Price) 
VALUES 
('Programming', 6, 120), 
('Database', 5, 100), 
('English', 3, 80), 
('Mathematics', 4, 90), 
('Computer Networks', 5, 110);


INSERT INTO Enrollments (StudentId, CourseId, EnrollmentDate) 
VALUES 
(1, 1, '2026-09-01'), 
(1, 2, '2026-09-02'), 
(2, 1, '2026-09-03'), 
(2, 3, '2026-09-04'), 
(3, 2, '2026-09-05'), 
(3, 4, '2026-09-06'), 
(4, 1, '2026-09-07'), 
(4, 5, '2026-09-08'), 
(5, 3, '2026-09-08');
