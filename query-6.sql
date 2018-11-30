SELECT student.nom, ass.matiere, note.score 
FROM student 
LEFT JOIN note ON student.id = note.student_id 
LEFT JOIN ass ON note.ass_id = ass.id 
GROUP BY student.nom, ass.matiere, note.score ;