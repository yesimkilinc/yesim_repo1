SELECT * FROM( 
SELECT SALARY, RANK() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS RN
FROM HR.EMPLOYEES 
)WHERE RN=1