<?php
    include 'mysql.php';

    $error = 0;

    $query = "SELECT section.course_id, assessment.type, section.semester, assessment.co_number, IF(SUM(evaluation.obtained_mark)/SUM(assessment.mark)>=0.40, 1, 0) as 'status', plo.indx
                FROM section LEFT JOIN assessment on section.id = assessment.section_id
                LEFT JOIN evaluation ON assessment.id = evaluation.assessment_id
                LEFT JOIN enrollment ON evaluation.enrollment_id = enrollment.id
                LEFT JOIN co ON assessment.co_number = co.indx AND section.id = co.section_id
                LEFT JOIN plo ON co.plo_id = plo.id
                GROUP BY enrollment.student_id, section.course_id, plo.indx
                ORDER BY status DESC";

    $result = $conn->query($query);
    
    $plo_achieved = array();
    $plo_attempted = array();
    $co_achieved = array();
    $co_attempted = array();

    foreach($result as $r){
        if(!array_key_exists($r['indx'], $plo_attempted)){
            $plo_attempted[$r['indx']]=0;
            $plo_achieved[$r['indx']]=0;
        }

        if(!array_key_exists($r['co_number'], $co_attempted)){
            $co_attempted[$r['co_number']] = 0;
            $co_achieved[$r['co_number']] = 0;
        }

        if($r['status']==1){
            $plo_achieved[$r['indx']]++;
            $co_achieved[$r['co_number']]++;
        }
        $plo_attempted[$r['indx']]++;
        $co_attempted[$r['co_number']]++;
    }
    ksort($plo_attempted);
    ksort($co_attempted);


    $query = "SELECT section.course_id, assessment.type, section.semester, assessment.co_number, IF(SUM(evaluation.obtained_mark)/SUM(assessment.mark)>=0.40, 1, 0) as 'status', plo.indx
                FROM section LEFT JOIN course ON section.course_id = course.id
                LEFT JOIN program ON course.program_id = program.id
                LEFT JOIN department ON program.department_id = department.id
                LEFT JOIN school ON department.school_id = school.id
                LEFT JOIN assessment on section.id = assessment.section_id
                LEFT JOIN evaluation ON assessment.id = evaluation.assessment_id
                LEFT JOIN enrollment ON evaluation.enrollment_id = enrollment.id
                LEFT JOIN co ON assessment.co_number = co.indx AND section.id = co.section_id
                LEFT JOIN plo ON co.plo_id = plo.id
                ";

    if(isset($_GET['type']) && isset($_GET['name'])){
        if($_GET['type'] == 'course'){
            $query .= "WHERE section.course_id = LOWER('".$_GET['name']."')";
        }else if($_GET['type'] == 'program'){
            $query .= "WHERE LOWER(program.name) = LOWER('".$_GET['name']."')";
        }else if($_GET['type'] == 'department'){
            $query .= "WHERE LOWER(department.id) = LOWER('".$_GET['name']."')";
        }else{
            $query .= "WHERE school.name LIKE '%".$_GET['name']."%'";
        }
        $query .= "GROUP BY enrollment.student_id, section.course_id, plo.indx
        ORDER BY status DESC";

        $result = $conn->query($query);

        if(mysqli_num_rows($result)==0){
            $error = 1;
        }
    
        $plo_achievedE = array();
        $plo_attemptedE = array();
        $co_achievedE = array();
        $co_attemptedE = array();

        foreach($result as $r){
            if(!array_key_exists($r['indx'], $plo_attemptedE)){
                $plo_attemptedE[$r['indx']]=0;
                $plo_achievedE[$r['indx']]=0;
            }

            if(!array_key_exists($r['co_number'], $co_attemptedE)){
                $co_attemptedE[$r['co_number']] = 0;
                $co_achievedE[$r['co_number']] = 0;
            }

            if($r['status']==1){
                $plo_achievedE[$r['indx']]++;
                $co_achievedE[$r['co_number']]++;
            }
            $plo_attemptedE[$r['indx']]++;
            $co_attemptedE[$r['co_number']]++;
        }
        ksort($plo_attemptedE);
        ksort($co_attemptedE);

        $query = "SELECT school.name as'school', UPPER(program.department_id) as 'department', CONCAT(program.name, ' in ', UPPER(program.department_id)) as 'program', course.id as 'course', plo.indx as 'plo', co.indx as 'co', SUM(assessment.mark) as 'total', SUM(evaluation.obtained_mark) as 'obtained', COUNT(DISTINCT(enrollment.student_id)) as 'student'
                FROM school LEFT JOIN department ON school.id = department.school_id
                LEFT JOIN program ON department.id = program.department_id
                LEFT JOIN course on program.id = course.program_id
                LEFT JOIN section ON course.id = section.course_id
                LEFT JOIN assessment ON section.id = assessment.section_id
                LEFT JOIN evaluation ON assessment.id = evaluation.assessment_id
                LEFT JOIN co ON assessment.section_id = co.section_id AND assessment.co_number = co.indx
                LEFT JOIN plo ON co.plo_id = plo.id
                LEFT JOIN enrollment ON evaluation.enrollment_id = enrollment.id ";

        if($_GET['type'] == 'school'){
            $query .= "WHERE school.name LIKE '%".$_GET['name']."%'
            GROUP BY school.id, plo.id, co.indx
            ORDER by plo.indx, co.indx";
        }else if($_GET['type'] == 'department'){
            $query .= "WHERE LOWER(department.id) = LOWER('".$_GET['name']."')
            GROUP BY department.id, plo.id, co.indx
            ORDER by plo.indx, co.indx";
        }else if($_GET['type'] == 'program'){
            $query .= "WHERE LOWER(program.name) = LOWER('".$_GET['name']."')
            GROUP BY program.id, plo.id, co.indx
            ORDER by plo.indx, co.indx";
        }

        if($_GET['type'] != 'course'){
            $result = $conn->query($query);

            $ploData = array();

            foreach($result as $r){
                $base = $r[$_GET['type']];
                
                if(!array_key_exists($base, $ploData)){
                    $ploData[$base] = array();
                    $ploData[$base]['plo'] = array();
                    $ploData[$base]['co'] = array();
                }
                $plo = $r['plo'];
                if(!array_key_exists($plo, $ploData[$base]['plo'])){
                    $ploData[$base]['plo'][$plo] = array();
                    $ploData[$base]['plo'][$plo]['total'] = 0;
                    $ploData[$base]['plo'][$plo]['obtained'] = 0;
                }
                $ploData[$base]['plo'][$plo]['total']+=$r['total'];
                $ploData[$base]['plo'][$plo]['obtained']+=$r['obtained'];
                $co = $r['co'];
                if(!array_key_exists($co, $ploData[$base]['co'])){
                    $ploData[$base]['co'][$co] = array();
                }
                if(!array_key_exists($plo, $ploData[$base]['co'][$co])){
                    $ploData[$base]['co'][$co][$plo] = 0;
                }
                $ploData[$base]['co'][$co][$plo]+=$r['obtained'];
            }

            include 'd_student-peformance-plo-school.php';

        }

    }else{
        $error = 1;
    }

?>