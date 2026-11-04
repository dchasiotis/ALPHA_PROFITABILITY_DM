

ALTER VIEW [STG].[X_COMMISSIONS_GR_V]
AS
SELECT
	MONTH_YEAR
,	SPSS_NUM
,   ACCOUNT
,	case when ltrim(rtrim(isnull(ACCOUNT,''))) = '' then '0'
         else ltrim(rtrim(ACCOUNT))  end as ACCOUNT_CALC
,	CDI
,   case when rtrim(ltrim(ISNULL(CDI, ''))) = '' then '0' 
         else rtrim(ltrim(CDI)) end  AS CDI_CALC
,	AFFLUENT
,	case when ltrim(rtrim(isnull(AFFLUENT,''))) = '' then '0'
         else ltrim(rtrim(AFFLUENT))  end as AFFLUENT_CALC
,	REL_UNIT
,	case when ltrim(rtrim(isnull(REL_UNIT,''))) = '' then '0'
         else ltrim(rtrim(REL_UNIT))  end as REL_UNIT_CALC
,	MANAGEMENT_UNIT
,	case when ltrim(rtrim(isnull(MANAGEMENT_UNIT,''))) = '' then '0'
         else ltrim(rtrim(MANAGEMENT_UNIT))  end as MANAGEMENT_UNIT_CALC
,   NETWORK
,	case when ltrim(rtrim(isnull(NETWORK,''))) = '' then '0'
         else right('0000' + NETWORK,4) end as NETWORK_CALC
,	EBA_FLAG
,	case when ltrim(rtrim(isnull(EBA_FLAG,''))) = '' then '0'
         else ltrim(rtrim(EBA_FLAG))  end as EBA_FLAG_CALC
,	EPM_UNIT
,	case when ltrim(rtrim(isnull(EPM_UNIT,''))) = '' then '0'
         else ltrim(rtrim(EPM_UNIT))  end as EPM_UNIT_CALC
,	COMM_AMOUNT
, round(convert(float,REPLACE(ltrim(rtrim(isnull(COMM_AMOUNT,'0'))),',', '.')),2) as COMM_AMOUNT_CALC 
,	TOTAL_AMOUNT
, round(convert(float,REPLACE(ltrim(rtrim(isnull(TOTAL_AMOUNT,'0'))),',', '.')),2) as TOTAL_AMOUNT_CALC 
,	TRAN_NUM
, round(convert(float,REPLACE(ltrim(rtrim(isnull(TRAN_NUM,'0'))),',', '.')),0) as TRAN_NUM_CALC 
,	ORDERED_AMOUNT
, round(convert(float,REPLACE(ltrim(rtrim(isnull(ORDERED_AMOUNT,'0'))),',', '.')),2) as ORDERED_AMOUNT_CALC 
,	ORDERED_CURRENCY
,   CASE WHEN ORDERED_CURRENCY ='' OR ORDERED_CURRENCY IS NULL THEN '0' ELSE ORDERED_CURRENCY END AS CURRENCY_CODE
,	CHANNEL
,   CASE WHEN (CHANNEL = '' OR CHANNEL IS NULL)  THEN '0' ELSE CHANNEL END as CHANNEL_CALC
,	COMM_TYPE
,	case when ltrim(rtrim(isnull(COMM_TYPE,''))) = '-' then '0'
         else ltrim(rtrim(COMM_TYPE))  end as COMM_TYPE_CALC
,	GL_ACNT
,	case when ltrim(rtrim(isnull(GL_ACNT,''))) = '-' then '0'
         else ltrim(rtrim(GL_ACNT))  end as GL_ACNT_CALC
,   EPLP_SOURCE_PRODUCT
,	case when ltrim(rtrim(isnull(EPLP_SOURCE_PRODUCT,''))) = '-' OR EPLP_SOURCE_PRODUCT IS NULL then '0'
         else ltrim(rtrim(EPLP_SOURCE_PRODUCT))  end as EPLP_SOURCE_PRODUCT_CALC
,   NEW_OLD_BANK
,	case when ltrim(rtrim(isnull(NEW_OLD_BANK,''))) = '-' OR NEW_OLD_BANK IS NULL then '0'
         else ltrim(rtrim(NEW_OLD_BANK))  end as NEW_OLD_BANK_CALC

FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_COMMISSIONS_GR.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_COMMISSIONS_GR_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz





