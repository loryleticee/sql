SELECT MAX(note.score), ass.matiere 
FROM note JOIN ass ON note.ass_id = ass.id 
GROUP BY ass.matiere;