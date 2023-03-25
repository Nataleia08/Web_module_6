CREATE TABLE if not exists stu_groups( 
 id INT PRIMARY KEY,
 group_number CHAR(10),
 kurs INT, 
 daytime INT,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
 last_update_at TIMESTAMP
);

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

CREATE TABLE if not exists teachers(
id INT PRIMARY KEY, 
full_name VARCHAR(150),
"age" INT, 
email VARCHAR(100),
phone VARCHAR(100) UNIQUE NOT NULL, 
date_start_work DATE, 
scientific_degree VARCHAR(30),
salary FLOAT, 
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
last_update_at TIMESTAMP
);

CREATE TABLE if not exists subjects(
id INT PRIMARY KEY,
title VARCHAR(100),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
last_update_at TIMESTAMP,
teacher_id INT, 
FOREIGN KEY (teacher_id) REFERENCES teachers (id)
       ON DELETE SET NULL
       ON UPDATE CASCADE
);

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