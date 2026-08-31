import openpyxl

INPUT_FILE = "student.xlsx"
OUTPUT_FILE = "database/students.sql"

# Load Excel workbook
workbook = openpyxl.load_workbook(INPUT_FILE, data_only=True)
sheet = workbook.active

rows = list(sheet.iter_rows(values_only=True))

# Display Excel headers
print("Excel headers:")
print(rows[0])

student_count = 0

with open(OUTPUT_FILE, "w", encoding="utf-8") as sql_file:

    sql_file.write("CREATE DATABASE IF NOT EXISTS student_results;\n")
    sql_file.write("USE student_results;\n\n")

    sql_file.write("""
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

""")

    for row in rows[1:]:

        student_id = row[0]
        name = row[1]
        tilawat = row[2]
        kawaayed = row[3]
        surah = row[4]
        mashq = row[5]
        attendance = row[6]
        total = row[7]

        # Skip completely empty rows
        if student_id is None:
            continue

        # Escape single quotes in names
        name = str(name).replace("'", "''")

        sql_file.write(
            f"""INSERT INTO students
(student_id, name, tilawat, kawaayed, surah, mashq, attendance, total)
VALUES
('{student_id}', '{name}', {tilawat or 0}, {kawaayed or 0},
 {surah or 0}, {mashq or 0}, {attendance or 0}, {total or 0})
ON DUPLICATE KEY UPDATE
name = VALUES(name),
tilawat = VALUES(tilawat),
kawaayed = VALUES(kawaayed),
surah = VALUES(surah),
mashq = VALUES(mashq),
attendance = VALUES(attendance),
total = VALUES(total);

"""
        )

        student_count += 1

print()
print(f"SQL file created: {OUTPUT_FILE}")
print(f"Student records processed: {student_count}")
