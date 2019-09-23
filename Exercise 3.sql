USE SpartaDatabase

-- 3.1 --

-- Course Name Table --
CREATE TABLE CourseName(CourseID VARCHAR(50), CourseName VARCHAR(50), AcademyName VARCHAR(50), PRIMARY KEY(CourseID));
Insert INTO CourseName VALUES 
(
'ENG42', 'DEV-OPS42', 'Moorgate'
);

 --Course Start Date Table --
CREATE TABLE StartDate(CourseID VARCHAR(50), CourseStart DATE, PRIMARY KEY(CourseStart));
Insert INTO StartDate VALUES 
(
'ENG42', '2019-09-09'
);

 --Course End Date Table --
CREATE TABLE EndDate(CourseID VARCHAR(50), CourseEnd DATE, PRIMARY KEY(CourseID));
Insert INTO EndDate VALUES 
(
'ENG42', '2019-11-16'
);

SELECT DATEADD(WEEK, 8, CourseEnd) AS 'CheckDate';


 --Academy Name Table --
CREATE TABLE AcademyName(AcademyName VARCHAR(50), City VARCHAR(50), PRIMARY KEY (AcademyName));
Insert INTO AcademyName VALUES 
(
'Moorgate', 'London'
);

--Room Name --
CREATE TABLE RoomName(Room VARCHAR(25), AcademyName VARCHAR(50), PRIMARY KEY (Room));
Insert INTO RoomName VALUES 
(
'TrainingRoom-2', 'Moorgate'
);

 --Trainer --
CREATE TABLE TrainerDetails(FirstName VARCHAR(50), LastName VARCHAR(50), TrainerID VARCHAR(50), CourseID VARCHAR(50), ROLE VARCHAR(50) PRIMARY KEY(TrainerID));
Insert INTO TrainerDetails VALUES 
(
'Felipe', 'Paiva', 'THAGOAT', 'ENG42', 'T'
);

 --Spartan Table --
CREATE TABLE SpartanDetails(Initials VARCHAR(50), SpartaID VARCHAR(50), CourseID VARCHAR(50), PRIMARY KEY(SpartaID));
Insert INTO SpartanDetails VALUES 
(
'Sivaharan', 'Thevipagan', 'STHEV-42', 'ENG42'
);


INSERT INTO TrainerDetails VALUES
(
'Self', '5ive', 'UDIDIT', 'ENG32', 'A'
);




-- Primary Keys added
-- Constraints added
-- 


