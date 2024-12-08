SELECT a1.s_id AS s_id1, a2.s_id AS s_id2, a1.p_id
FROM advisedby a1
INNER JOIN advisedby a2 ON a1.p_id = a2.p_id AND a1.s_id < a2.s_id;