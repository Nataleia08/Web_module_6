---Знайти середній бал у групах з певного предмета.---
SELECT AVG(number_grade) AS ser_grade, k.group_number 
FROM grades AS g
LEFT JOIN subjects AS p ON p.id = g.subject_id
LEFT JOIN students AS s ON s.id = g.student_id
LEFT JOIN stu_groups AS k ON k.id = s.group_id
where p.id = 1
GROUP BY k.id 
ORDER BY ser_grade desc