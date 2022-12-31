SELECT A.FLAVOR FROM FIRST_HALF A INNER JOIN ICECREAM_INFO B on A.flavor=B.flavor WHERE A.TOTAL_ORDER > 3000 and B.INGREDIENT_TYPE='fruit_based'
ORDER BY TOTAL_ORDER DESC;