CREATE TABLE if not exists grades(
id INT PRIMARY KEY, 
date_create DATE, 
grade CHAR(1), 
number_grade INT, 
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
last_update_at TIMESTAMP,
student_id INT, 
subject_id INT, 
FOREIGN KEY (student_id) REFERENCES students (id)
       ON DELETE SET NULL
       ON UPDATE cascade,
FOREIGN KEY (subject_id) REFERENCES subjects (id)
       ON DELETE SET NULL
       ON UPDATE CASCADE
);