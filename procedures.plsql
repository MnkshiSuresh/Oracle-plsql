CREATE TABLE departments(dept_id number,dept_name varchar(30));
INSERT INTO departments(dept_id,dept_name) VALUES(1,'cs');

CREATE OR REPLACE PROCEDURE add_dept(d_id IN departments.dept_id%TYPE,d_name IN departments.dept_name%TYPE) IS
BEGIN
INSERT INTO departments VALUES(d_id,d_name);
dbms_output.put_line('department added');
END;
/

execute add_dept(2,'ec');
SELECT * FROM departments;
