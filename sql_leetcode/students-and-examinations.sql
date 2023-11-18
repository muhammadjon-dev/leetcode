-- Write your PostgreSQL query statement below
SELECT 
    s.student_id, student_name, sj.subject_name, 
    SUM(count(e.subject_name)) OVER(
        PARTITION BY s.student_id, sj.subject_name 
        ORDER BY s.student_id) AS attended_exams
FROM Students as s
CROSS JOIN Subjects AS sj
LEFT JOIN Examinations as e
ON s.student_id = e.student_id 
    AND sj.subject_name = e.subject_name
GROUP BY s.student_id, student_name, sj.subject_name
