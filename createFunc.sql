-- table function --
CREATE FUNCTION AllSubjectTeachers (@subject VARCHAR(30))
RETURNS TABLE 
AS
RETURN  
(
SELECT firstName, lastName, subjectName
FROM Teacher
WHERE subjectName = @subject
);

INSERT INTO Teacher
VALUES
('Atanas', 'Ivanov', '1965-01-12', 'M', '1990-04-25', 'atanas.ivanov@abv.bg', 'History'),
('Gabriela','Kirilova', '1979-10-03', 'F','2001-04-12', 'gariela.kirilova@abv.bg', 'Literature'),
('Boyan', 'Dimitrov', '1974-06-06', 'M','1998-03-04', 'boyan.dimitrov@abv.bg', 'Geography'),
('Ivelina','Petrova', '1980-03-15', 'F','2002-12-10', 'ivelina.petrova@abv.bg', 'Art'),
('Dimitar', 'Georgiev', '1966-07-21', 'M', '1991-10-05', 'dimitar.georgiev@abv.bg', 'History'),
('Ivelina','Kirilova', '1981-10-04', 'F','2008-06-12', 'ivelina.kirilova@abv.bg', 'Literature');

SELECT * FROM AllSubjectTeachers ('History');
SELECT * FROM AllSubjectTeachers ('Literature');

-- scalar function --
CREATE FUNCTION AverageMark (@studentID INT, @subject VARCHAR(30))
RETURNS DEC(3,2)
AS
BEGIN
RETURN 
(
SELECT SUM(markType) * 1.00 / COUNT(markType)
FROM Mark
WHERE Mark.studentID = @studentID AND Mark.subjectName = @subject
)
END;

SELECT dbo.AverageMark (5426, 'History');
SELECT dbo.AverageMark(3253, 'Art');
SELECT dbo.AverageMark(3253, 'Math');

