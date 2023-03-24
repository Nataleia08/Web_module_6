DROP TABLE IF EXISTS stu_groups;
CREATE TABLE stu_groups( 
 id INT PRIMARY KEY,
 group_number CHAR(10),
 kurs INT, 
 daytime INT,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
 last_update_at TIMESTAMP
);