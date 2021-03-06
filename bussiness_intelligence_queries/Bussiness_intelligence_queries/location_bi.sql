-- Most profitable/least profivble LOACTION ----------------- 
SELECT CITY ,REV_SUM ,PROFIT_SUM
FROM( SELECT ST.CITY CITY,SUM(F.REVENUE) REV_SUM,SUM(F.PROFIT ) PROFIT_SUM 
      FROM SALES_FACT_TABLE F
 
      INNER JOIN STORE_DIMENSION ST
      ON ST.STORE_ID=F.SALES_ID
      GROUP BY ST.CITY)
ORDER BY REV_SUM DESC, PROFIT_SUM DESC;