---Знайти студента із найвищим середнім балом з певного предмета.---
SELECT MAX AVG(number_grade), p.first_name, p.last_name
FROM grades AS g
WHERE subject_id = 1
GROUP BY student_id 
JOIN students AS s ON g.student_id = s.id
JOIN people AS p ON p.id = s.people_id