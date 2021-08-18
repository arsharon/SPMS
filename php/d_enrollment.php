<?php
    include 'mysql.php';

    if(isset($_GET['semester'])){
        $semester = $_GET['semester'];
        $query = "SELECT department.id as 'department', section.semester as 'semester', COUNT(enrollment.student_id) as 'total_student' FROM department LEFT JOIN program ON department.id = program.department_id LEFT JOIN course ON program.id = course.program_id LEFT JOIN section ON course.id = section.course_id LEFT JOIN enrollment ON section.id = enrollment.section_id
        WHERE LOWER(section.semester) = LOWER('$semester')
        GROUP BY department.id, section.semester";

        $deps = $conn->query($query);

        $query = "SELECT program.name as 'program', program.department_id as 'department', COUNT(enrollment.student_id) as 'total_student' FROM program LEFT JOIN course ON program.id = course.program_id LEFT JOIN section ON course.id = section.course_id LEFT JOIN enrollment ON section.id = enrollment.section_id 
        WHERE LOWER(section.semester) = LOWER('$semester') 
        GROUP BY program.id, section.semester";

        $progs = $conn->query($query);
    }

?>