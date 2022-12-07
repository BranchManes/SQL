SELECT MANAGER_ID, TO_CHAR(NULL) AS JOB_ID,TO_NUMBER(NULL) AS DEPARTMENT_ID,SUM(SALARY)
FROM EMPLOYEES
GROUP BY MANAGER_ID
UNION
SELECT TO_NUMBER(NULL),JOB_ID,TO_NUMBER(NULL),SUM(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID
UNION
SELECT TO_NUMBER(NULL), TO_CHAR(NULL),DEPARTMENT_ID,SUM(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID FROM EMPLOYEES
WHERE MANAGER_ID =100
MINUS
SELECT DEPARTMENT_ID FROM EMPLOYEES
WHERE MANAGER_ID=145
MINUS
SELECT DEPARTMENT_ID FROM EMPLOYEES
WHERE MANAGER_ID =201;

SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_a%' AND UPPER(LAST_NAME) LIKE '%S%'
UNION
SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_a%' AND UPPER(LAST_NAME) LIKE '%S%'
ORDER BY SALARY DESC;

SELECT COUNTRY_ID AS ID,COUNTRY_NAME AS COUNTRY,REGION_NAME AS REGION FROM COUNTRIES C
JOIN REGIONS R ON(C.REGION_ID = R.REGION_ID)
WHERE LENGTH(COUNTRY_NAME)>8
UNION
SELECT COUNTRY_ID AS ID,COUNTRY_NAME AS COUNTRY,REGION_NAME AS REGION FROM COUNTRIES C
JOIN REGIONS R ON(C.REGION_ID = R.REGION_ID)
WHERE REGION_NAME !='Europe'
ORDER BY 2 DESC;

SELECT LOCATION_ID,POSTAL_CODE,CITY FROM LOCATIONS L
JOIN COUNTRIES C ON(L.COUNTRY_ID = C.COUNTRY_ID)
WHERE COUNTRY_NAME NOT IN ('Germany','Italy')
UNION
SELECT LOCATION_ID,POSTAL_CODE,CITY FROM LOCATIONS L
JOIN COUNTRIES C ON(L.COUNTRY_ID = C.COUNTRY_ID)
WHERE POSTAL_CODE LIKE '%9%';


