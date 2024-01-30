4)(Question 3 cont.) Return the string between 1st letter from the end and 3th letter from the end.  . (For example => input = ‘Benefits’, output = ‘sti’).

SELECT LAST_NAME,  SUBSTR(LAST_NAME, -3) AS LAST_NAME1 , REVERSE(SUBSTR(LAST_NAME, -3)) AS LAST_NAME2
FROM HR.EMPLOYEES
