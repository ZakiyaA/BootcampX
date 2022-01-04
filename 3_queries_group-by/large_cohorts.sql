SELECT cohorts.name as cohort_name, COUNT(*) as student_count 
FROM cohorts 
JOIN students                          
ON cohorts.id = students.cohort_id 
GROUP BY cohorts.name 
HAVING COUNT(students.id) >= 18 
ORDER BY student_count ;
