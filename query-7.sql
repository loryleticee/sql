SELECT absence.date_abs as jour,student.id,concat(student.nom,' ',student.prenom) as nom ,count(absence.student_id) as nbr
FROM absence,student 
WHERE absence.student_id = student.id 
GROUP by student.id,student.nom,student.prenom,jour
HAVING nbr > 0
