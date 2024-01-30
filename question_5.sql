5)	(Question 3 cont.) Return reverse of those department names. (For example => input = ‘Benefits’, output = ‘stifeneB’). (HINT: do not use reverse function)
Bunu nasıl yazacağımı bilemedim. 

with strings as (select DEPARTMENTS.DEPARTMENT_NAME str from HR.DEPARTMENTS)
select str,
       replace(sys_connect_by_path(substr (str, level*-1, 1), '~|'), '~|') rev_str 
from   strings
where  connect_by_isleaf = 1
connect by prior str = str                  
           and prior sys_guid() is not null  
           and level <= length(str);