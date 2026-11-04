ALTER VIEW STG.X_MFR_RATES_V
AS
SELECT
	HMNIA
,   CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(HMNIA,''),'/','-'))) = '' THEN '9999-01-01'   
         ELSE LTRIM(RTRIM(REPLACE(HMNIA,'/','-'))) END,103 ) AS HMNIA_CALC
,	CURRENCY_CODE
,	case when ltrim(rtrim(isnull(CURRENCY_CODE,''))) = '' then '0' else ltrim(rtrim(CURRENCY_CODE)) end as CURRENCY_CODE_CALC
,	CURRENCY_ISO_CODE
,	case when ltrim(rtrim(isnull(CURRENCY_ISO_CODE,''))) = '' then '-' else ltrim(rtrim(CURRENCY_ISO_CODE)) end as CURRENCY_ISO_CODE_CALC
,	MFR
,   round(convert(float,REPLACE(LTRIM(RTRIM(REPLACE(isnull(MFR,'0'),'.',''))),',','.')),6)  AS MFR_CALC
FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_MFR_RATES.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_MFR_RATES_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz
