SELECT class.nom as classe,count(DISTINCT note.id) as nbr
FROM note,ass,class
WHERE note.ass_id = ass.id 
AND class.id = ass.class_id
GROUP BY classe



SELECT class.nom as classe,ass.matiere as controle ,count(DISTINCT note.id) as nbr
FROM note,ass,class
WHERE note.ass_id = ass.id 
AND class.id = ass.class_id
GROUP BY classe,controle

