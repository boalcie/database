INSERT INTO student (ID, class, FirstName, LastName)
VALUES (1, 1, 'Петро', 'Петрович');

INSERT INTO subject (ID, Name)
VALUES (1, 'Математика');

INSERT INTO teacher (ID, FirstName, LastName)
VALUES (1, 'Іван', 'Іванович'); 

INSERT INTO mark (studentID, subjectID, grade, TimeSlot)
VALUES (1, 1, 5, now());

SELECT AVG(grade) as AverageGrade
FROM mark
WHERE studentID = 1 AND subjectID = 1 AND TimeSlot BETWEEN '2024-02-01' AND now();

SELECT
	(SELECT FirstName FROM student WHERE ID = mark.studentID) as StudentFirstName,
    (SELECT LastName FROM student WHERE ID = mark.studentID) as StudentLastName,
    (SELECT Name FROM subject WHERE ID = mark.studentID) as SubjectName,
    AVG(grade) as AverageGrade
FROM mark
GROUP BY studentID, subjectID;

SELECT*
FROM schedule 
WHERE TimeSlot = 'Monday'