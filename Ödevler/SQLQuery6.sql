-- Öðrenciler tablosu
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(40),
    LastName VARCHAR(40),
    Email VARCHAR(75),
    BirthDate DATE,
    Gender CHAR(1)
);

-- Öðretim elemanlarý tablosu
CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    FirstName VARCHAR(40),
    LastName VARCHAR(40),
    Email VARCHAR(75),
    Department VARCHAR(40)
);

-- Dersler tablosu
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(75),
    Department VARCHAR(40),
    ProfessorID INT,
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);

-- Sýnýflar tablosu
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    CourseID INT,
    Schedule VARCHAR(75),
    Room VARCHAR(40),
    Capacity INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Notlar tablosu
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    StudentID INT,
    ClassID INT,
    Grade FLOAT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);
