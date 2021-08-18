<?php

    $dep = $_SESSION['dep'];

    $query = "SELECT school.name as'school', program.department_id as 'department', program.name as 'program', course.id as 'course', plo.indx as 'plo', co.indx as 'co', SUM(assessment.mark) as 'total', SUM(evaluation.obtained_mark) as 'obtained', COUNT(DISTINCT(enrollment.student_id)) as 'student'
    FROM school LEFT JOIN department ON school.id = department.school_id
    LEFT JOIN program ON department.id = program.department_id
    LEFT JOIN course on program.id = course.program_id
    LEFT JOIN section ON course.id = section.course_id
    LEFT JOIN assessment ON section.id = assessment.section_id
    LEFT JOIN evaluation ON assessment.id = evaluation.assessment_id
    LEFT JOIN co ON assessment.section_id = co.section_id AND assessment.co_number = co.indx
    LEFT JOIN plo ON co.plo_id = plo.id
    LEFT JOIN enrollment ON evaluation.enrollment_id = enrollment.id
    WHERE department.id = '$dep'
    GROUP BY department.id, plo.id, co.indx";

    $result = $conn->query($query);

    $depData = array();

    foreach($result as $r){
        
        $plo = $r['plo'];
        if(!array_key_exists($plo, $depData)){
            $depData[$plo] = array();
            $depData[$plo]['total'] = 0;
            $depData[$plo]['obtained'] = 0;
        }

        $depData[$plo]['total']+=$r['total'];
        $depData[$plo]['obtained']+=$r['obtained'];
    }

?>