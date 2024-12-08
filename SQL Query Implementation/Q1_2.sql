SELECT DISTINCT t.course_id
FROM taughtby t
JOIN advisedby a ON t.u_id = a.p_id OR t.u_id = a.s_id
WHERE EXISTS (
    SELECT 1 
    FROM professor p
    WHERE p.p_id = a.p_id
) AND EXISTS (
    SELECT 1
    FROM student s
    WHERE s.s_id = a.s_id
);