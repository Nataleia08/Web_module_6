---Знайти список студентів у певній групі.---
SELECT sg.group_number, s.full_name  
FROM students s 
left join stu_groups sg ON s.group_id = sg.id 
where sg.id = 1