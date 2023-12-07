DECLARE
   v_lastname employees.lasr_name%TYPE;
   v_salary employees.salary%TYPE;
BEGIN
SELECT last_name,salary
INTO v_lastname,v_salary
FROM employees
WHERE employee_id=100;

dbms_output.put_line(v_lastname || 'earns' || v_salary);

EXCEPTION
WHEN NO_DATA_FOUND THEN 
     dbms_output.put_line('No record');
WHEN TOO_MANY_ROWS THEN 
     dbms_output.put_line('More than 1 records are found');
WHEN OTHERS THEN
     dbms_output.put_line('Some error found');
     
END;
/
