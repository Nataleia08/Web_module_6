CREATE TABLE people(
  id INT PRIMARY KEY,
  full_name VARCHAR(150),
  day_birthday DATE, 
  email VARCHAR(30),
  phone VARCHAR(15) UNIQUE NOT NULL, 
  gender_id INT, 
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
  last_update_at TIMESTAMP
);