

ALTER VIEW [STG].[X_SPV_LOANS_V]
AS
SELECT 
AS_OF_DATE
  --SENDEROACC 
--, case when len(ltrim(rtrim(isnull(SENDEROACC,'0')))) < 2 then '0'  --------------  ACCOUNT_CODE
--       else left(ltrim(rtrim(SENDEROACC)),len(ltrim(rtrim(SENDEROACC)))-1) end as SENDEROACC_CALC
/*
, case when len(ltrim(rtrim(isnull(SENDEROACC,'0')))) < 2 then '0'  --------------     ACCOUNT_GL_ACCOUNT_TYPE_CODE
       else right(ltrim(rtrim(SENDEROACC)),1) end as ACCOUNT_GL_ACCOUNT_TYPE_CODE  ---  ???? name
	   */
, '1' as ACCOUNT_GL_ACCOUNT_TYPE_CODE
, ACC_NO
, ltrim(rtrim(ISNULL(ACC_NO, '0' ))) AS ACC_NO_CALC
, ENTITY
, case when ltrim(rtrim(ENTITY))='ERMIS' THEN 'AB1144'   --------------  ENTITY_CODE
       WHEN ltrim(rtrim(ENTITY))='UMERA' THEN 'AB1098' 
	   WHEN ltrim(rtrim(ENTITY))='ACAC'  THEN  'AB1257' 
	   WHEN ltrim(rtrim(ENTITY))='SKYCAC' THEN 'AB1294' 
	   ELSE 'AB1062' END as ENTITY_CALC
--, DATE

FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_SPV_LOANS.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_SPV_LOANS_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz




