-- Assignment 4
-- 1. City wide count of employees aranged in descending order
-- 2. Details of emaployees who doesn't have account on yahoo domain (imag.com)
-- 3. From EMP_SAL table designation wise total cost of members arranged in descending order of total cost

use DEMO;

select *
from EMP;

select CITY, count(CITY) as EMP_COUNT
from EMP
group by CITY
order by EMP_COUNT DESC; 

-- 2. Details of emaployees who doesn't have account on yahoo domain (imag.com)
select *
from EMP
where EMAIL not like '%imag.com';

-- 3. From EMP_SAL table designation wise total cost of members arranged in descending order of total cost
select *
from EMP_SAL;

select DESI, sum(SALARY) as TOTAL_COST
from EMP_SAL
group by DESI
order by TOTAL_COST DESC;