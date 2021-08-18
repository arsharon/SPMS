<?php

    $query = "SELECT department, program, semester, course_id, credits, student_id, SUM(obtained) as 'total' FROM
    (SELECT section.semester, course.id as 'course_id', course.credits, enrollment.student_id, program.name as 'program', department.id as 'department', 
    IF(assessment.type = 'final', (SUM(evaluation.obtained_mark) / SUM(assessment.mark)) * 40, (SUM(evaluation.obtained_mark) / SUM(assessment.mark)) * 30) as 'obtained', assessment.type
    FROM department LEFT JOIN program on department.id = program.department_id 
    LEFT JOIN course on program.id = course.program_id 
    LEFT JOIN section ON course.id = section.course_id 
    LEFT JOIN assessment ON section.id = assessment.section_id 
    LEFT JOIN evaluation ON assessment.id = evaluation.assessment_id 
    LEFT JOIN co ON assessment.section_id = co.section_id AND assessment.co_number = co.indx 
    LEFT JOIN plo ON co.plo_id = plo.id 
    LEFT JOIN enrollment ON evaluation.enrollment_id = enrollment.id 
    WHERE section.semester = LOWER('$semester')
    GROUP BY course.id, enrollment.student_id, assessment.type, course.id) as iQuery
    GROUP BY semester, student_id, course_id";

    $result = $conn->query($query);

    $data = array();

    foreach($result as $r){
        if(!array_key_exists($r['department'], $data)){
            $data[$r['department']] = array();
        }
        if(!array_key_exists($r['student_id'], $data[$r['department']])){
            $data[$r['department']][$r['student_id']] = array();
            $data[$r['department']][$r['student_id']]['credits'] = 0;
            $data[$r['department']][$r['student_id']]['gpa'] = 0;
            $data[$r['department']][$r['student_id']]['credits'] += $r['credits'];
            if($r['total']>=85){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 4.0);
            }else if($r['total']>=80){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 3.7);
            }else if($r['total']>=75){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 3.3);
            }else if($r['total']>=70){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 3.0);
            }else if($r['total']>=65){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 2.7);
            }else if($r['total']>=60){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 2.3);
            }else if($r['total']>=55){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 2.0);
            }else if($r['total']>=50){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 1.7);
            }else if($r['total']>=45){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 1.3);
            }else if($r['total']>=40){
                $data[$r['department']][$r['student_id']]['gpa']+=($r['credits'] * 1.0);
            }
        }
    }
    
    $department = array();

    foreach($data as $k => $dep){
        $student = sizeof($dep);
        if(!array_key_exists('tend', $dep)){
            $dep['tend'] = 0;
        }

        $i=1;
        foreach($dep as $stu){
            if($stu['gpa']){
                $dep['tend'] += round(($stu['gpa'] / $stu['credits']), 2);
            }
            $i++;
            if($i>$student){
                break;
            }
        }
        $dep['tend'] /= $student;
        $department[$k] = round($dep['tend'], 2);
    }

?>