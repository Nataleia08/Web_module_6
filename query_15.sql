---Знайти список курсів, які відвідує студент.---
SELECT distinct s.title 
FROM subjects s 
left join grades g on g.subject_id = s.id 
left join students s2 on s2.id = g.student_id 
where s2.id = 1
