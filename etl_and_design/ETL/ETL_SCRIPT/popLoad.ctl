load data
 infile 'C:\Users\kevin\Desktop\assigment_1_dwa624\ETL\00510046-eng.csv'
 into table POPULATION_REFERENCE_TABLE
 fields terminated by "," 	  
 ( Ref_Date,GEO,Geographical_classification,pop_id,SEX,AGE,Vector,Coordinate,Value)
 