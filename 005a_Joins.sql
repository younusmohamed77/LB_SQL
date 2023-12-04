-- Assignment 5
-- 1. In EMP table display EID NAME CITY DOJ DEPT DESI SALARY of all Delhi employees (Coimbatore)
-- 2. Details of all the employees whose salary details are not available

select *
from EMP;

select * 
from EMP_SAL;

select EMP.EID, EMP.NAME, EMP.CITY,
	   EMP_SAL.DOJ, EMP_SAL.DEPT, EMP_SAL.DESI, EMP_SAL.SALARY
from EMP
inner join EMP_SAL
on EMP.EID = EMP_SAL.EID
where SALARY is NULL;

-- 2. Details of all the employees whose salary details are not available
-- Adding one row in EMP_SAL table without designation and salary
insert into EMP_SAL (EID, DESI, DOJ)
values ('E0010', 'Asso', '10-Jan-2020');

select EMP.EID, EMP.NAME, EMP.CITY,
	   EMP_SAL.DOJ, EMP_SAL.DEPT, EMP_SAL.DESI, EMP_SAL.SALARY
from EMP
inner join EMP_SAL
on EMP.EID = EMP_SAL.EID
where SALARY = ;

