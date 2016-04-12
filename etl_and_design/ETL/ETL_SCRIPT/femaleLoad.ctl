load data
 infile 'C:\Users\kevin\Desktop\assigment_1_dwa624\ETL\ontariotopbabynames_female_1917-2010_english.csv'
 into table TOP_FEMALE_REFERENCE_TABLE
 fields terminated by "," 	  
 ( year_time, name, frequency )
 