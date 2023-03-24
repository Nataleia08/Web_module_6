CREATE TABLE if not exists students (
id INT PRIMARY KEY, 
budget BOOLEAN, 
scholarship BOOLEAN,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
last_update_at TIMESTAMP,
group_id INT, 
people_id INT, 
FOREIGN KEY (group_id) REFERENCES stu_groups (id)
     ON DELETE SET NULL
     ON UPDATE cascade,
FOREIGN KEY (people_id) REFERENCES people (id)
     ON DELETE SET NULL
     ON UPDATE CASCADE
);