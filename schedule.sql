CREATE TABLE subject (
    ID INT NOT NULL,
    Name VARCHAR(12) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE mark(
	grade int,
    studentID int,
    subjectID int,
    TimeSlot datetime,
    PRIMARY KEY (TimeSlot, studentID, subjectID),
    FOREIGN KEY (studentID) REFERENCES student(ID),
    FOREIGN KEY (subjectID) REFERENCES teacher(ID)
);

CREATE TABLE student(
	ID int NOT NULL,
    class int NOT NULL,
    PRIMARY KEY (ID,class),
	FirstName varchar(20) NOT NULL,
    LastName varchar(20) NOT NULL
    
);

CREATE TABLE teacher(
	ID int NOT NULL,
    PRIMARY KEY (ID),
    FirstName varchar(20) NOT NULL,
    LastName varchar(20) NOT NULL
);

CREATE TABLE schedule(
    class int PRIMARY KEY,
    teacherID int,
    subjectID int,
	TimeSlot varchar(20),
    FOREIGN KEY (teacherID) REFERENCES teacher(ID),
    FOREIGN KEY (subjectID) REFERENCES subject(ID)
);