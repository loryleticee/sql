Sébastien [16 h 27]
CREATE VIEW nbr_student
(stu, clas)
AS SELECT COUNT(student.id), class.id
FROM student, class
WHERE student.id_class = class.id
GROUP BY student.id_class, class.id;