CREATE OR REPLACE PROCEDURE CreateProductGroup(suggate_key IN number)IS
 age                      customer_table.age%type;   
 product_group_name       VARCHAR2(30);
 product_group_code       VARCHAR2(5);
BEGIN
  --Get AGE--
  SELECT AGE INTO age
  FROM CUSTOMER_TABLE
  WHERE CUSTOMER_ID=suggate_key;
  

   
  IF AGE >= 0 AND AGE <=12 THEN
     product_group_name:='infants/young children';
     product_group_code:='in1';
  ELSIF AGE >=13 AND AGE<=25 THEN
     product_group_name:='teenagers/young adults';
     product_group_code:='tn2';
  ELSIF AGE>=26 AND AGE<=59 THEN
     product_group_name:='adults';
     product_group_code:='ad3';
  ELSE 
     product_group_name:='eldery';
     product_group_code:='ed4';
  END IF;
  
   INSERT INTO PRODUCT_GROUP_DIMENSION VALUES(suggate_key,PRODUCT_GROUP_CODE,PRODUCT_GROUP_NAME,suggate_key);
  
  
  
END;
