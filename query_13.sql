---Знайти оцінки студентів у окремій групі з певного предмета.---
SELECT s.full_name , g.number_grade , g.grade , sg.group_number, g.date_create , s2.title 
FROM grades g 
left join students s on s.id = g.student_id 
left join stu_groups sg on s.group_id = sg.id 
left join subjects s2 on s2.id = g.subject_id 
where g.subject_id = 1 and s.group_id = 1
