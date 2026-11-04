ALTER VIEW STG.X_FXR_RATES_V
AS
SELECT
	HMNIA
,   CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(HMNIA,''),'/','-'))) = '' THEN '9999-01-01'   
         ELSE LTRIM(RTRIM(REPLACE(HMNIA,'/','-'))) END,103 ) AS HMNIA_CALC
,	USD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(USD,'0'))),',','.')),6)  AS USD_CALC
,	JPY
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(JPY,'0'))),',','.')),6)  AS JPY_CALC
,	DKK
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(DKK,'0'))),',','.')),6)  AS DKK_CALC
,	GBP
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(GBP,'0'))),',','.')),6)  AS GBP_CALC
,	SEK
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(SEK,'0'))),',','.')),6)  AS SEK_CALC
,	CHF
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(CHF,'0'))),',','.')),6)  AS CHF_CALC
,	ISK
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(ISK,'0'))),',','.')),6)  AS ISK_CALC
,	NOK
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(NOK,'0'))),',','.')),6)  AS NOK_CALC
,	BGN
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(BGN,'0'))),',','.')),6)  AS BGN_CALC
,	CYP
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(CYP,'0'))),',','.')),6)  AS CYP_CALC
,	CZK
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(CZK,'0'))),',','.')),6)  AS CZK_CALC
,	EEK
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(EEK,'0'))),',','.')),6)  AS EEK_CALC
,	HUF
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(HUF,'0'))),',','.')),6)  AS HUF_CALC
,	LTL
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(LTL,'0'))),',','.')),6)  AS LTL_CALC
,	LVL
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(LVL,'0'))),',','.')),6)  AS LVL_CALC
,	MTL
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(MTL,'0'))),',','.')),6)  AS MTL_CALC
,	PLN
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(PLN,'0'))),',','.')),6)  AS PLN_CALC
,	RON
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(RON,'0'))),',','.')),6)  AS RON_CALC
,	UAH
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(UAH,'0'))),',','.')),6)  AS UAH_CALC
,	SKK
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(SKK,'0'))),',','.')),6)  AS SKK_CALC
,	TRYX
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(TRYX,'0'))),',','.')),6)  AS TRYX_CALC
,	AUD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(AUD,'0'))),',','.')),6)  AS AUD_CALC
,	CAD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(CAD,'0'))),',','.')),6)  AS CAD_CALC
,	HKD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(HKD,'0'))),',','.')),6)  AS HKD_CALC
,	NZD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(NZD,'0'))),',','.')),6)  AS NZD_CALC
,	SGD
,   round(convert(float,REPLACE(LTRIM(RTRIM(REPLACE(isnull(SGD,'0'),'.',''))),',','.')),6)  AS SGD_CALC
,	KRW
,   round(convert(float,REPLACE(LTRIM(RTRIM(REPLACE(isnull(KRW,'0'),'.',''))),',','.')),6)  AS KRW_CALC
,	ZAR
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(ZAR,'0'))),',','.')),6)  AS ZAR_CALC
,	MKD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(MKD,'0'))),',','.')),6)  AS MKD_CALC
,	RSD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(RSD,'0'))),',','.')),6)  AS RSD_CALC
,	ALLX
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(ALLX,'0'))),',','.')),6)  AS ALLX_CALC
,	RUB
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(RUB,'0'))),',','.')),6)  AS RUB_CALC
,	HRK
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(HRK,'0'))),',','.')),6)  AS HRK_CALC
,	AED
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(AED,'0'))),',','.')),6)  AS AED_CALC
,	CNY
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(CNY,'0'))),',','.')),6)  AS CNY_CALC
,	QAR
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(QAR,'0'))),',','.')),6)  AS QAR_CALC
,	MAD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(MAD,'0'))),',','.')),6)  AS MAD_CALC
,	ILS
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(ILS,'0'))),',','.')),6)  AS ILS_CALC
,	ROL
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(ROL,'0'))),',','.')),6)  AS ROL_CALC
,	SIT
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(SIT,'0'))),',','.')),6)  AS SIT_CALC
,	TRL
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(TRL,'0'))),',','.')),6)  AS TRL_CALC
,	CSD
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(CSD,'0'))),',','.')),6)  AS CSD_CALC

FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_FXR_RATES.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_FXR_RATES_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz
