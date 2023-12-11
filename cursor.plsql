CREATE TABLE departments(dept_id NUMBER PRIMARY KEY, dept_name VARCHAR2(30), fees NUMBER);

INSERT INTO departments(dept_id, dept_name, fees) VALUES(1, 'cs', 230);
INSERT INTO departments(dept_id, dept_name, fees) VALUES(2, 'ec',330);
INSERT INTO departments(dept_id, dept_name, fees) VALUES(3, 'eee',340); 
INSERT INTO departments(dept_id, dept_name, fees) VALUES(4, 'bio',250); 

DECLARE
v_id departments.dept_id%TYPE;
v_name departments.dept_name%TYPE;
v_fees departments.fees%TYPE;
CURSOR dept_cursor IS 
    SELECT dept_id,dept_name,fees FROM departments WHERE fees>=300;

BEGIN
OPEN dept_cursor;

LOOP
FETCH dept_cursor INTO v_id,v_name,v_fees;
EXIT WHEN dept_cursor%NOTFOUND;
dbms_output.put_line('department id: '||v_id);
dbms_output.put_line('department name: '||v_name);
dbms_output.put_line('department fees: '||v_fees);

END LOOP;
CLOSE dept_cursor;
END;
/
