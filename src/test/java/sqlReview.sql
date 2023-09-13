select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

select * from EMPLOYEES;

SELECT diStiNct FIRST_NAME from EMPLOYEES;

-- add note

SELECT FIRST_NAME , LAST_NAME FROM EMPLOYEES
WHERE FIRST_NAME = 'David';

--  =  >   <    >=    <=   !=    <>
select FIRST_NAME , SALARY from EMPLOYEES
where  SALARY > 10000;

select  EMPLOYEE_ID, SALARY from EMPLOYEES
where  SALARY <= 6000;

select JOB_ID from EMPLOYEES
where  JOB_ID <> 'SA_CLERK';

select count(*) from EMPLOYEES;

select count( DEPARTMENT_ID) from EMPLOYEES;
select count( distinct DEPARTMENT_ID) from EMPLOYEES;
select DEPARTMENT_ID from EMPLOYEES;
select distinct DEPARTMENT_ID from EMPLOYEES;

select SALARY from EMPLOYEES
order by SALARY;

select SALARY from EMPLOYEES
order by SALARY asc;

select SALARY from EMPLOYEES
order by SALARY desc ;

select FIRST_NAME from EMPLOYEES
order by FIRST_NAME;

select FIRST_NAME, LAST_NAME from  EMPLOYEES
order by FIRST_NAME asc , LAST_NAME desc ;

select FIRST_NAME , SALARY from EMPLOYEES
where SALARY > 5000 and SALARY < 9000;

select FIRST_NAME, SALARY from EMPLOYEES
where  SALARY between 5000 and 9000;

select COUNTRY_ID, COUNTRY_NAME from COUNTRIES
where COUNTRY_ID = 'IT' or COUNTRY_ID = 'JP' OR COUNTRY_ID = 'US';

SELECT  COUNTRY_NAME, COUNTRY_ID FROM  COUNTRIES
WHERE  COUNTRY_ID IN ('IT','JP','US');

SELECT FIRST_NAME FROM EMPLOYEES
WHERE  FIRST_NAME LIKE 'Da%';

select  LAST_NAME from EMPLOYEES
where  LAST_NAME like '%er';

select JOB_ID from EMPLOYEES
where  JOB_ID like '%CLERK';

SELECT FIRST_NAME FROM  EMPLOYEES
WHERE  FIRST_NAME LIKE '____';

-- AGGREGATION FUNCTIONS     MAX   MIN   SUM   AVERAGE
select max(SALARY), min(SALARY), avg(SALARY), sum(SALARY) from EMPLOYEES;
select max(SALARY), min(SALARY), round(avg(SALARY),2), sum(SALARY) from EMPLOYEES;

select DEPARTMENT_ID, max(salary) from EMPLOYEES
group by  DEPARTMENT_ID;

select count(FIRST_NAME), DEPARTMENT_ID from EMPLOYEES
group by DEPARTMENT_ID
having DEPARTMENT_ID is not null ;


select DEPARTMENT_ID, max(salary) from EMPLOYEES
where DEPARTMENT_ID != 100
group by  DEPARTMENT_ID
having max(SALARY) > 10000;

select FIRST_NAME, SALARY from EMPLOYEES
where ROWNUM < 11;

select max(SALARY) from EMPLOYEES;

select FIRST_NAME from EMPLOYEES
where  SALARY = (select max(SALARY) from EMPLOYEES);

select max(SALARY) from EMPLOYEES;

select max(salary) from EMPLOYEES
where salary !=(select max(SALARY) from EMPLOYEES) ;

select distinct salary from EMPLOYEES
order by salary desc;



-- concatenation
select FIRST_NAME || ' ' || LAST_NAME as fullName from EMPLOYEES;

-- upper or lower
select lower(FIRST_NAME) || ' ' || upper(LAST_NAME) as fullname from EMPLOYEES;

-- length
select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES;

-- substring
select FIRST_NAME, substr(FIRST_NAME,1,3) from EMPLOYEES;
select FIRST_NAME, substr(FIRST_NAME,2,3) from EMPLOYEES;

--init cap
select initcap(email) from EMPLOYEES;
















