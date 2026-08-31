CREATE DATABASE IF NOT EXISTS student_results;
USE student_results;


CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(150) NOT NULL,
    tilawat DECIMAL(5,2) DEFAULT 0,
    kawaayed DECIMAL(5,2) DEFAULT 0,
    surah DECIMAL(5,2) DEFAULT 0,
    mashq DECIMAL(5,2) DEFAULT 0,
    attendance DECIMAL(5,2) DEFAULT 0,
    total DECIMAL(5,2) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110002', 'Md Foyzul Amin', 10, 5,
 9.5, 5, 3.13, 27.6)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110032', 'Alfaz Uddin', 9.5, 5,
 9.5, 5, 3.13, 27.1)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110034', 'Md. Ramij Hossain', 9.5, 5,
 9.5, 8, 5, 29)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110053', 'Md Tareq Hossain Shah', 9, 1,
 9, 0, 0, 19)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110055', 'Abdullah Al-khalid', 8.5, 3,
 9, 7, 4.38, 24.9)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110088', 'Deen Islam Hridoy', 9, 5,
 9.5, 0, 0, 23.5)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110089', 'Samiuzzaman Sunny', 9, 1,
 9, 0, 0, 19)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110113', 'Md. Al Imran', 8.5, 5,
 9, 7, 4.38, 26.9)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110117', 'Md. Sorfuddin Abir', 9, 5,
 9, 1, 0.63, 23.6)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110165', 'Mohammad Roman Uddin', 9.5, 2.5,
 9.5, 2, 1.25, 22.8)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110172', 'Md. Shakhaowat Hossen', 9.5, 1.5,
 10, 6, 3.75, 24.8)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110181', 'Md. Atahar Shifat', 9, 1.5,
 8, 0, 0, 18.5)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110198', 'Md Al Amin', 9.5, 5,
 9.5, 4, 2.5, 26.5)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110224', 'Sheikh Md Atik Mahmud', 10, 4,
 10, 2, 1.25, 25.3)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110226', 'Shazzadul Islam Faisal', 9, 5,
 9, 7, 4.38, 27.4)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110245', 'Farhan Tahmid', 9, 5,
 9.5, 5, 3.13, 26.6)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110246', 'Tazim Ahmmed Zim', 9, 5,
 8.5, 0, 0, 22.5)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110249', 'Hussain Ahmad Shahin', 9.5, 4.5,
 10, 5, 3.13, 27.1)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('26150110253', 'MD YEASIN', 9.5, 3.5,
 9, 8, 5, 27)
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

