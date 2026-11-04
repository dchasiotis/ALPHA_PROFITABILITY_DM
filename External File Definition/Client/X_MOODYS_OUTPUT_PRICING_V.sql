USE [MIS]
GO

/****** Object:  View [STG].[X_MOODYS_OUTPUT_PRICING_V]    Script Date: 20/2/2026 2:58:45 ?? ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO








ALTER VIEW [STG].[X_MOODYS_OUTPUT_PRICING_V]
AS
SELECT 

 replace(TABLE_NAME,'"','') AS TABLE_NAME

, replace(RUN_DATE,'"','')  AS REFDT
, replace(DIM2,'"','')  AS ACCOUNT_TYPE             --NEW 13/01/2026
, replace(SOURCE_SYSTEM,'"','') AS SOURCE_SYSTEM

, replace(ACCOUNT_CODE,'"','') AS ACCOUNT_CODE
--, CASE WHEN replace(SOURCE_SYSTEM,'"','') IN ('CMS') AND replace(TABLE_NAME,'"','') IN ('LOANDEPO') 
--       THEN LEFT(RIGHT(REPLACE(replace(ACCOUNT_CODE,'"',''), 'LL_', ''), LEN(REPLACE(replace(ACCOUNT_CODE,'"',''), 'LL_', '')) - 4),LEN(REPLACE(replace(ACCOUNT_CODE,'"',''), 'LL_', '')) - 6) -- TAKE OUT LL_ & SOURCE SYSTEM & 2 LAST CHARACTERS
--	   ELSE LEFT(RIGHT(replace(ACCOUNT_CODE,'"',''), LEN(replace(ACCOUNT_CODE,'"','')) - 4),LEN(replace(ACCOUNT_CODE,'"','')) - 6) -- TAKE OUT SOURCE SYSTEM & 2 LAST CHARACTERS
--  END AS ACCOUNT_CODE_CALC
,  LEFT(RIGHT(REPLACE(replace(ACCOUNT_CODE,'"',''), 'LL_', ''), LEN(REPLACE(replace(ACCOUNT_CODE,'"',''), 'LL_', '')) - 4),LEN(REPLACE(replace(ACCOUNT_CODE,'"',''), 'LL_', '')) - 6) as ACCOUNT_CODE_CALC

, replace(STATUS,'"','') AS STATUS                 -- NEW
, replace(IRREGULAR_CF,'"','') AS IRREGULAR_CF                --NEW 13/01/2026


, replace(GL_TYPE_CODE,'"','') AS GL_TYPE_CODE
, replace(EBA_FLAG,'"','') AS EBA_FLAG
, replace(DPD,'"','') AS DPD
, replace(PRODUCT,'"','') AS PRODUCT
, replace(AMORTIZING_TYPE,'"','') AS AMORTIZING_TYPE
, replace(REPRICE_INDEX_CODE,'"','') AS REPRICE_INDEX_CODE
, replace(RATE_TYPE,'"','') AS RATE_TYPE
, replace(RATE_TYPE_CODE,'"','') AS RATE_TYPE_CODE
, replace(ACCRUAL_BASIS_CODE,'"','') AS ACCRUAL_BASIS_CODE
, replace(CURRENCY_CODE,'"','') AS CURRENCY_CODE
, replace(CURRENCY_ISO_CODE,'"','') AS CURRENCY_ISO_CODE

, replace(ORIGINATION_DATE,'"','') AS ORIGINATION_DATE
, cast(CASE WHEN isnull(nullif( replace(ORIGINATION_DATE,'"',''),'NULL'),'')  = '' THEN '9999-01-01' ELSE  replace(ORIGINATION_DATE,'"','') END as date)  AS ORIGINATION_DATE_CALC
--, ISNULL(CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(replace(ORIGINATION_DATE,'"',''),'9999-01-01'),'/','-'))) = '' THEN '9999-01-01'  
--  ELSE LTRIM(RTRIM(REPLACE(replace(ORIGINATION_DATE,'"',''),'/','-'))) END,103 ),'9999-01-01') AS ORIGINATION_DATE_CALC

, replace(MATURITY_DATE,'"','') AS MATURITY_DATE
, cast(CASE WHEN isnull(nullif( replace(MATURITY_DATE,'"',''),'NULL'),'')  = '' THEN '9999-01-01' ELSE  replace(MATURITY_DATE,'"','') END as date)  AS MATURITY_DATE_CALC
--, ISNULL(CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(MATURITY_DATE,'9999-01-01'),'/','-'))) = '' THEN '9999-01-01'  
--  ELSE LTRIM(RTRIM(REPLACE(MATURITY_DATE,'/','-'))) END,103 ),'9999-01-01') AS MATURITY_DATE_CALC

, replace(PREVIOUS_REPRICE_DATE_PREVIOUS,'"','') AS PREVIOUS_REPRICE_DATE_PREVIOUS
, cast(CASE WHEN isnull(nullif( replace(PREVIOUS_REPRICE_DATE_PREVIOUS,'"',''),'NULL'),'')  = '' THEN '9999-01-01' ELSE  replace(PREVIOUS_REPRICE_DATE_PREVIOUS,'"','') END as date) AS PREVIOUS_REPRICE_DATE_PREVIOUS_CALC
--, ISNULL(CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(PREVIOUS_REPRICE_DATE,'9999-01-01'),'/','-'))) = '' THEN '9999-01-01'  
--  ELSE LTRIM(RTRIM(REPLACE(PREVIOUS_REPRICE_DATE,'/','-'))) END,103 ),'9999-01-01') AS PREVIOUS_REPRICE_DATE_CALC

, replace(PREVIOUS_REPRICE_DATE,'"','') AS PREVIOUS_REPRICE_DATE
, cast(CASE WHEN isnull(nullif( replace(PREVIOUS_REPRICE_DATE,'"',''),'NULL'),'')  = '' THEN '9999-01-01' ELSE  replace(PREVIOUS_REPRICE_DATE,'"','') END as date) AS PREVIOUS_REPRICE_DATE_CALC
--, ISNULL(CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(PREVIOUS_REPRICE_DATE,'9999-01-01'),'/','-'))) = '' THEN '9999-01-01'  
--  ELSE LTRIM(RTRIM(REPLACE(PREVIOUS_REPRICE_DATE,'/','-'))) END,103 ),'9999-01-01') AS PREVIOUS_REPRICE_DATE_CALC

, replace(NEXT_REPRICE_DATE_PREVIOUS,'"','') AS NEXT_REPRICE_DATE_PREVIOUS -- NEW 13/01/2026
, cast(CASE WHEN isnull(nullif( replace(NEXT_REPRICE_DATE_PREVIOUS,'"',''),'NULL'),'')  = '' THEN '9999-01-01' ELSE  replace(NEXT_REPRICE_DATE_PREVIOUS,'"','') END as date) AS NEXT_REPRICE_DATE_PREVIOUS_CALC
--, ISNULL(CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(NEXT_REPRICE_DATE_PREVIOUS,'9999-01-01'),'/','-'))) = '' THEN '9999-01-01'  
--  ELSE LTRIM(RTRIM(REPLACE(NEXT_REPRICE_DATE_PREVIOUS,'/','-'))) END,103 ),'9999-01-01') AS NEXT_REPRICE_DATE_PREVIOUS_CALC

, replace(NEXT_REPRICE_DATE,'"','') AS NEXT_REPRICE_DATE
, cast(CASE WHEN isnull(nullif( replace(NEXT_REPRICE_DATE,'"',''),'NULL'),'')  = '' THEN '9999-01-01' ELSE  replace(NEXT_REPRICE_DATE,'"','') END as date) AS NEXT_REPRICE_DATE_CALC
--, ISNULL(CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(NEXT_REPRICE_DATE,'9999-01-01'),'/','-'))) = '' THEN '9999-01-01'  
--  ELSE LTRIM(RTRIM(REPLACE(NEXT_REPRICE_DATE,'/','-'))) END,103 ),'9999-01-01') AS NEXT_REPRICE_DATE_CALC

, replace(BALANCE_TYPE_CODE,'"','') AS BALANCE_TYPE_CODE

, replace(ORIGINAL_BALANCE_EUR,'"','') AS ORIGINAL_BALANCE_EUR
,ABS(CASE WHEN replace(GL_TYPE_CODE,'"','') in ('2','4') THEN -1 ELSE 1 END * round(convert(float,(REPLACE(replace(ORIGINAL_BALANCE_EUR,'"',''), ',', '.'))),2,1))  as ORIGINAL_BALANCE_EUR_CALC
--,CASE WHEN replace(GL_TYPE_CODE,'"','') in ('2','4') and round(convert(float,(REPLACE(replace(ORIGINAL_BALANCE_EUR,'"',''), ',', '.'))),2,1)<0 THEN -1 ELSE 1 END * round(convert(float,(REPLACE(replace(ORIGINAL_BALANCE_EUR,'"',''), ',', '.'))),2,1)  as ORIGINAL_BALANCE_EUR_CALC

, replace(ORIGINAL_BALANCE_FX,'"','') AS ORIGINAL_BALANCE_FX
,CASE WHEN replace(GL_TYPE_CODE,'"','') in ('2','4') THEN -1 ELSE 1 END * round(convert(float,(REPLACE(replace(ORIGINAL_BALANCE_FX,'"',''), ',', '.'))),2,1) as ORIGINAL_BALANCE_FX_CALC
--,CASE WHEN replace(GL_TYPE_CODE,'"','') in ('2','4') and round(convert(float,(REPLACE(replace(ORIGINAL_BALANCE_FX,'"',''), ',', '.'))),2,1)<0 THEN -1 ELSE 1 END * round(convert(float,(REPLACE(replace(ORIGINAL_BALANCE_FX,'"',''), ',', '.'))),2,1) as ORIGINAL_BALANCE_FX_CALC

, replace(EOP_BALANCE_EUR,'"','') AS EOP_BALANCE_EUR
,CASE WHEN replace(GL_TYPE_CODE,'"','') in ('2','4') THEN -1 ELSE 1 END * round(convert(float,(REPLACE(replace(EOP_BALANCE_EUR,'"',''), ',', '.'))),2,1) as EOP_BALANCE_EUR_CALC
--,CASE WHEN replace(GL_TYPE_CODE,'"','') in ('2','4') and round(convert(float,(REPLACE(replace(EOP_BALANCE_EUR,'"',''), ',', '.'))),2,1)<0 THEN -1 ELSE 1 END * round(convert(float,(REPLACE(replace(EOP_BALANCE_EUR,'"',''), ',', '.'))),2,1) as EOP_BALANCE_EUR_CALC


, replace(EOP_BALANCE_FX,'"','') AS EOP_BALANCE_FX
,CASE WHEN replace(GL_TYPE_CODE,'"','') in ('2','4') THEN -1 ELSE 1 END * round(convert(float,(REPLACE(replace(EOP_BALANCE_FX,'"',''), ',', '.'))),2,1) as EOP_BALANCE_FX_CALC
--,CASE WHEN replace(GL_TYPE_CODE,'"','') in ('2','4') and round(convert(float,(REPLACE(replace(EOP_BALANCE_FX,'"',''), ',', '.'))),2,1)<0 THEN -1 ELSE 1 END * round(convert(float,(REPLACE(replace(EOP_BALANCE_FX,'"',''), ',', '.'))),2,1) as EOP_BALANCE_FX_CALC


, replace(AVG_BALANCE_EUR,'"','') AS AVG_BALANCE_EUR
, round(convert(float,(REPLACE( replace(AVG_BALANCE_EUR,'"',''), ',', '.'))),2,1) as AVG_BALANCE_EUR_CALC

, replace(AVG_BALANCE_FX,'"','') AS AVG_BALANCE_FX
, round(convert(float,(REPLACE(replace(AVG_BALANCE_FX,'"',''), ',', '.'))),2,1) as AVG_BALANCE_FX_CALC

, replace(MTD_NII_EUR,'"','') AS MTD_NII_EUR
--, round(convert(float,(REPLACE(MTD_NII_EUR, ',', '.'))),2,1) as MTD_NII_EUR_CALC
, round(convert(float,(REPLACE(replace(MTD_NII_EUR,'"',''), ',', '.'))),2) as MTD_NII_EUR_CALC

----, CASE 
----    WHEN MTD_NII_EUR LIKE '-.%' THEN convert(float,(LTRIM(RTRIM(MTD_NII_EUR)), CHAR(160), ''),    CHAR(9), ''), CHAR(13), ''),CHAR(10), ''),CHAR(32), ''), '-.', '-0.')   ,',', '.')))
----    ELSE convert(float,(LTRIM(RTRIM(MTD_NII_EUR)), CHAR(160), ''),    CHAR(9), ''), CHAR(13), ''),CHAR(10), ''),CHAR(32), ''), 's', '')   ,',', '.')))
----    END AS MTD_NII_EUR_CALC

 , replace(PRICING_LINE,'"','') AS PRICING_LINE
 , replace(PRICING_METHOD,'"','') AS PRICING_METHOD
 --, replace(PRICING_RATE,'"','') AS PRICING_RATE
 , replace(PRICING_DURATION,'"','') AS PRICING_DURATION
 , round(convert(float,REPLACE(LTRIM(RTRIM(isnull(replace(PRICING_DURATION,'"',''),'0'))),',','.')),6)  AS PRICING_DURATION_CALC
 
 , replace(AVERAGE_LIFE,'"','') AS AVERAGE_LIFE
 , round(convert(float,REPLACE(LTRIM(RTRIM(isnull(replace(AVERAGE_LIFE,'"',''),'0'))),',','.')),6)  AS AVERAGE_LIFE_CALC

 , replace(FTP_BASE_RATE_PRV_MONTH,'"','') AS FTP_BASE_RATE_PRV_MONTH
 , round(convert(float,REPLACE(LTRIM(RTRIM(isnull(replace(FTP_BASE_RATE_PRV_MONTH,'"',''),'0'))),',','.')),6)  AS FTP_BASE_RATE_PRV_MONTH_CALC
 
 , replace(FTP_BASE_RATE_CURR_MONTH,'"','') AS FTP_BASE_RATE_CURR_MONTH
 , round(convert(float,REPLACE(LTRIM(RTRIM(isnull(replace(FTP_BASE_RATE_CURR_MONTH,'"',''),'0'))),',','.')),6)  AS FTP_BASE_RATE_CURR_MONTH_CALC

 , replace(FTP_BASE_RATE,'"','') AS FTP_BASE_RATE
 , round(convert(float,REPLACE(LTRIM(RTRIM(isnull(replace(FTP_BASE_RATE,'"',''),'0'))),',','.')),6)  AS FTP_BASE_RATE_CALC
 
 , replace(ASSIGN_RATE,'"','') AS ASSIGN_RATE
 , round(convert(float,REPLACE(LTRIM(RTRIM(isnull(replace(ASSIGN_RATE,'"',''),'0'))),',','.')),6)  AS ASSIGN_RATE_CALC


FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_MOODYS_OUTPUT_PRICING.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_MOODYS_OUTPUT_PRICING_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz





GO


