CREATE USER han IDENTIFIED BY han
    DEFAULT TABLESPACE users
    TEMPORARY TABLESPACE temp;

GRANT connect, dba TO han;

SELECT
    dbms_xdb.gethttpport()
FROM
    dual;

exec dbms_xdb.sethttpport(9090);

CREATE TABLE employee (
    employeeid   VARCHAR2(5) NOT NULL,
    employeename VARCHAR2(20) NOT NULL,
    employeeage  NUMBER(20) NOT NULL
);


Insert into employee Values('1','jisu',26); 
Insert into employee Values('2','han',26); 
Insert into employee Values('3','re',26); 
Insert into employee Values('4','me',26); 
Insert into employee Values('5','cop',26); 

select * from employee; 


SELECT
    username
FROM
    dba_users
WHERE
    username = 'HR';

SELECT
    *
FROM
    dba_users;

SELECT DISTINCT
    dba_users.account_status,
    username
FROM
    dba_users;

SELECT
    dba_users.expiry_date,
    dba_users.expiry_date + 10
FROM
    dba_users
WHERE
    default_tablespace = 'SYSTEM';


SELECT
    dba_users.username||dba_users.password||dba_users.user_id as concatenation_practice 
    
FROM
dba_users;

SELECT
    dba_users.username
    || dba_users.password
    || 'and'
    || dba_users.user_id AS concatenation_and_practice
FROM
    dba_users;
