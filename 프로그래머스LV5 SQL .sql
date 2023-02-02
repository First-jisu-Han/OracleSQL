SELECT *
FROM
    (SELECT A.animal_id, A.name
    FROM animal_ins A,
        (
        SELECT *
        FROM animal_outs
        ) B
    WHERE A.animal_id=B.animal_id
    ORDER BY B.datetime-A.datetime DESC)
WHERE ROWNUM<=2;