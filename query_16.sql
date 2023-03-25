---Список курсів, які певному студенту читає певний викладач.---
SELECT distinct s.title
FROM subjects s 
left join teachers t ON s.teacher_id = t.id 
left join grades g on g.subject_id = s.id 
left join students s2 on s2.id = g.student_id 
where t.id = 1 and s2.id = 1 