CREATE TABLE subject(
	ID int NOT NULL,
	Name varchar(12) NOT NULL,
    Description text NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE mark(
	ID int NOT NULL,
    studentID int,
    PRIMARY KEY (ID),
	mark varchar(2)
);

CREATE TABLE student(
	ID int NOT NULL,
    class int NOT NULL,
    PRIMARY KEY (ID,class),
	FirstName varchar(20) NOT NULL,
    LastName varchar(20) NOT NULL,
    email varchar(25) NOT NULL,
	pass varchar(25) NOT NULL
);

CREATE TABLE teacher(
	ID int NOT NULL,
    PRIMARY KEY (ID),
    FirstName varchar(20) NOT NULL,
    LastName varchar(20) NOT NULL,
    email varchar(25) NOT NULL,
    pass varchar(25) NOT NULL
);

CREATE TABLE schedule(
	ID int NOT NULL,
    teacherID int,
    subjectID int,
	WeekDay int NOT NULL,
    BeginningTime int NOT NULL,
    EndTime int NOT NULL,
    PRIMARY KEY (ID)
);