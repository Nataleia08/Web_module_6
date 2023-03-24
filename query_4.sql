DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers(
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