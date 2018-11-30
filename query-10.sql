SELECT class.nom as classe,AVG( note.score) as nbr
FROM note,ass,class
WHERE note.ass_id = ass.id 
AND class.id = ass.class_id
GROUP BY classe