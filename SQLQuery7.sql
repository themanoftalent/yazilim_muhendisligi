-- Öðrenciler tablosuna veri ekleme
INSERT INTO Students (StudentID, FirstName, LastName, Email, BirthDate, Gender)
VALUES
(1, 'Ahmet', 'Turan', 'ahmet.turan@gmail.com', '2001-08-25', 'E'),
(2, 'Ayþe', 'Tufan', 'ayse.tufan@gmail.com', '2000-08-10', 'K'),
(3, 'Mustafa', 'Tulum', 'mustafa.tulum@gmail.com', '2002-03-10', 'E');


-- Öðretim elemanlarý tablosuna veri ekleme
INSERT INTO Professors (ProfessorID, FirstName, LastName, Email, Department)
VALUES
(1, 'Fatma', 'Gedik', 'fatma.gedik@example.com', 'Bilgisayar Mühendisliði'),
(2, 'Mehmet', 'Kara', 'mehmet.kara@example.com', 'Matematik'),
(3, 'Zeynep', 'Serin', 'zeynep.serin@example.com', 'Fizik');
-- Diðer öðretim elemanlarý buraya eklenir...

-- Dersler tablosuna veri ekleme
INSERT INTO Courses (CourseID, CourseName, Department, ProfessorID)
VALUES
(1, 'Veritabaný Yönetimi', 'Bilgisayar Mühendisliði', 1),
(2, 'Lineer Cebir', 'Matematik', 2),
(3, 'Elektromanyetizma', 'Fizik', 3);
-- Diðer dersler buraya eklenir...

-- Sýnýflar tablosuna veri ekleme
INSERT INTO Classes (ClassID, CourseID, Schedule, Room, Capacity)
VALUES
(1, 1, 'Pazartesi 10:00 - 12:00', 'MDBF101', 60),
(2, 2, 'Salý 12:00 - 14:00', 'MDBF202', 60),
(3, 3, 'Çarþamba 14:00 - 16:00', 'MDBF303', 60);
-- Diðer sýnýflar buraya eklenir...

-- Notlar tablosuna örnek veri ekleme
INSERT INTO Grades (GradeID, StudentID, ClassID, Grade)
VALUES
(1, 1, 1, 85.5),
(2, 2, 2, 70.0),
(3, 3, 3, 90.2);
-- Diðer notlar buraya eklenir...