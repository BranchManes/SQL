SELECT * FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME)>10;

SELECT * FROM EMPLOYEES
WHERE MOD(SALARY,1000)=0;



SELECT* FROM EMPLOYEES
WHERE UPPER(FIRST_NAME) LIKE '%M' AND LENGTH(FIRST_NAME)>5;

SELECT NEXT_DAY(SYSDATE,5) FROM DUAL;

SELECT * FROM EMPLOYEES
WHERE MONTHS_BETWEEN(SYSDATE,HIRE_DATE)/12 >12;

SELECT PHONE_NUMBER,
REPLACE(PHONE_NUMBER,'.','-') NEW_PHONE_NUMBER
FROM EMPLOYEES;

SELECT FIRST_NAME,LAST_NAME,JOB_ID,
UPPER(FIRST_NAME),LOWER(LAST_NAME),INITCAP(JOB_ID)
FROM EMPLOYEES;

SELECT FIRST_NAME,SALARY,
CONCAT(FIRST_NAME,SALARY) AS CONCAT 
FROM EMPLOYEES;

SELECT HIRE_DATE,
ROUND(HIRE_DATE,'MM'),ROUND(HIRE_DATE,'YYYY')
FROM EMPLOYEES;

SELECT RPAD(FIRST_NAME,10,'$'), LPAD(LAST_NAME,15,'!')
FROM EMPLOYEES;

SELECT '!!!HELLO!! MY FRIEND!!!!!!!!',
TRIM('!' FROM '!!!HELLO!! MY FRIEND!!!!!!!!')
FROM DUAL;

SELECT SALARY,SALARY *3.1415 AS INCREASED_SALARY,ROUND(SALARY*3.1415),TRUNC(SALARY*3.1415,-3)/1000 
FROM EMPLOYEES;

SELECT HIRE_DATE,ADD_MONTHS(HIRE_DATE,6) AS DATE_IN_SIX_MONTHS, LAST_DAY(HIRE_DATE) AS_date_of_the_last_day_of_th_month
FROM EMPLOYEES;

SELECT FIRST_NAME, INSTR(FIRST_NAME,'a',1,2) 
FROM EMPLOYEES;

SELECT PHONE_NUMBER, SUBSTR(PHONE_NUMBER,1,3)
FROM EMPLOYEES
WHERE PHONE_NUMBER LIKE '___.___.____';

