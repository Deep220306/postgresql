-- One to One 

--Table 1 
CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
INSERT INTO students (name)
VALUES
('Akarsh Vyas'), ('Simran Mehta'), ('Rohan Gupta');

--Table 2
CREATE TABLE student_profiles (
  student_id INT PRIMARY KEY,
  address TEXT,
  age INT,
  phone VARCHAR(15)
);
INSERT INTO student_profiles (student_id, address, age, phone)
VALUES
(1, 'Delhi, India', 22, '9999999999'),
(2, 'Mumbai, India', 21, '8888888888'),
(3, 'Bangalore, India', 23, '7777777777');

--Foreign Key Constraint
ALTER TABLE student_profiles
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id)
REFERENCES students(student_id);

--Join
SELECT s.student_id, s.name, sp.address, sp.age, sp.phone
FROM students s
JOIN student_profiles sp ON s.student_id = sp.student_id;




