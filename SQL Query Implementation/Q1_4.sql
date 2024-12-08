SELECT p.hasPosition
FROM professor p
JOIN advisedby a ON p.p_id = a.p_id
GROUP BY p.p_id, p.hasPosition
HAVING COUNT(a.s_id) = (
    SELECT MAX(student_count)
    FROM (
        SELECT COUNT(a.s_id) AS student_count
        FROM advisedby a
        GROUP BY a.p_id
    ) AS counts
);