CREATE TABLE schoolSubject
(
sName VARCHAR(30) NOT NULL PRIMARY KEY
);

CREATE TABLE Class
(
academicLevel TINYINT NOT NULL,
unit CHAR(1) NOT NULL,
PRIMARY KEY (academicLevel, unit)
);

CREATE TABLE Student 
(
ID INT NOT NULL PRIMARY KEY,
firstName VARCHAR(30),
lastName VARCHAR(30),
birthdate DATE,
gender CHAR(1) CHECK (gender in ('M', 'F')), 
addr VARCHAR(200),
phoneNumber CHAR(10),
email VARCHAR(30),
classAcademicLevel TINYINT NOT NULL,
classUnit CHAR(1) NOT NULL,
FOREIGN KEY (classAcademicLevel, classUnit)
REFERENCES Class(academicLevel, unit)
ON UPDATE CASCADE
ON DELETE CASCADE
);


CREATE TABLE Teacher
(
firstName VARCHAR(30) NOT NULL,
lastName VARCHAR(30) NOT NULL,
birthdate DATE,
gender CHAR(1) CHECK (gender in ('M', 'F')),
hiredate DATE,
email VARCHAR(30),
subjectName VARCHAR(30) 
REFERENCES schoolSubject(sName),
PRIMARY KEY (firstName, lastName),
);


CREATE TABLE Mark
(
studentID INT NOT NULL
REFERENCES Student(ID)
ON UPDATE CASCADE
ON DELETE CASCADE,
subjectName VARCHAR(30)
REFERENCES schoolSubject(sName),
markType TINYINT CHECK (markType  >= 2 AND markType  <= 6 OR markType  IS NULL)
);

CREATE TABLE Tutors
(
teacherFirstName VARCHAR(30) NOT NULL,
teacherLastName VARCHAR(30) NOT NULL,
classAcademicLevel TINYINT NOT NULL,
classUnit CHAR(1) NOT NULL,
FOREIGN KEY (teacherFirstName, teacherLastName)
REFERENCES Teacher(firstName, lastName)
ON UPDATE CASCADE
ON DELETE CASCADE,
FOREIGN KEY (classAcademicLevel, classUnit)
REFERENCES Class(academicLevel, unit)
ON UPDATE CASCADE
ON DELETE CASCADE
);

