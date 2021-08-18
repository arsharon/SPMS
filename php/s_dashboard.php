<?php
include 'mysql.php';

$id = $_SESSION['id'];

    $query = "SELECT student.name FROM student WHERE id = $id";
    $name = $conn->query($query)->fetch_row()[0];
?>    