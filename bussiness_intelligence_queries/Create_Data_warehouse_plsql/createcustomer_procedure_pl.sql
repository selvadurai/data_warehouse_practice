
CREATE OR REPLACE PROCEDURE createCustomer(suggate_key IN number)IS
choice_sex      pls_integer;
male_name       top_male_reference_table.name%type;
female_name     top_female_reference_table.name%type;
sex             customer_table.sex%type;
age             customer_table.age%type; 

BEGIN
    --choice sex-- 
    SELECT dbms_random.value(1,2) num INTO choice_sex
    FROM dual;
    
    --select age--
    SELECT dbms_random.value(0,99) num INTO age
    FROM dual;
   
   --random male name from reference table---
    SELECT name into male_name
    FROM ( SELECT name FROM TOP_MALE_REFERENCE_TABLE ORDER BY dbms_random.value )
    WHERE rownum = 1;
    
    --random female name from reference table---
    SELECT name into female_name
    FROM ( SELECT name FROM TOP_FEMALE_REFERENCE_TABLE ORDER BY dbms_random.value )
    WHERE rownum = 1;
    
     IF choice_sex =1 THEN
        sex:='M';
        INSERT INTO CUSTOMER_TABLE  VALUES (suggate_key,male_name,age,sex);
     ELSE
       sex:='F';
       INSERT INTO CUSTOMER_TABLE   VALUES (suggate_key,female_name,age,sex);
     END IF;
    
    
    
END;



