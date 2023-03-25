---Середній бал, який певний викладач ставить певному студентові.---
SELECT avg(number_grade)
FROM grades g 
left join students s on s.id = g.student_id 
left join subjects s2 ON s2.id = g.subject_id
left join teachers t on t.id = s2.teacher_id 
where t.id = 1 and s.id = 22
group by g.student_id 