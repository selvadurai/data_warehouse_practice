CREATE OR REPLACE PROCEDURE createProduct(suggate_key IN number)IS
v_age          pls_integer;
product_choice number(2);
BEGIN

SELECT AGE INTO V_AGE 
FROM CUSTOMER_TABLE
WHERE CUSTOMER_ID=SUGGATE_KEY;

IF V_AGE>=0 AND V_AGE<=12 THEN

    SELECT dbms_random.value(1,3) num INTO product_choice
    FROM dual;
    
    CASE product_choice
        WHEN  1  THEN INSERT INTO PRODUCT_DIMENSION values(suggate_key,'p116','pacifier','baby sucks on it','children',2.00,4.00,'infants/young children');
        WHEN  2  THEN INSERT INTO PRODUCT_DIMENSION values(suggate_key,'p101','baby bib','bib wear for baby','clothing',4.50,10.20,'infants/young children');
        ELSE INSERT INTO PRODUCT_DIMENSION values(suggate_key,'p107','kids drinking cup','fun drinking cup','kitchen',3.50,8.20,'infants/young children');
   END CASE;
   
   ELSIF  V_AGE>=13 AND V_AGE<=25 THEN 
     
      SELECT dbms_random.value(1,4) num INTO product_choice
      FROM dual;
     
     
     CASE product_choice
        WHEN  1  THEN  INSERT INTO product_dimension values(suggate_key,'p102','jersey','toronto blue jays','clothing',24.50,89.20,'teenagers/young adults');
        WHEN  2  THEN  INSERT INTO product_dimension values(suggate_key,'p111','bling bling hat','lastest hip hop fashion','clothing',5.50,10.20,'teenagers/young adults');
        WHEN  3  THEN INSERT INTO  product_dimension values(suggate_key,'p115','skate board','custom skate board from tony hawk','sports',30.00,50.00,'teenagers/young adults');
        ELSE    INSERT INTO product_dimension values(suggate_key,'p108','t-shirt','custom tshirt','clothing',1.50,12.20,'all ages');
    end case;


  ELSIF  V_AGE>=26 AND V_AGE<=59 THEN 
        SELECT dbms_random.value(1,5) num INTO product_choice
        FROM dual;
        
      CASE product_choice
        WHEN  1  THEN  INSERT INTO product_dimension values(suggate_key,'p106','baseball cap','toronto raptors adult size','clothing',5.50,10.20,'adults');
        WHEN  2  THEN  INSERT INTO product_dimension values(suggate_key,'p112','work ties','tie for the office','clothing',3.50,10.20,'adults');
        WHEN  3  THEN  INSERT INTO product_dimension values(suggate_key,'p113','golf club','custom club for golfing','sports',200.50,300.20,'adults');
        WHEN  4  THEN  INSERT INTO product_dimension  values(suggate_key,'p114','work jeans','custom work jeans for adults','clothing',40.56,60.20,'adults');
        ELSE    INSERT INTO product_dimension values(suggate_key,'p108','t-shirt','custom tshirt','clothing',1.50,12.20,'all ages');
    end case;
    
    ELSIF  V_AGE>=60 THEN 
        SELECT dbms_random.value(1,4) num INTO product_choice
        FROM dual;
        
      CASE product_choice
    
        WHEN  1  THEN  INSERT INTO product_dimension  values(suggate_key,'p110','retirement hat','hat for old ppl','clothing',5.5,10.20,'eldery');
        WHEN  2  THEN  INSERT INTO product_dimension  values(suggate_key,'p109','retirement plaque','plaque for old ppl','plaque',83.50,100.20,'eldery');
        WHEN  3  THEN  INSERT INTO product_dimension  values(suggate_key,'p104','cane','custome cane for old ppl','misc',16.50,23.20,'eldery');
        ELSE    INSERT INTO product_dimension values(suggate_key,'p108','t-shirt','custom tshirt','clothing',1.50,12.20,'all ages');
    end case;
    
    
    ELSE
      INSERT INTO product_dimension values(suggate_key,'p108','t-shirt','custom tshirt','clothing',1.50,12.20,'all ages');
    

  
  END IF;
        
    
END;
