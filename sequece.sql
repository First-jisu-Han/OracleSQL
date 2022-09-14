CREATE SEQUNECE his_seq 
START WITH 100 
INCREMENT BY 1 
MAXVALUE 500000 
MINVALUE 100
CYCLE 
ORDER 
CACHE 20; 



INSERT INTO BANKINGMASTER ( bank_id , bank_name , bank_dvcd , bank_dvcd_nm ) VALUES ( his_seq.NEXTVAL,' pbank' , '1213' , '중규모') 