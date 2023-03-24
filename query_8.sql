---Знайти студента із найвищим середнім балом з певного предмета.---
SELECT s.full_name, AVG(number_grade) AS ser_grade 
FROM grades AS g
LEFT JOIN students AS s ON s.id = g.student_id
left JOIN subjects AS p ON p.id = g.subject_id
where p.id = 1
GROUP BY s.id 
ORDER BY ser_grade desc
limit 1