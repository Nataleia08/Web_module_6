CREATE TABLE if not exists teachers(
id INT PRIMARY KEY, 
date_start_work DATE, 
date_end_work DATE, 
scientific_degree VARCHAR(30),
salary FLOAT, 
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
last_update_at TIMESTAMP,
people_id INT, 
FOREIGN KEY (people_id) REFERENCES people (id)
       ON DELETE SET NULL
       ON UPDATE CASCADE
);