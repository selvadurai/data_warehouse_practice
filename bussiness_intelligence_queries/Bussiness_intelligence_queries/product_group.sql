SELECT NAME,REV_SUM ,PROFIT_SUM
FROM( SELECT PG.PRODUCT_GROUP_NAME NAME, SUM(F.REVENUE) REV_SUM, SUM(F.PROFIT ) PROFIT_SUM 
      FROM SALES_FACT_TABLE F
 
      INNER JOIN PRODUCT_group_DIMENSION PG
      ON PG.PRODUCT_GROUP_ID=F.PRODUCT_ID
      
      GROUP BY PG.PRODUCT_GROUP_NAME)
ORDER BY REV_SUM DESC, PROFIT_SUM DESC;