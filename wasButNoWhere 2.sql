SELECT A.ANIMAL_ID,A.NAME FROM ANIMAL_OUTS B 
INNER JOIN ANIMAL_INS A 
ON A.ANIMAL_ID=B.ANIMAL_ID 
WHERE A.DATETIME > B.DATETIME 
ORDER BY A.DATETIME;