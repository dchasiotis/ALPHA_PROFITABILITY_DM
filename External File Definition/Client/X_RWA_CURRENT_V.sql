
ALTER VIEW [STG].[X_RWA_CURRENT_V]
AS
SELECT
	PERIOD
,	ENTITY_CODE
, ltrim(rtrim(replace(ENTITY_CODE,'@',''))) as ENTITY_CODE_CALC  ------------  ENTITY_CODE_RWA
,	MARKETPARTICIPANT
 , ISNULL(COALESCE(NULLIF(REPLACE(LTRIM(REPLACE(SUBSTRING(ltrim(rtrim(MARKETPARTICIPANT)), 5, LEN(ltrim(rtrim(MARKETPARTICIPANT)))-4), '0', ' ')), ' ', '0'),''), '0'), '0' ) AS MARKETPARTICIPANT_CALC  ------------  CLIENT_CODE
,	ACCOUNT
, CASE WHEN RIGHT(ltrim(rtrim(ENTITY_CODE)),6)='AB1094' THEN 
  ISNULL(CASE WHEN SUBSTRING(ltrim(rtrim(ACCOUNT)),0, CHARINDEX('-',ltrim(rtrim(ACCOUNT)))) >'0' THEN SUBSTRING(SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4),0, CHARINDEX('-',SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4))) ELSE SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4) END, '0' ) 
	WHEN RIGHT(ltrim(rtrim(ENTITY_CODE)),6)='AB1048' THEN 
	ISNULL(CASE WHEN SUBSTRING(ltrim(rtrim(ACCOUNT)),0, CHARINDEX('-',ltrim(rtrim(ACCOUNT)))) >'0' THEN SUBSTRING(SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4),0, CHARINDEX('-',SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4))) ELSE SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4) END, '0' )
	WHEN RIGHT(ltrim(rtrim(ENTITY_CODE)),6) IN ('AB1062','AB1257') THEN 
	ISNULL(CASE WHEN SUBSTRING(ltrim(rtrim(ACCOUNT)),0, CHARINDEX('-',ltrim(rtrim(ACCOUNT)))) >'0' THEN SUBSTRING(SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4),0, CHARINDEX('-',SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4))) ELSE SUBSTRING(ltrim(rtrim(ACCOUNT)), 5, LEN(ltrim(rtrim(ACCOUNT)))-4) END, '0' ) 
	WHEN RIGHT(ltrim(rtrim(ENTITY_CODE)),6)='AB1002' THEN 
	SUBSTRING(ACCOUNT,5,8)
	WHEN RIGHT(ltrim(rtrim(ENTITY_CODE)),6) IN ('AB1000', 'AB1001', 'AB1004', 'AB1014') AND LEFT(ACCOUNT,3) NOT IN ('CMS','FCT','TRD') THEN 
	right(ACCOUNT, Len(ACCOUNT)-4)
	WHEN RIGHT(ltrim(rtrim(ENTITY_CODE)),6) IN ('AB1000', 'AB1001', 'AB1004', 'AB1014') AND LEFT(ACCOUNT,3) IN ('CMS') THEN 
	right(ACCOUNT, Len(ACCOUNT)-4)
	WHEN RIGHT(ltrim(rtrim(ENTITY_CODE)),6) IN ('AB1000', 'AB1001', 'AB1004', 'AB1014') AND LEFT(ACCOUNT,3) IN ('FCT') THEN 
	'FAC'+ right(ACCOUNT, Len(ACCOUNT)-3)
	WHEN RIGHT(ltrim(rtrim(ENTITY_CODE)),6) IN ('AB1000', 'AB1001', 'AB1004', 'AB1014') AND LEFT(ACCOUNT,3) IN ('TRD') THEN 
	SUBSTRING(ACCOUNT,5,7) 
	END AS ACCOUNT_CALC  ---- ???? CHARINDEX    ------------  ACCOUNT_CODE
,	CUR
, case when  ltrim(rtrim(isnull(CUR,''))) = '' then '0'  ------- ACCOUNT_CURRENCY_ISO
       else  ltrim(rtrim(CUR)) end AS CUR_CALC
,	BS_ITEM_ON_OFF
,	EXPOSURE_ON_BALANCE_OFF_BALANCE
--, round(convert(float,REPLACE(ltrim(rtrim(isnull(EXPOSURE_ON_BALANCE_OFF_BALANCE,'0'))),',', '.')),2)   AS EXPOSURE_ON_BALANCE_OFF_BALANCE_CALC  ------------  EOP_BALANCE_EUR
, round(convert(float,REPLACE(ltrim(rtrim(isnull(EXPOSURE_ON_BALANCE_OFF_BALANCE,'0'))),',', '')),2)   AS EXPOSURE_ON_BALANCE_OFF_BALANCE_CALC  ------------  EOP_BALANCE_EUR

,	IMPAIREMENT_FULLY_LOADED
--, round(convert(float,REPLACE(ltrim(rtrim(isnull(IMPAIREMENT_FULLY_LOADED,'0'))),',', '.')),2)   AS IMPAIREMENT_FULLY_LOADED_CALC  ------------  EOP_BALANCE_EUR
, round(convert(float,REPLACE(ltrim(rtrim(isnull(IMPAIREMENT_FULLY_LOADED,'0'))),',', '')),2)   AS IMPAIREMENT_FULLY_LOADED_CALC  ------------  EOP_BALANCE_EUR

,	IMPAIREMENT_PHASE_IN
,	RWAS
--, round(convert(float,REPLACE(ltrim(rtrim(isnull(RWAS,'0'))),',', '.')),2)   AS RWAS_CALC  ------------  EOP_RWA_EUR
, round(convert(float,REPLACE(ltrim(rtrim(isnull(RWAS,'0'))),',', '')),2)   AS RWAS_CALC  ------------  EOP_RWA_EUR

,	EBA_STATUS
, CASE WHEN ltrim(rtrim(isnull(EBA_STATUS,''))) = '' THEN '0' ELSE ltrim(rtrim(EBA_STATUS)) END AS EBA_STATUS_CALC ---- ???????? mallon ''   ------------  ACCOUNT_EBA_FLAG_CODE
,	PORTFOLIO
, CASE WHEN ltrim(rtrim(isnull(PORTFOLIO,''))) = ''  THEN '-' ELSE ltrim(rtrim(PORTFOLIO)) END AS PORTFOLIO_CALC ----------ACCOUNT_RISK_PRODUCT_CODE
,	CONSOLIDATION_PERIMETER			
, CASE WHEN ltrim(rtrim(isnull(CONSOLIDATION_PERIMETER			,''))) = ''  THEN '-' ELSE ltrim(rtrim(CONSOLIDATION_PERIMETER			)) END AS CONSOLIDATION_PERIMETER_CALC
FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_RWA_CURRENT.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_RWA_CURRENT_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz








