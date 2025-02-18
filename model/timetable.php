<?php

function getCourses($student_id){
    global $db;
    //$list;
    if($student_id){
        //$query = query registered courses for each student
    }
    else{
        //Login
    }
    //return $list;
}

function getClasses($school_id){
    if($school_id){
        //query to get classes for each school
    } 
}

function getPrograms($department_id){
    //query to get programs under each department
}

function getAllCourses($program_id, $year){
    //query to display courses by year and program
}

function getTimetable($list){
    //Make iterative function get time slot for each course in the list
}

?>