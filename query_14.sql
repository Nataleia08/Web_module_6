---Знайти середній бал, який ставить певний викладач зі своїх предметів.---
SELECT s.title , AVG(number_grade) 
FROM grades g 
left join subjects s on s.id = g.subject_id 
left join teachers t on t.id = s.teacher_id 
where t.id = 1
GROUP BY s.id  