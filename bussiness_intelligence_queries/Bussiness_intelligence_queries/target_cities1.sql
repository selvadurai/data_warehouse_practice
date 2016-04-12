set serveroutput on
DECLARE
v_total_population_2012 POPULATION_REFERENCE_TABLE.VALUE%type;
v_ref_date_2012         POPULATION_REFERENCE_TABLE.REF_DATE%TYPE;
v_city_2012             POPULATION_REFERENCE_TABLE.GEO%TYPE;
v_total_population_1997 POPULATION_REFERENCE_TABLE.VALUE%type;

city_precentage_growth  number(4,2);
YOUNG_CHILD_POP_2012    number(6); --infants/young children 
v_teens_2012            number(6); --teens/young adult
v_adult_2012            number(6); --adults
v_eldery_2012           number(6); --eldery

CURSOR C_GEO_2012 is
      SELECT REF_DATE,GEO,VALUE
      FROM POPULATION_REFERENCE_TABLE
      WHERE UPPER(AGE) LIKE UPPER('%ALL%') AND UPPER(SEX) LIKE UPPER('%BOTH SEXES%') AND REF_DATE=2012;

BEGIN

dbms_output.put_line('CANADIAN CITY REPORT');
OPEN C_GEO_2012;
  LOOP
       FETCH C_GEO_2012 into v_ref_date_2012,v_city_2012,v_total_population_2012;
       EXIT WHEN C_GEO_2012%notfound;
        
       SELECT VALUE INTO  v_total_population_1997
       FROM POPULATION_REFERENCE_TABLE
       WHERE UPPER(AGE) LIKE UPPER('%ALL%') AND UPPER(SEX) LIKE UPPER('%BOTH SEXES%') AND REF_DATE=1997
       AND UPPER(GEO)=UPPER(v_city_2012);
       
       SELECT SUM(VALUE) INTO YOUNG_CHILD_POP_2012
        FROM POPULATION_REFERENCE_TABLE
        where (to_number(trim(substr(age,0,2))) >=0 AND to_number(trim(substr(age,0,2))) <=12
        and age like '%years%' AND not age like '%to%' AND not age like '%and%' AND 
        UPPER(SEX) LIKE UPPER('%BOTH SEXES%') AND REF_DATE=2012 AND GEO =v_city_2012); 
        
               
        SELECT SUM(VALUE) INTO  v_teens_2012
        FROM POPULATION_REFERENCE_TABLE
        where (to_number(trim(substr(age,0,2))) >=13 AND to_number(trim(substr(age,0,2))) <=25
        and age like '%years%' AND not age like '%to%' AND not age like '%and%' AND 
        UPPER(SEX) LIKE UPPER('%BOTH SEXES%') AND REF_DATE=2012 AND GEO =v_city_2012);
        
        SELECT SUM(VALUE) INTO  v_adult_2012
        FROM POPULATION_REFERENCE_TABLE
        where (to_number(trim(substr(age,0,2))) >=0 AND to_number(trim(substr(age,0,2))) <=59
        and age like '%years%' AND not age like '%to%' AND not age like '%and%' AND 
        UPPER(SEX) LIKE UPPER('%BOTH SEXES%') AND REF_DATE=2012 AND GEO =v_city_2012);
        
        SELECT SUM(VALUE) INTO  v_eldery_2012
        FROM POPULATION_REFERENCE_TABLE
        where (to_number(trim(substr(age,0,2))) >=60
        and age like '%years%' AND not age like '%to%' AND not age like '%and%' AND 
        UPPER(SEX) LIKE UPPER('%BOTH SEXES%') AND REF_DATE=2012 AND GEO =v_city_2012);
       
       --Growth rate formula GR=(PRESENT-PAST)/PAST
       city_precentage_growth:=(v_total_population_2012- v_total_population_1997)/v_total_population_1997;
       
       IF  city_precentage_growth < 1 THEN 
           dbms_output.put_line('----'|| v_city_2012||'-----------------' );
           dbms_output.put_line('Total Population in 1997 '              ||     v_total_population_1997 );
           dbms_output.put_line('Total Population in 2012 '              ||     v_total_population_2012);
           dbms_output.put_line('Infant and young children 0 to 12 precent '     ||     round((YOUNG_CHILD_POP_2012/v_total_population_2012*100),2)||'%'); 
           dbms_output.put_line('Teenagers and young adult 13-25 precent '     ||     round((v_teens_2012/v_total_population_2012*100),2)||'%'); 
           dbms_output.put_line('Adult precent 26-59 '                         ||     round((v_adult_2012/v_total_population_2012*100),2)||'%');
           dbms_output.put_line('Eldrery precent 26-59 '                         ||     round((v_eldery_2012/v_total_population_2012*100),2)||'%');
           dbms_output.put_line('Growth Rate from 1997-2013 '            ||     city_precentage_growth*100 ||'%'); 
           
           dbms_output.put_line('---------------------------------------' );

       END IF;
       
  END LOOP;

CLOSE C_GEO_2012;




  
   
END;