SELECT student.nom, MAX(absence.student_id) 
FROM student 
JOIN absence 
ON student.id = absence.student_id 
group by student.nom