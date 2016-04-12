set serveroutput on

DECLARE

male_name top_male_reference_table.name%type;
female_name top_male_reference_table.name%type;

CURSOR top_young_male_names is
    Select distinct name
            from(SELECT * 
            FROM TOP_MALE_REFERENCE_TABLE
            WHERE  YEAR_TIME>=1999 AND YEAR_TIME<=2010  
            order by frequency desc)
            where rownum <=20;
            
CURSOR top_teen_male_names is
    Select distinct name
            from(SELECT * 
            FROM TOP_MALE_REFERENCE_TABLE
            WHERE  YEAR_TIME>=1985 AND YEAR_TIME<=1999  
            order by frequency desc)
            where rownum <=20;   
            
            


CURSOR top_young_female_names is
    Select distinct name
            from(SELECT * 
            FROM TOP_FEMALE_REFERENCE_TABLE
            WHERE  YEAR_TIME>=1999 AND YEAR_TIME<=2010  
            order by frequency desc)
            where rownum <=20;
            
CURSOR top_teen_female_names is
    Select distinct name
            from(SELECT * 
            FROM TOP_FEMALE_REFERENCE_TABLE
            WHERE  YEAR_TIME>=1985 AND YEAR_TIME<=1998  
            order by frequency desc)
            where rownum <=20;
            
CURSOR top_adult_male_names is
    Select distinct name
            from(SELECT * 
            FROM TOP_MALE_REFERENCE_TABLE
            WHERE  YEAR_TIME>=1951 AND YEAR_TIME<=1984  
            order by frequency desc)
            where rownum <=60;
            
CURSOR top_adult_female_names is
    Select distinct name
            from(SELECT * 
            FROM TOP_FEMALE_REFERENCE_TABLE
            WHERE  YEAR_TIME>=1951 AND YEAR_TIME<=1984  
            order by frequency desc)
            where rownum <=60;
            
CURSOR top_old_male_names is
    Select distinct name
            from(SELECT * 
            FROM TOP_MALE_REFERENCE_TABLE
            WHERE  YEAR_TIME>=1950  
            order by frequency desc)
            where rownum <=70;
            
    CURSOR top_old_female_names is
    Select distinct name
            from(SELECT * 
            FROM TOP_FEMALE_REFERENCE_TABLE
            WHERE  YEAR_TIME>=1950 
            order by frequency desc)
            where rownum <=60;        
            
            
            
BEGIN
   dbms_output.put_line('------TOP INFANTS/YOUNG CHILDRED MALE NAMES BORN 1997-2010-------');
   OPEN top_young_male_names;
   LOOP
      FETCH top_young_male_names  into male_name;
      EXIT WHEN top_young_male_names%notfound;
      dbms_output.put_line(male_name);
   END LOOP;
   CLOSE top_young_male_names;
  dbms_output.put_line('-----------------------------------------------');
  dbms_output.put_line('                                               ');

   dbms_output.put_line('------TOP INFANTS/YOUNG CHILDREN FEMALE NAMES BORN 1997-2010-------');
   OPEN top_young_female_names;
   LOOP
      FETCH top_young_female_names  into female_name;
      EXIT WHEN top_young_female_names%notfound;
      dbms_output.put_line(female_name);
   END LOOP;
   CLOSE top_young_female_names;
  dbms_output.put_line('-----------------------------------------------');
  dbms_output.put_line('                                               ');

  dbms_output.put_line('------TOP TEEN/YOUNG ADULT MALE NAMES BORN 1985-1999-------');
   OPEN top_teen_male_names;
   LOOP
      FETCH top_teen_male_names  into male_name;
      EXIT WHEN top_teen_male_names%notfound;
      dbms_output.put_line(male_name);
   END LOOP;
   CLOSE top_teen_male_names;
  dbms_output.put_line('-----------------------------------------------');
  dbms_output.put_line('                                               ');
  
  
   dbms_output.put_line('------TOP TEEN/YOUNG ADULT FEMALE NAMES BORN 1985-1998-------');
   OPEN top_teen_female_names;
   LOOP
      FETCH top_teen_female_names  into female_name;
      EXIT WHEN top_teen_female_names%notfound;
      dbms_output.put_line(female_name);
   END LOOP;
   CLOSE top_teen_female_names;
  dbms_output.put_line('-----------------------------------------------');
  dbms_output.put_line('                                         ');                                         
  
   dbms_output.put_line('------TOP ADULT MALE NAMES BORN 1951-1984-------');
   OPEN top_adult_male_names;
   LOOP
      FETCH top_adult_male_names  into male_name;
      EXIT WHEN top_adult_male_names%notfound;
      dbms_output.put_line(male_name);
   END LOOP;
   CLOSE top_adult_male_names;
  dbms_output.put_line('-----------------------------------------------');
  dbms_output.put_line('                                               ');
  
  
   dbms_output.put_line('------TOP TEEN/YOUNG ADULT FEMALE NAMES BORN 1951-1984-------');
   OPEN top_adult_female_names;
   LOOP
      FETCH top_adult_female_names  into female_name;
      EXIT WHEN top_adult_female_names%notfound;
      dbms_output.put_line(female_name);
   END LOOP;
   CLOSE top_adult_female_names;
  dbms_output.put_line('-----------------------------------------------');
  dbms_output.put_line('                                         ');    
  
  
  dbms_output.put_line('------TOP ELDERLY MALE NAMES BORN BEFORE 1951-------');
   OPEN top_old_male_names;
   LOOP
      FETCH top_old_male_names  into male_name;
      EXIT WHEN top_old_male_names%notfound;
      dbms_output.put_line(male_name);
   END LOOP;
   CLOSE top_old_male_names;
  dbms_output.put_line('-----------------------------------------------');
  dbms_output.put_line('                                               ');
  
  
  
  
  dbms_output.put_line('------TOP ELDERLY FEMALE NAMES BORN BEFORE 1951-------');
   OPEN top_old_female_names;
   LOOP
      FETCH top_old_female_names  into female_name;
      EXIT WHEN top_old_female_names%notfound;
      dbms_output.put_line(female_name);
   END LOOP;
   CLOSE top_old_female_names;
  dbms_output.put_line('-----------------------------------------------');
  dbms_output.put_line('                                               ');
  
  

END;