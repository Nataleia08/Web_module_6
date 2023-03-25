---Оцінки студентів у певній групі з певного предмета на останньому занятті.---
SELECT g.number_grade, s.full_name 
FROM grades g 
left join students s on s.id = g.student_id 
left join subjects s2 ON s2.id = g.subject_id
left join stu_groups sg on sg.id = s.group_id  
where (sg.id = 1) and (s2.id = 1) and (g.date_create > '2023-02-20')
