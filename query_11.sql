---Знайти які курси читає певний викладач.---
SELECT s.title , t.full_name 
FROM subjects s 
left join teachers t on t.id = s.teacher_id 
where t.id = 1