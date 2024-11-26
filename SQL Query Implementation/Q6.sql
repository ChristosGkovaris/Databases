
        -- Find the minimum number of years in the program for students who have a professor advisor
        SELECT MIN(s.yearsinProgram) AS MinYearsWithAdvisor
        FROM student s
        INNER JOIN advisedby a ON s.s_id = a.s_id;
    