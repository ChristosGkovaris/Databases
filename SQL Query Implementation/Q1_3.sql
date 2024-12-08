SELECT DISTINCT s1.s_id
FROM advisedby a1
JOIN advisedby a2 ON a1.p_id = a2.p_id
JOIN student s1 ON a1.s_id = s1.s_id
WHERE a2.s_id = 81
GROUP BY s1.s_id
HAVING COUNT(DISTINCT a1.p_id) = (
    SELECT COUNT(DISTINCT a3.p_id)
    FROM advisedby a3
    WHERE a3.s_id = 81
);