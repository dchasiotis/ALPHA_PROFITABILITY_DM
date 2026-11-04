ALTER VIEW [STG].[X_TRADING_FX_V]
AS
SELECT
	MONTH
,	CDI
,   case when replace(ltrim(replace(replace(isnull(CDI, '0'), ' ', '0'), '0', ' ')), ' ', '0')='' then '0' else  replace(ltrim(replace(replace(isnull(CDI, '0'), ' ', '0'), '0', ' ')), ' ', '0') end CDI_CALC
,   BRANCH
,   CASE 
       WHEN len(BRANCH)=1 THEN '000'+BRANCH
       WHEN len(BRANCH)=2 THEN '00'+BRANCH
       WHEN len(BRANCH)=3 THEN '0'+BRANCH
	   ELSE BRANCH
	END AS BRANCH_CALC
,   COUNT_OF_TRANSACTIONS
,   VOLUME
,   round(convert(float,REPLACE(REPLACE(ltrim(rtrim(VOLUME)), '.', ''),',', '.')),2) as VOLUME_CALC
,   FX_INCOME
,   round(convert(float,REPLACE(REPLACE(ltrim(rtrim(FX_INCOME)), '.', ''),',', '.')),2) as FX_INCOME_CALC
FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_TRADING_FX.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_TRADING_FX_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz



