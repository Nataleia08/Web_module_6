CREATE TABLE if not exists subjects(
id INT PRIMARY KEY,
title VARCHAR(100),
department VARCHAR(100),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
last_update_at TIMESTAMP,
teacher_id INT, 
FOREIGN KEY (teacher_id) REFERENCES teachers (id)
       ON DELETE SET NULL
       ON UPDATE CASCADE
);