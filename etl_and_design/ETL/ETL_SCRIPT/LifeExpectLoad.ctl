load data
 infile 'C:\Users\kevin\Desktop\assigment_1_dwa624\ETL\01020512-eng.csv'
 into table LIFE_EXPECTANCY_REFERENCE
 fields terminated by "," 	  
 (Ref_Date,GEO,SEX,AGE,Vector,Coordinate,Value)
 