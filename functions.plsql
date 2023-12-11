CREATE TABLE price(id NUMBER PRIMARY KEY, name VARCHAR2(20),amount1 NUMBER,amount2 NUMBER,amount3 NUMBER,amount4 NUMBER);
INSERT INTO price(id,name,amount1,amount2,amount3,amount4) VALUES(1,'anna',20,30,40,22);
INSERT INTO price(id,name,amount1,amount2,amount3,amount4) VALUES(2,'manu',40,44,66,21);
INSERT INTO price(id,name,amount1,amount2,amount3,amount4) VALUES(3,'miya',55,43,77,89);
INSERT INTO price(id,name,amount1,amount2,amount3,amount4) VALUES(4,'vijin',2,33,12,8);
INSERT INTO price(id,name,amount1,amount2,amount3,amount4) VALUES(5,'joseph',79,45,2,78);
INSERT INTO price(id,name,amount1,amount2,amount3,amount4) VALUES(6,'georgia',80,65,12,9);

CREATE OR REPLACE FUNCTION get_total_amount(v_id IN NUMBER) RETURN NUMBER IS
amnt1 NUMBER;
amnt2 NUMBER;
amnt3 NUMBER;
amnt4 NUMBER;
total NUMBER;
BEGIN
SELECT amount1,amount2,amount3,amount4 INTO amnt1,amnt2,amnt3,amnt4 FROM price WHERE id=v_id;
total:= amnt1+amnt2+amnt3+amnt4;
RETURN total;

EXCEPTION
WHEN NO_DATA_FOUND THEN
RETURN NULL;
WHEN OTHERS THEN
RETURN NULL;
END get_total_amount;
/

DECLARE
cash NUMBER;
BEGIN
cash := get_total_amount(2);
dbms_output.put_line('total amount: '|| cash);
END;
/
