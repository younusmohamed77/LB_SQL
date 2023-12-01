-- Create a database DEMO
create DATABASE DEMO;

-- Create table EMP with the following fields:
-- EID NAME ADDR CITY DOB PHONE NO. EMAIL, EID should be like 'E0001'
use DEMO;

create TABLE EMP(
EID char(5),
NAME varchar(30),
ADDR varchar(50),
CITY varchar(10),
DOB date,
PHONE_NO varchar(13),
EMAIL varchar(30)
);

-- Insert 10 appropriate records in the EMP table.
select *
from EMP;