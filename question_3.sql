3)Some departments don’t have any registered employee record. Return 5th letter of those department names. (Don’t try to understand logic here because there is none. It’s just practice.)

Departman tablosunda olacak departman ama çalışan tablosunda o departmana ait kayıt olmayanları döndürüp departman adlarının 5. Harfini döndürme.


SELECT DEPARTMENT_NAME, SUBSTR(DEPARTMENT_NAME, 5,1)
FROM HR.DEPARTMENTS FULL OUTER JOIN HR.EMPLOYEES
ON DEPARTMENTS.DEPARTMENT_ID=EMPLOYEES.DEPARTMENT_ID
WHERE EMPLOYEES.DEPARTMENT_ID IS NULL AND DEPARTMENTS.DEPARTMENT_ID IS NOT NULL--16
