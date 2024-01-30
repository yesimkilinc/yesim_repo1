2)Return number of employees registered for each location.

Her lokasyon için kayıtlı çalışanların sayısını döndürme

SELECT DEPARTMENT_ID, count(*) FROM HR.EMPLOYEES group by DEPARTMENT_ID
