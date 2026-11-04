ALTER VIEW STG.X_CFR_RATES_V
AS
SELECT
	HMNIA
,	CURRENCY_CODE
,	case when ltrim(rtrim(isnull(CURRENCY_CODE,''))) = '' then '0' else ltrim(rtrim(CURRENCY_CODE)) end as CURRENCY_CODE_CALC
,	CURRENCY_ISO_CODE
,   CASE WHEN isnull(CURRENCY_ISO_CODE,'') = '' THEN '0' 
         ELSE CURRENCY_ISO_CODE END  AS CURRENCY_ISO_CODE_CALC
,	MFR
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(MFR,'0'))),',','.')),6)  AS MFR_CALC
,	OVERNIGHT
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(OVERNIGHT,'0'))),',','.')),6)  AS OVERNIGHT_CALC
,	[1_WEEK]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([1_WEEK],'0'))),',','.')),6)  AS [1_WEEK_CALC]
,	[2_WEEKS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([2_WEEKS],'0'))),',','.')),6)  AS [2_WEEKS_CALC]
,	[1_MONTH]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([1_MONTH],'0'))),',','.')),6)  AS [1_MONTH_CALC]
,	[2_MONTHS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([2_MONTHS],'0'))),',','.')),6)  AS [2_MONTHS_CALC]
,	[3_MONTHS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([3_MONTHS],'0'))),',','.')),6)  AS [3_MONTHS_CALC]
,	[4_MONTHS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([4_MONTHS],'0'))),',','.')),6)  AS [4_MONTHS_CALC]
,	[5_MONTHS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([5_MONTHS],'0'))),',','.')),6)  AS [5_MONTHS_CALC]
,	[6_MONTHS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([6_MONTHS],'0'))),',','.')),6)  AS [6_MONTHS_CALC]
,	[9_MONTHS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([9_MONTHS],'0'))),',','.')),6)  AS [9_MONTHS_CALC]
,	[12_MONTHS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([12_MONTHS],'0'))),',','.')),6)  AS [12_MONTHS_CALC]
,	[2_YEARS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([2_YEARS],'0'))),',','.')),6)  AS [2_YEARS_CALC]
,	[3_YEARS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([3_YEARS],'0'))),',','.')),6)  AS [3_YEARS_CALC]
,	[5_YEARS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([2_YEARS],'0'))),',','.')),6)  AS [5_YEARS_CALC]
,	[10_YEARS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([10_YEARS],'0'))),',','.')),6)  AS [10_YEARS_CALC]
,	[15_YEARS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([15_YEARS],'0'))),',','.')),6)  AS [15_YEARS_CALC]
,	[20_YEARS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([20_YEARS],'0'))),',','.')),6)  AS [20_YEARS_CALC]
,	[30_YEARS]
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull([30_YEARS],'0'))),',','.')),6)  AS [30_YEARS_CALC]

FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_CFR_RATES.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_CFR_RATES_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz
