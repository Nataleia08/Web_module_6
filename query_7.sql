---Знайти 5 студентів із найбільшим середнім балом з усіх предметів.---
SELECT s.full_name, AVG(number_grade) AS ser_grade
FROM grades AS g
LEFT JOIN students AS s ON s.id = g.student_id
GROUP BY s.id
ORDER BY ser_grade DESC
LIMIT 5