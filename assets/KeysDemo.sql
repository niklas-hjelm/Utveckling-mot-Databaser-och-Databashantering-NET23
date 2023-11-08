----**************************************************************************************************
----Create new database
----**************************************************************************************************
--DROP DATABASE KeysDemoDb
--GO
CREATE DATABASE KeysDemoDb
GO
    USE KeysDemoDb
GO
    ----**************************************************************************************************
    ----Create Table Countries:
    ----**************************************************************************************************
    CREATE TABLE Countries (
        Id int Identity(1, 1) PRIMARY KEY NOT NULL,
        [Name] nvarchar(100),
        [Population] int
    )
GO
select
    *
from
    Countries ----**************************************************************************************************
    ----Create Table Cities:
    ----**************************************************************************************************
    CREATE TABLE Cities (
        Id int Identity(1, 1) PRIMARY KEY NOT NULL,
        CountryId int FOREIGN KEY REFERENCES Countries(Id),
        [Name] nvarchar(100),
        [Population] int
    )
GO
    ----**************************************************************************************************
    ---- Populating Countries
    ----**************************************************************************************************
Insert into
    Countries ([Name], [Population])
VALUES
    ('Sweden', 10430000);

Insert into
    Countries ([Name], [Population])
VALUES
    ('Denmark', 5857000);

Insert into
    Countries ([Name], [Population])
VALUES
    ('Finland', 5542000);

Insert into
    Countries ([Name], [Population])
VALUES
    ('Norway', 5480000);

Insert into
    Countries ([Name], [Population])
VALUES
    ('Iceland', 372295);

GO
select
    *
from
    Countries ----**************************************************************************************************
    ---- Populating Cities
    ----**************************************************************************************************
INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (1, 'Gothenburg', 625000);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (1, 'Stockholm', 1679000);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (1, 'Malmoe', 351749);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (2, 'Kopenhagen', 1370000);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (2, 'Odense', 204795);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (3, 'Helsinki', 1328000);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (3, 'Espoo', 300000);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (4, 'Oslo', 1071062);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (4, 'Bergen', 287888);

INSERT INTO
    Cities (CountryId, [Name], [Population])
VALUES
    (5, 'Reykjavik', 131136);

GO
SELECT
    Cities.[Name],
    Countries.[Name]
FROM
    Cities
    JOIN Countries ON Cities.CountryId = Countries.Id
GO
    ----**************************************************************************************************
    ---- Create View to display cities with their linked countries and populations
    ----**************************************************************************************************
    CREATE VIEW vCitiesInCountries AS
SELECT
    Cities.[Name] AS [CityName],
    Cities.[Population] AS [CityPopulation],
    Countries.[Name] AS [CountryName],
    Countries.[Population] AS [CountryPopulation]
FROM
    Cities
    JOIN Countries ON CountryId = Countries.Id
GO
    ----**************************************************************************************************
    ---- Alter View to also display how big part of the country population a city has
    ----**************************************************************************************************
    ALTER VIEW vCitiesInCountries AS
SELECT
    Cities.[Name] AS [CityName],
    Cities.[Population] AS [CityPopulation],
    Countries.[Name] AS [CountryName],
    Countries.[Population] AS [CountryPopulation],
    FORMAT(
        Convert(FLOAT, Cities.[Population]) / Convert(FLOAT, Countries.[Population]),
        'p'
    ) AS [PartOfTotal]
FROM
    Cities
    JOIN Countries ON CountryId = Countries.Id;

GO
    ----**************************************************************************************************
    ---- Create three tables, one for students, one for courses and one to link them both that has a
    ---- composite primary key.
    ----**************************************************************************************************
    CREATE TABLE Students (
        Id int Identity(1, 1) PRIMARY KEY NOT NULL,
        [FirstName] nvarchar(100),
        [LastName] nvarchar(100)
    )
GO
    CREATE TABLE Courses (
        Id int Identity(1, 1) PRIMARY KEY NOT NULL,
        [Name] nvarchar(100),
        [Points] int
    )
GO
    CREATE TABLE StudentPlans (
        [StudentId] int NOT NULL,
        [CourseId] int NOT NULL,
        CONSTRAINT PK_StudentPlan PRIMARY KEY ([StudentId], [CourseId]),
        CONSTRAINT FK_StudentId_Students FOREIGN KEY ([StudentId]) REFERENCES Students(Id),
        CONSTRAINT FK_CourseId_Courses FOREIGN KEY ([CourseId]) REFERENCES Courses(Id)
    )
GO
    ----**************************************************************************************************
    ---- Populate Students, Courses and StudentPlans
    ----**************************************************************************************************
INSERT INTO
    Students ([FirstName], [LastName])
VALUES
    ('Peter', 'Parker');

INSERT INTO
    Students ([FirstName], [LastName])
VALUES
    ('John', 'Logan');

INSERT INTO
    Students ([FirstName], [LastName])
VALUES
    ('Hank', 'McCoy');

INSERT INTO
    Students ([FirstName], [LastName])
VALUES
    ('Francis', 'Castle');

INSERT INTO
    Students ([FirstName], [LastName])
VALUES
    ('Matt', 'Murdoc');

INSERT INTO
    Students ([FirstName], [LastName])
VALUES
    ('Bruce', 'Banner');

INSERT INTO
    Students ([FirstName], [LastName])
VALUES
    ('Anthony', 'Stark');

INSERT INTO
    Students ([FirstName], [LastName])
VALUES
    ('Johnny', 'Storm');

GO
INSERT INTO
    Courses ([Name], [Points])
VALUES
    ('Heroism', 100);

INSERT INTO
    Courses ([Name], [Points])
VALUES
    ('Flying', 50);

INSERT INTO
    Courses ([Name], [Points])
VALUES
    ('Survivalism', 40);

INSERT INTO
    Courses ([Name], [Points])
VALUES
    ('Engineering', 60);

INSERT INTO
    Courses ([Name], [Points])
VALUES
    ('Chemestry', 50);

INSERT INTO
    Courses ([Name], [Points])
VALUES
    ('Acrobatics', 100);

INSERT INTO
    Courses ([Name], [Points])
VALUES
    ('Wrestling', 50);

INSERT INTO
    Courses ([Name], [Points])
VALUES
    ('Marksmanship', 100);

GO
select
    *
from
    Students
select
    *
from
    Courses
select
    *
from
    StudentPlans
INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (1, 1);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (1, 4);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (1, 5);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (1, 6);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (2, 3);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (2, 6);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (2, 7);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (3, 1);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (3, 3);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (3, 4);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (3, 5);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (3, 7);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (4, 3);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (4, 7);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (4, 8);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (5, 1);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (5, 6);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (5, 7);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (6, 4);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (6, 5);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (7, 1);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (7, 2);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (7, 4);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (7, 5);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (7, 8);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (8, 1);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (8, 2);

INSERT INTO
    StudentPlans ([StudentId], [CourseId])
VALUES
    (8, 6);

GO
    --SELECT * FROM Students
    --SELECT * FROM Courses
    --SELECT * FROM StudentPlans
SELECT
    *
From
    Students
    CROSS JOIN Courses
SELECT
    Students.FirstName,
    Courses.[Name]
FROM
    Courses
    JOIN StudentPlans ON Courses.Id = StudentPlans.CourseId
    JOIN Students ON Students.Id = StudentPlans.StudentId
WHERE
    Students.FirstName LIKE 'Francis'
GO
    CREATE VIEW vStudentInfo AS
SELECT
    TOP 3 Students.FirstName,
    SUM(Courses.Points) as TotalPoints
FROM
    Courses
    JOIN StudentPlans ON Courses.Id = StudentPlans.CourseId
    JOIN Students ON Students.Id = StudentPlans.StudentId
GROUP BY
    Students.FirstName
ORDER BY
    TotalPoints DESC;

GO
    --SELECT 
    --	TOP 3 TotalPoints, 
    --	FirstName 
    --FROM vStudentInfo 
    --ORDER BY TotalPoints DESC;
    --SELECT Courses.[Name]
    --FROM 
    --	Students
    --	JOIN StudentPlans on Students.Id = StudentPlans.StudentId
    --	JOIN Courses on Courses.Id = StudentPlans.CourseId
    --	WHERE Students.FirstName LIKE 'Johnny' AND Students.LastName LIKE 'Storm'
SELECT
    Countries.[Name],
    Count(Cities.Id) as NumberOfCities
FROM
    Cities
    Join Countries on Cities.CountryId = Countries.Id
Group by
    Countries.[Name]
ORDER BY
    NumberOfCities DESC
GO
    --CREATE VIEW vCitiesInCountries
    --AS
    --SELECT
    --	Cities.[Name]			AS CityName,
    --	Cities.[Population]		AS CityPopulation,
    --	Countries.[Name]		AS CountryName,
    --	Countries.[Population]	AS CountryPopulation
    --FROM Cities
    --	JOIN Countries	ON Countries.Id = Cities.CountryId;
    Create VIEW vCitiesInCountries AS
SELECT
    Cities.[Name] AS CityName,
    Cities.[Population] AS CityPopulation,
    Countries.[Name] AS CountryName,
    Countries.[Population] AS CountryPopulation,
    FORMAT(
        CONVERT(FLOAT, Cities.[Population]) / CAST(Countries.[Population] as FLOAT),
        'p'
    ) AS PartOfTotal
FROM
    Cities
    JOIN Countries ON Countries.Id = Cities.CountryId;