<?php
    include 'mysql.php';

    $course_id = 'course';

    $id = $_SESSION['id'];

    $query = "SELECT admin.name FROM admin WHERE id = $id";
    $admin_name = $conn->query($query)->fetch_row()[0];


    $query = "SELECT COUNT(course.id) as 'total' FROM course";
    $crss = $conn->query($query)->fetch_row()[0];

    $query = "SELECT COUNT(program.id) as 'total' FROM program";
    $progs = $conn->query($query)->fetch_row()[0];

    $query = "SELECT COUNT(school.id) as 'total' FROM school";
    $scls = $conn->query($query)->fetch_row()[0];

     $query = "SELECT COUNT(student.id) as 'total' FROM student";
     $stds = $conn->query($query)->fetch_row()[0];
   
?>