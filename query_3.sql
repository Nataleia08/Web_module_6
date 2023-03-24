DROP TABLE IF exists students;
CREATE TABLE if not exists students (
id INT PRIMARY KEY,
full_name VARCHAR(150),
"age" INT, 
email VARCHAR(100),
phone VARCHAR(100) UNIQUE NOT NULL, 
budget BOOLEAN, 
scholarship BOOLEAN,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
last_update_at TIMESTAMP,
group_id INT,  
FOREIGN KEY (group_id) REFERENCES stu_groups (id)
     ON DELETE SET NULL
     ON UPDATE cascade
);