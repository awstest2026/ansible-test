<?php

$db_host = "192.168.0.190";
$db_name = "student_results";
$db_user = "student_app";
$db_pass = "StudentDB@123";

$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}

$sql = "SELECT student_id, name, total FROM students ORDER BY student_id";
$result = $conn->query($sql);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Student Result Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background: #f2f2f2;
        }

        .total {
            text-align: center;
        }
    </style>
</head>

<body>

<h1>Student Result Portal</h1>

<table>
    <tr>
        <th>Student ID</th>
        <th>Name</th>
        <th>Total</th>
    </tr>

<?php

if ($result && $result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {

        echo "<tr>";
        echo "<td>" . htmlspecialchars($row["student_id"]) . "</td>";
        echo "<td>" . htmlspecialchars($row["name"]) . "</td>";
        echo "<td class='total'>" . htmlspecialchars($row["total"]) . "</td>";
        echo "</tr>";

    }

} else {

    echo "<tr>";
    echo "<td colspan='3'>No student records found.</td>";
    echo "</tr>";

}

$conn->close();

?>

</table>

</body>
</html>
