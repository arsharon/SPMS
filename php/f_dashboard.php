<?php
    include 'mysql.php';

   

    $id = $_SESSION['id'];

    $query = "SELECT faculty.name FROM faculty WHERE id = $id";
    $faculty_name = $conn->query($query)->fetch_row()[0];

    $query = "SELECT section.id
    FROM section LEFT JOIN assessment ON section.id = assessment.section_id 
    WHERE section.faculty_id = $id
    GROUP BY section.id, assessment.type";

    $asmnts = $conn->query($query)->num_rows;

    $query = "SELECT id
    FROM section WHERE faculty_id = $id";

    $sctns = $conn->query($query)->num_rows;

    $query = "SELECT DISTINCT(course_id)
    FROM section WHERE faculty_id = $id";

    $crss = $conn->query($query)->num_rows;
    
    if(isset($_GET['semester'])){
        $semester = $_GET['semester'];
        include 'f_student-peformance-crs.php';
    }
    
?>