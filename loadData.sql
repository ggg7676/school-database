INSERT INTO Class
VALUES 
(10, 'A'), (10, 'B'), (10, 'C'), (10, 'D'),
(11, 'A'), (11, 'B'), (11, 'C'), (11, 'D'),
(12, 'A'), (12, 'B'), (12, 'C'), (12, 'D');

INSERT INTO schoolSubject
VALUES 
('Literature'), ('Math'), ('Biology'),
('Chemistry'), ('Physics'), ('English'),
('Philosophy'), ('History'), ('Geography'),
('Music'), ('Art'), ('Physical education');

INSERT INTO Student 
VALUES 
(1489, 'Ivan', 'Petrov', '2004-04-25', 'M', 'Pobeda 12 str.', '0874561236', 'ivan.petrov@bv.bg', 10, 'A'),
(3022, 'Maria', 'Todorova', '2005-02-10', 'F', 'Bulgaria 15 boul.', '0894567254','maria.todorova@bv.bg', 11, 'C'),
(5426, 'Elena' , 'Milenova', '2005-11-09', 'F', 'Iskar 2 str.', '0847563257', 'elena.milenova@abv.bg', 11, 'C'),
(3253, 'Marian', 'Bonev', '2005-07-02', 'M', 'Vasil Aprilov 4 str.', '0894567133', 'marian.bonev@abv.bg', 11, 'C');

INSERT INTO Teacher
VALUES
('Atanas', 'Ivanov', '1965-01-12', 'M', '1990-04-25', 'atanas.ivanov@abv.bg', 'History'),
('Gabriela','Kirilova', '1979-10-03', 'F','2010-04-12', 'gariela.kirilova@abv.bg', 'Literature'),
('Boyan', 'Dimitrov', '1974-06-06', 'M','1998-03-04', 'boyan.dimitrov@abv.bg', 'Geography'),
('Ivelina','Petrova', '1980-03-15', 'F','2002-12-10', 'ivelina.petrova@abv.bg', 'Art'),
('Dimitar', 'Georgiev', '1966-07-21', 'M', '1991-10-05', 'dimitar.georgiev@abv.bg', 'History'),
('Ivelina','Kirilova', '1981-10-04', 'F','2011-06-12', 'ivelina.kirilova@abv.bg', 'Literature');


INSERT INTO Tutors
VALUES
('Atanas', 'Ivanov', 10, 'B'),
('Gabriela','Kirilova',12, 'C'),
('Boyan', 'Dimitrov', 10, 'C'),
('Ivelina','Petrova', 11, 'A'),
('Dimitar', 'Georgiev', 10, 'A'),
('Ivelina','Kirilova', 11, 'B');


INSERT INTO Mark
VALUES 
(1489, 'Geography', 5),
(3022, 'Art', 6),
(3253, 'Math', 4),
(5426, 'History', 6),
(5426, 'History', 5),
(3022, 'Biology', 6),
(3253, 'Art', 6),
(3253, 'Math', 6),
(3253, 'Art', 6),
(1002, 'Literature', 4),
(5426, 'Physics', 5),
(3022, 'Geography', 6),
(5426, 'Chemistry', 6);

select * from Student;
select * from Class;
select * from schoolSubject;
select * from Teacher;
select * from Mark;
select * from Tutors;




delete from Student;
delete from Class;
delete from schoolSubject;
delete from Teacher;
delete from Mark;
delete from Tutors;

