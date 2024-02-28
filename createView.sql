 -- updatable view -- 
CREATE VIEW Students_11C
AS
SELECT ID, firstName, lastName
FROM Student 
WHERE classAcademicLevel = 11 AND classUnit = 'C'
WITH CHECK OPTION;


INSERT INTO Student 
VALUES 
(1489, 'Ivan', 'Petrov', '2004-04-25', 'M', 'Pobeda 12 str.', '0874561236', 'ivan.petrov@bv.bg', 10, 'A'),
(3022, 'Maria', 'Todorova', '2005-02-10', 'F', 'Bulgaria 15 boul.', '0894567254','maria.todorova@bv.bg', 11, 'C'),
(5426, 'Elena' , 'Milenova', '2005-11-09', 'F', 'Iskar 2 str.', '0847563257', 'elena.milenova@abv.bg', 11, 'C'),
(3253, 'Marian', 'Bonev', '2005-07-02', 'M', 'Vasil Aprilov 4 str.', '0894567133', 'marian.bonev@abv.bg', 11, 'C'),
(1002, 'Asen', 'Georgiev', '2005-01-20', 'M', 'Pobeda 5 str.', '0874563221', 'asen.georgiev@abv.bg', 12, 'D');

SELECT * FROM Students_11C;

UPDATE Students_11C
SET ID = 1234
WHERE firstName = 'Maria';


-- read-only view -- 
CREATE VIEW AllMarks_11C
AS
SELECT S.ID, S.firstName, S.lastName, M.subjectName, M.markType
FROM Student S inner join Mark M ON S.ID = M.studentID 
WHERE classAcademicLevel = 11 AND classUnit = 'C';

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

SELECT * FROM AllMarks_11C;

