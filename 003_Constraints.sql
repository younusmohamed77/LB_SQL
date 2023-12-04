-- Assignment 3
-- Create two tables EMP and EMP_SAL as per the below structure
-- 1. EMPID constraint as Primary Key
-- 2. Name constraint as not null
-- 3. No employee from UTTAM NAGAR
-- 4. City constraint DEL, GGN, FBD, NOIDA (Coimbatore, Wellington, Connoor, Ooty)
-- 5. Phone number should be unique
-- 6. EMAIL should be Gmail/Yahoo domain (imag)
-- 7. DOB less than or equal to '1-Jan-2000'
-- 8. In EMP_SAL table EMPID should be foriegn key
-- 9. DEPT should be HR, MIS, OPS, IT ADMIN, TEMP (Security, FM SUS, Marketing, Ops, HR, Services, TEMP)
-- 10. Designation should be ASSO, MGR, VP, DIR
-- 11. BASIC should be greater than or equal to 20000 (SALARY >= 5000)
-- 12. by default DEPT should be TEMP

use DEMO;

-- 1. EMPID constraint as Primary Key
select *
from EMP;

-- Not executing because we already have another constraint to check the format of EID
-- First deleting the previous constraint and then making it not null and adding it again
alter table EMP
drop constraint EID_CHCK;

alter table EMP
alter column EID varchar(5) NOT NULL;    -- Column should be not null to be a primary key

ALTER TABLE EMP ADD CONSTRAINT EID_CHCK CHECK(EID LIKE 'E%');    -- Constraint from the first assignment

alter table EMP
add constraint PK_EID primary key (EID);

-- 2. Name constraint as not null
alter table EMP
alter column NAME varchar(30) NOT NULL;

-- 3. No employee from UTTAM NAGAR
alter table EMP
add constraint ADDR_CHCK check(ADDR NOT LIKE '%UTTAM NAGAR%');    -- Double quotes doesn't work here

-- 4. City constraint DEL, GGN, FBD, NOIDA (Coimbatore, Wellington, Connoor, Ooty)
-- Since there are other values in the table already that needs to be changed

select * 
from EMP
where CITY != 'Coimbatore' AND CITY != 'Wellington' AND CITY != 'Connoor' AND CITY != 'Ooty';

update EMP
set CITY = 'Coimbatore'
where EID = 'E0006' or EID = 'E0009';

alter table EMP
add constraint CITY_CHCK check(CITY = 'Coimbatore' OR CITY = 'Wellington' OR CITY = 'Connoor' OR CITY = 'Ooty');

-- 5. Phone number should be unique
alter table EMP
add constraint PNO_UNQ Unique(PHONE_NO);

-- 6. EMAIL should be Gmail/Yahoo domain (imag)
alter table EMP
add constraint EM_CHCK check(EMAIL LIKE '%imag%');

-- 7. DOB less than or equal to '1-Jan-2000'
alter table EMP
add constraint DB_CHCH check(DOB <= '1-Jan-2000');

-- 8. In EMP_SAL table EMPID should be foreign key
-- First setting it as NOT NULL
select *
from EMP_SAL;

alter table EMP_SAL
alter column EID varchar(5) NOT NULL; 

alter table EMP_SAL
add constraint FK_EID primary key (EID);

-- 9. DEPT should be HR, MIS, OPS, IT ADMIN, TEMP (Security, FM SUS, Marketing, Ops, HR, Services, TEMP)
alter table EMP_SAL
add constraint DEP_CHCK check (DEPT = 'Security' OR DEPT = 'FM SUS' OR DEPT = 'Marketing' OR DEPT = 'Ops' OR DEPT = 'HR' OR DEPT = 'Services' OR DEPT = 'TEMP');

-- 10. Designation should be ASSO, MGR, VP, DIR
update EMP_SAL
set DESI = 'ASSO' where DESI = 'DC' or DESI = 'Admin' or DESI = 'Officer';

update EMP_SAL
set DESI = 'MGR' where DESI = 'Manager';

update EMP_SAL
set DESI = 'VP' where DESI = 'GenManager';

alter table EMP_SAL
add constraint DS_CHCK check (DESI = 'ASSO' OR DESI = 'MGR' OR DESI = 'VP' or DESI = 'DIR');

-- 11. BASIC should be greater than or equal to 20000 (SALARY >= 5000)
alter table EMP_SAL
add constraint SLR_CHCK check (salary >= 5000);

-- 12. by default DEPT should be TEMP
alter table EMP_SAL
add constraint DEP_DEF default('TEMP') for DEPT;