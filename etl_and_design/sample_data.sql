select * 
from product_dimension
where rownum<10; 

--Sample data from Product_dimension---
/*UCT_ID PRODU PRODUCT_NAME
---------- ----- ------------------------------
PRODUCT_DESC                                       DEPARTMENT
-------------------------------------------------- --------------------
INITIAL_PR RETAIL_PRI TARGET_AGE_DEMOGRAPHIC       
---------- ---------- ------------------------------
      7887 p110  retirement hat                 
hat for old ppl                                    clothing             
       5.5       10.2 eldery                        

      7888 p102  jersey                         
toronto blue jays                                  clothing             
      24.5       89.2 teenagers/young adults        

PRODUCT_ID PRODU PRODUCT_NAME
---------- ----- ------------------------------
PRODUCT_DESC                                       DEPARTMENT
-------------------------------------------------- --------------------
INITIAL_PR RETAIL_PRI TARGET_AGE_DEMOGRAPHIC       
---------- ---------- ------------------------------
      7889 p101  baby bib                       
bib wear for baby                                  clothing             
       4.5       10.2 infants/young children        

      7890 p104  cane                           
custome cane for old ppl                           misc                 
      16.5       23.2 eldery                        

PRODUCT_ID PRODU PRODUCT_NAME
---------- ----- ------------------------------
PRODUCT_DESC                                       DEPARTMENT
-------------------------------------------------- --------------------
INITIAL_PR RETAIL_PRI TARGET_AGE_DEMOGRAPHIC       
---------- ---------- ------------------------------
      7891 p114  work jeans                     
custom work jeans for adults                       clothing             
     40.56       60.2 adults                        

      7892 p110  retirement hat                 
hat for old ppl                                    clothing             
       5.5       10.2 eldery                        

PRODUCT_ID PRODU PRODUCT_NAME
---------- ----- ------------------------------
PRODUCT_DESC                                       DEPARTMENT
-------------------------------------------------- --------------------
INITIAL_PR RETAIL_PRI TARGET_AGE_DEMOGRAPHIC       
---------- ---------- ------------------------------
      7893 p110  retirement hat                 
hat for old ppl                                    clothing             
       5.5       10.2 eldery                        

      7894 p101  baby bib                       
bib wear for baby                                  clothing             
       4.5       10.2 infants/young children        

PRODUCT_ID PRODU PRODUCT_NAME
---------- ----- ------------------------------
PRODUCT_DESC                                       DEPARTMENT
-------------------------------------------------- --------------------
INITIAL_PR RETAIL_PRI TARGET_AGE_DEMOGRAPHIC       
---------- ---------- ------------------------------
      7895 p104  cane                           
custome cane for old ppl                           misc                 
      16.5       23.2 eldery                        


 9 rows selected 
*/

SELECT *
FROM Product_group_dimension
where rownum<=6;

/*PRODUCT_GROUP_ID PRODU PRODUCT_GROUP_NAME
---------------- ----- --------------------------------------------------
CUSTOMER_ID
-----------
            5184 ad3   adults                                             
       5184

            5185 ad3   adults                                             
       5185

            5186 ed4   eldery                                             
       5186


PRODUCT_GROUP_ID PRODU PRODUCT_GROUP_NAME
---------------- ----- --------------------------------------------------
CUSTOMER_ID
-----------
            5187 ad3   adults                                             
       5187

            5188 ed4   eldery                                             
       5188

            5189 ed4   eldery                                             
       5189
*/

select *
from store_reference
where rownum <= 6;

/*

STORE STORE_ADDRESS                       CITY
----- ----------------------------------- -------------------------
PROVINCE                  PHONE_NUMBER  
------------------------- ---------------
S101  123 Dunlop st                       Barrie                    
Ontario                   705444321      

S102  111 Western st                      London                    
Ontario                   705232323      

S103  12 Queen st                         Toronto                   
Ontario                   4165553432     


STORE STORE_ADDRESS                       CITY
----- ----------------------------------- -------------------------
PROVINCE                  PHONE_NUMBER  
------------------------- ---------------
S104  77 Markam rd                        Scrabrough                
Ontario                   6473324343     

S105  12 Parson st                        Keswick                   
Ontario                   7053234323   
*/


select *
from  SALES_FACT_TABLE
where rownum <= 6;
/*
  SALES_ID PRODUCT_GROUP_ID PRODUCT_ID   STORE_ID NUM_UNITS_SOLD    REVENUE
---------- ---------------- ---------- ---------- -------------- ----------
    PROFIT DATE_OF_TRANSACTION
---------- -------------------
      6234             6234       6234       6234              5        116 
      33.5 21-SEP-07          

      6235             6235       6235       6235              4       92.8 
      26.8 09-FEB-13          

      6236             6236       6236       6236              1       60.2 
     19.64 25-MAY-08          


  SALES_ID PRODUCT_GROUP_ID PRODUCT_ID   STORE_ID NUM_UNITS_SOLD    REVENUE
---------- ---------------- ---------- ---------- -------------- ----------
    PROFIT DATE_OF_TRANSACTION
---------- -------------------
      6237             6237       6237       6237             13      158.6 
     139.1 14-DEC-11          

      6238             6238       6238       6238              4     1200.8 
     398.8 06-SEP-13          

      6239             6239       6239       6239             16      163.2 
     107.2 03-JUL-13          
*/
select * 
from  PRODUCT_GROUP_DIMENSION
where rownum <6;
/*
PRODUCT_GROUP_ID PRODU PRODUCT_GROUP_NAME
---------------- ----- --------------------------------------------------
CUSTOMER_ID
-----------
            5184 ad3   adults                                             
       5184

            5185 ad3   adults                                             
       5185

            5186 ed4   eldery                                             
       5186


PRODUCT_GROUP_ID PRODU PRODUCT_GROUP_NAME
---------------- ----- --------------------------------------------------
CUSTOMER_ID
-----------
            5187 ad3   adults                                             
       5187

            5188 ed4   eldery                                             
       5188
*/


select *
from top_female_reference_table
where rownum<6;

/*
 YEAR_TIME NAME                       FREQUENCY
---------- ------------------------- ----------
      1997 AIDAN                              7
      1998 AIDAN                             10
      1999 AIDAN                              8
      2000 AIDAN                              9
      2001 AIDAN                             11
*/


select *
from top_male_reference_table
where rownum<6;
/*
 YEAR_TIME NAME                       FREQUENCY
---------- ------------------------- ----------
      2005 AJANTH                             5
      1995 AJANTHAN                           6
      1971 AJAY                               5
      1973 AJAY                               6
      1975 AJAY                               6
*/

select * 
from population_reference_table
where rownum<6;


/*
  REF_DATE GEO             GEOGRAPHICAL_CLASSIFICATION             POP_ID
---------- --------------- ----------------------------------- ----------
SEX                                      AGE
---------------------------------------- --------------------
VECTOR                    COORDINATE           VALUE
------------------------- --------------- ----------
      2005 "St. John's      Newfoundland and Labrador"              10001 
Both sexes                               10 to 14 years       
v52001311                 1.1.14               10687

      2006 "St. John's      Newfoundland and Labrador"              10001 
Both sexes                               10 to 14 years       
v52001311                 1.1.14               10499

  REF_DATE GEO             GEOGRAPHICAL_CLASSIFICATION             POP_ID
---------- --------------- ----------------------------------- ----------
SEX                                      AGE
---------------------------------------- --------------------
VECTOR                    COORDINATE           VALUE
------------------------- --------------- ----------
      2007 "St. John's      Newfoundland and Labrador"              10001 
Both sexes                               10 to 14 years       
v52001311                 1.1.14               10225

      2008 "St. John's      Newfoundland and Labrador"              10001 
Both sexes                               10 to 14 years       
v52001311                 1.1.14               10020

  REF_DATE GEO             GEOGRAPHICAL_CLASSIFICATION             POP_ID
---------- --------------- ----------------------------------- ----------
SEX                                      AGE
---------------------------------------- --------------------
VECTOR                    COORDINATE           VALUE
------------------------- --------------- ----------
      2009 "St. John's      Newfoundland and Labrador"              10001 
Both sexes                               10 to 14 years       
v52001311                 1.1.14                9832
*/


select *
from life_expectancy_reference;

/*

REF_DATE             GEO                                 SEX
-------------------- ----------------------------------- --------------------
AGE                  VECTOR               COORDINATE                VALUE
-------------------- -------------------- -------------------- ----------
1993/1995            Territories                         Females              
At age 65            v52302219            12.3.2                     17.7

1994/1996            Territories                         Females              
At age 65            v52302219            12.3.2                     18.8

1995/1997            Territories                         Females              
At age 65            v52302219            12.3.2                     18.7


REF_DATE             GEO                                 SEX
-------------------- ----------------------------------- --------------------
AGE                  VECTOR               COORDINATE                VALUE
-------------------- -------------------- -------------------- ----------
1996/1998            Territories                         Females              
At age 65            v52302219            12.3.2                     18.4

1997/1999            Territories                         Females              
At age 65            v52302219            12.3.2                     17.8

1998/2000            Territories                         Females              
At age 65            v52302219            12.3.2                     17.2


REF_DATE             GEO                                 SEX
-------------------- ----------------------------------- --------------------
AGE                  VECTOR               COORDINATE                VALUE
-------------------- -------------------- -------------------- ----------
1999/2001            Territories                         Females              
At age 65            v52302219            12.3.2                     16.9

2000/2002            Territories                         Females              
At age 65            v52302219            12.3.2                       17

2001/2003            Territories                         Females              
At age 65            v52302219            12.3.2                       17


REF_DATE             GEO                                 SEX
-------------------- ----------------------------------- --------------------
AGE                  VECTOR               COORDINATE                VALUE
-------------------- -------------------- -------------------- ----------
2002/2004            Territories                         Females              
At age 65            v52302219            12.3.2                     17.8

2003/2005            Territories                         Females              
At age 65            v52302219            12.3.2                     18.4

2004/2006            Territories                         Females              
At age 65            v52302219            12.3.2                     19.2


REF_DATE             GEO                                 SEX
-------------------- ----------------------------------- --------------------
AGE                  VECTOR               COORDINATE                VALUE
-------------------- -------------------- -------------------- ----------
2005/2007            Territories                         Females              
At age 65            v52302219            12.3.2                       19

2006/2008            Territories                         Females              
At age 65            v52302219            12.3.2                     18.4

2007/2009            Territories                         Females              
At age 65            v52302219            12.3.2                     18.4
*/


select *
from product_reference;


select *
from store_reference;