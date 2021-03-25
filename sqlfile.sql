select * from system.employee;
select * from system.reimbursment;

SELECT * FROM SYSTEM.REIMBURSMENT WHERE CURRENT_STATE = 'pending' AND EMPLOYEE_ID = 4;

INSERT INTO SYSTEM.REIMBURSMENT (EMPLOYEE_ID, AMOUNT,CURRENT_STATE, IMAGE_URL, REASON) VALUES ('1','33','pending','https://www.linkedin.com/in/monaborisagar/','this is personal ');

INSERT INTO "SYSTEM"."EMPLOYEE" (NAME, USERNAME, EMAIL, PASSWORD, MANAGER_ID, IS_MANAGER) VALUES ('Mona','Mona','monaborisagar@gmail.com','Mona@123', '1', '1');



ALTER TABLE system.reimbursment MODIFY reimbursmentid GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MINVALUE 1 MAXVALUE 99999999999999999;


ALTER TABLE system.employee MODIFY EMPLOYEE_ID NUMBER DEFAULT sequence1.NEXTVAL; //this is used to set autoincrement to employ_id in sql developer


ALTER TABLE system.reimbursment MODIFY reimbursmentid NUMBER DEFAULT SEQUENCE2.NEXTVAL; //this is used to set autoincrement to employ_id in sql developer