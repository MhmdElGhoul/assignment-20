1> CREATE DATABASE school_db;
2> CREATE TABLE students_table(
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR,
    city VARCHAR(100)
)
3> INSERT INTO students_table VALUES
(1, 'Ahmad', 'Ahmad', 17, 'A', 'Beirut'),
(2, 'Sara', 'Khatib', 18, 'B', 'Tripoli'),
(3, 'Hassan', 'Zein', 17, 'A', 'Sidon'),
(4, 'Mariam', 'Ata', 19, 'C', 'Beirut'),
(5, 'Khaled', 'Najjar', 16, 'B', 'Tyre'),
(6, 'Reem', 'Salem', 18, 'A', 'Tripoli'),
(7, 'Youssef', 'Hany', 17, 'C', NULL),
(8, 'Hiba', 'Zein', 20, 'B', 'Beirut'),
(9, 'Fadi', 'Hashem', 16, 'A', 'Tyre'),
(10, 'Layla', 'Hassan', 17, 'B', 'Tripoli');

4-1> SELECT first_name, last_name
FROM students_table;
4-2> SELECT first_name, city
FROM students_table;
4-3-1> SELECT * FROM students_table WHERE grade = 'B';
4-3-2> SELECT * FROM students_table WHERE city != 'Beirut';
4-3-3> SELECT * FROM students_table WHERE age > 17;
4-3-4> SELECT * FROM students_table WHERE age >= 18;
4-3-5> SELECT * FROM students_table WHERE student_id <5;
4-3-3> SELECT * FROM students_table WHERE age <= 16;
4-4-1> SELECT * FROM students_table WHERE city IS NULL;
4-4-2> SELECT * FROM students_table WHERE city IS NOT NULL;
5> SELECT * FROM students_table WHERE age BETWEEN 17 AND 19;
6> SELECT * FROM students_table WHERE age > 17 AND grade = 'A';
7> SELECT * FROM students_table WHERE city = 'Beirut' OR city = 'Tripoli';
8-1> DELETE FROM students_table WHERE student_id = 10;
8-2> DELETE FROM students_table WHERE age < 17;
9> CREATE DATABASE university_db;
10> CREATE TABLE student(
    student_id INT PRIMARY KEY,
    full_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    age INT CHECK (age > 15),
    registration_date DATE,
    registration_time TIME,
    created_at DATETIME
)
11> INSERT INTO student VALUES
(1, 'Mohammad El Ghoul', 'Mhmdelghoul@gmail.com', 27, NOW(), NOW(), NOW());
