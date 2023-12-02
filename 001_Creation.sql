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

ALTER TABLE EMP ADD CONSTRAINT NAME_CHCK CHECK(NAME IS NOT NULL);
ALTER TABLE EMP ADD CONSTRAINT EID_CHCK CHECK(EID LIKE 'E%');

-- Insert 10 appropriate records in the EMP table.
select *
from EMP;

INSERT INTO EMP (EID, NAME, ADDR, CITY, DOB, PHONE_NO,	EMAIL)
VALUES ('E001', 'Kaleemullah Syed', 'Elango Nagar, Veerapandi Pirivu', 'Coimbatore', '21-May-1985', '9876543210','kaleemullah.syed@imag.com');

UPDATE EMP
SET EID = 'E0001'
WHERE EID = 'E001';

INSERT INTO EMP (EID, NAME, ADDR, CITY, DOB, PHONE_NO,	EMAIL)
VALUES
	('E0002', 'Syed Mohamed Ali', 'Bogi Street', 'Wellington', '10-Oct-1979', '8765432190', 'syed.mohamed@imag.com'),
	('E0003', 'Yasif Mohamed', 'Mel Bogi Street', 'Wellington', '14-	May-1991', '8976543210', 'yasif.mohamed@imag.com'),
	('E0004', 'Mohamed Sherrif', 'Elango Nagar, Veerapandi Pirivu', 'Coimbatore', '01-Nov-1990', '9765432108', 'sherrif.mohamed@imag.ae'),
	('E0005', 'Ismail Ameer', 'Mount Road, Connoor', 'Connoor', '14-Mar-1991', '9082714653', 'ismail.ameer@imag.in'),
	('E0006', 'Sultan Syed', 'S.M. Nagar', 'Metupalayam','21-Nov-1984','8071936542','sultan.syed@imag.ae'),
	('E0007', 'Mohamed Younus', 'Pudhunagar, Kandal', 'Ooty', '07-Dec-1995', '8072848392', 'younus.mohamed@imag.com'),
	('E0008', 'Mohamed Irfan', 'Elango Nagar, Veerapandi Pirivu', 'Coimbatore', '01-Aug-1996', '9944509462', 'irfan.mohamed@imag.ae'),
	('E0009', 'Sikanthar Suber Ali', 'Pollachi Rasakkapalayam', 'Pollachi', '21-May-1999', '9638527410', 'sikanthar.ali@imag.in'),
	('E0010', 'Shameer Ahmed', 'Pudhunagar, Kandal', 'Ooty', '10-Mar-1999', '8489259842', 'shameer.ahmed@imag.in');

ALTER TABLE EMP ALTER Column City varchar(15);

-- Use SELECT command to view the contents of EMP table
select *
from EMP;