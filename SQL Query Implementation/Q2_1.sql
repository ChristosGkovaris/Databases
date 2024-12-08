INSERT INTO advisedby (s_id, p_id)
SELECT s.s_id, 5
FROM student s
LEFT JOIN advisedby a ON s.s_id = a.s_id
WHERE s.yearsInProgram > 3 AND a.p_id IS NULL;