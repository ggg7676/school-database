CREATE TRIGGER HiringAge
ON Teacher
AFTER INSERT
AS

BEGIN
DECLARE @birthdate DATE,  @hiredate DATE, @firtsName VARCHAR(30), @lastName VARCHAR(30)

SELECT @birthdate = birthdate FROM INSERTED
SELECT @hiredate = hiredate FROM INSERTED
SELECT @firtsName = firstName FROM INSERTED
SELECT @lastName = lastName FROM INSERTED

IF ( DATEDIFF(YEAR, @birthdate, @hiredate ) < 21 )
BEGIN

UPDATE Teacher 
SET hiredate = NULL
WHERE firstName = @firtsName AND lastName = @lastName
END

END;

INSERT INTO Teacher
VALUES 
('Pavel', 'Petrov', '1990-02-02', 'M', '2008-03-06', 'pavel.petrov@abv.bg', 'Art');

SELECT * FROM Teacher;


DELETE FROM Teacher
WHERE firstName = 'Pavel';



