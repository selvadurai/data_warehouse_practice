cd C:\app\kevin\product\12.1.0\dbhome_1\BIN
sqlldr c##env/password control=C:\Users\kevin\Desktop\assigment_1_dwa624\ETL\ETL_SCRIPT\popLoad.ctl
pause
sqlldr c##env/password control=C:\Users\kevin\Desktop\assigment_1_dwa624\ETL\ETL_SCRIPT\femaleLoad.ctl
pause
sqlldr c##env/password control=C:\Users\kevin\Desktop\assigment_1_dwa624\ETL\ETL_SCRIPT\maleLoad.ctl
pause
sqlldr c##env/password control=C:\Users\kevin\Desktop\assigment_1_dwa624\ETL\ETL_SCRIPT\LifeExpectLoad.ctl