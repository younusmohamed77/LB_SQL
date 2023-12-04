use DEMO;

-- In the DEMO database create table EMP_SAL with the following fields
	-- EID DEPT DESI DOJ SALARY
create table EMP_SAL (
	EID char(5),
	DEPT varchar(15),
	DESI varchar(10),
	DOJ date,
	SALARY int)

select *
from EMP_SAL;

-- Insert 7 appropriate records in the EMP_SAL table

insert INTO EMP_SAL (EID, DEPT, DESI, DOJ, SALARY)
values 
	('E0001', 'Security', 'Manager', '01-AUG-2008', '15000'),
	('E0002', 'FM SUS', 'GenManager', '14-May-2000', '55000'),
	('E0003', 'FM SUS', 'Admin', '21-Mar-2015', '7000'),
	('E0004', 'Marketing', 'Officer', '01-Jan-2022', '6000'),
	('E0005', 'Ops', 'DC','07-Jun-2017', '12000'),
	('E0008', 'HR', 'DC', '12-Jan-2022', '10000'),
		

-- Use SELECT command to view the contents of EMP_SAL table
select *
from EMP_SAL;

-- From EMP table list all employees with last name as Syed
select *
from EMP
where NAME like '%Syed%'; 

-- Increase the salary of all managers by 10%
update EMP_SAL set SALARY = SALARY + 0.1*SALARY
WHERE DESI like '%Manager%';

select *
from EMP_SAL;