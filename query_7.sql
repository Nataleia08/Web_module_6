---Знайти 5 студентів із найбільшим середнім балом з усіх предметів.---




SELECT AVG(number_grade) AS ser_grade
FROM grades
GROUP BY student_id 
LIMIT 5