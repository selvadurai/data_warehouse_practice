load data
 infile 'C:\Users\kevin\Desktop\assigment_1_dwa624\ETL\ontariotopbabynames_male_1917-2010_english.csv'
 into table TOP_MALE_REFERENCE_TABLE
 fields terminated by "," 	  
 ( year_time, name, frequency )