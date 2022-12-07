SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY < (
SELECT MAX(SALARY) FROM EMPLOYEES);

SELECT DEPARTMENT_NAME,MAX(SALARY),MIN(SALARY),COUNT(*)
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
GROUP BY DEPARTMENT_NAME
HAVING MAX(SALARY)> (SELECT SALARY FROM EMPLOYEES
                     WHERE EMPLOYEE_ID =103);
                     
SELECT DEPARTMENT_NAME,MAX(SALARY),MIN(SALARY),COUNT(*)
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
GROUP BY DEPARTMENT_NAME
HAVING MAX(SALARY)< (SELECT  MAX(SALARY) FROM EMPLOYEES E
                     JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
                     WHERE DEPARTMENT_NAME = 'Sales'
                     GROUP BY DEPARTMENT_NAME);   
                     
 