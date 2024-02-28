CREATE PROCEDURE getALLMasrksOfStudent (@ID INT)
AS
SELECT S.ID, S.firstName, S.lastName, M.subjectName, M.markType
FROM Student S INNER JOIN Mark M
ON S.ID = M.studentID
WHERE M.studentID = @ID;

EXEC getALLMasrksOfStudent 1489;
EXEC getALLMasrksOfStudent 3022;
EXEC getALLMasrksOfStudent 3253;
EXEC getALLMasrksOfStudent 1002;
