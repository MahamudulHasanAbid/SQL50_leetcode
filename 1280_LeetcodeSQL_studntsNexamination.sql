/*
Write a solution to find the number of times each student attended each exam.

Return the result table ordered by student_id and subject_name.

The result format is in the following example. */

select s.student_id, s.student_name, su.subject_name, count(e.subject_name) as attended_exams
from Students s
cross join Subjects su 
left join Examinations e on s.student_id = e.student_id and su.subject_name = e.subject_name
group by s.student_id, s.student_name, su.subject_name
order by s.student_id, su.subject_name;
