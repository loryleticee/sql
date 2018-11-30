select ass.matiere, avg(note.score)from note,ass,class where ass.class_id = class.id
AND note.ass_id = ass.id 
group by ass.matiere