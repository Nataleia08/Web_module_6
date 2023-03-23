CREATE TABLE stu_groups( 
 id INT PRIMARY KEY,
 group_number CHAR(10),
 kurs INT, 
 faculty VARCHAR(30),
 specialty VARCHAR(100),
 specialty_number VARCHAR(100),
 specialization VARCHAR(100),
 daytime INT,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
 last_update_at TIMESTAMP
);