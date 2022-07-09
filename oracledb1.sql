create user han IDENTIFIED BY han
default tablespace users
temporary tablespace temp;

grant connect, dba to han;

select dbms_xdb.gethttpport() from dual;
exec dbms_xdb.sethttpport(9090);

CREATE TABLE employee(
employeeId VARCHAR2(5) Not Null,
employeeName VARCHAR2(20) Not Null, 
employeeAge NUMBER(20) Not Null); 

select * from employee; 

Insert into employee Values(



