create or replace PROCEDURE createStore(suggate_key IN number)IS

store_code1      VARCHAR2(4);
address         VARCHAR2(30);
city            VARCHAR2(20);
province        VARCHAR2(20);
phone_number    VARCHAR2(20);

BEGIN
 
   --random male name from reference table---
    SELECT STORE_CODE into STORE_CODE1
    FROM ( SELECT STORE_CODE FROM STORE_REFERENCE ORDER BY dbms_random.value )
    WHERE rownum = 1;
    
    SELECT STORE_ADDRESS into ADDRESS
    FROM  STORE_REFERENCE
    WHERE STORE_CODE=STORE_CODE1;

    SELECT PROVINCE into PROVINCE
    FROM  STORE_REFERENCE
    WHERE STORE_CODE=STORE_CODE1;
    
    
    SELECT CITY into CITY
    FROM  STORE_REFERENCE
    WHERE STORE_CODE=STORE_CODE1;
    
    SELECT PROVINCE into PROVINCE
    FROM  STORE_REFERENCE
    WHERE STORE_CODE=STORE_CODE1;
    
    INSERT INTO STORE_DIMENSION VALUES(suggate_key,STORE_CODE,ADDRESS,CITY,PROVINCE,PHONE_NUMBER); 
        
    
END;