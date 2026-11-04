USE [MIS]
GO

/****** Object:  View [STG].[X_COM_SUPERBATCH_V]    Script Date: 14/3/2025 11:08:45 рм ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




ALTER VIEW [STG].[X_COM_SUPERBATCH_V]
AS

SELECT 
     
	 ltrim(rtrim(substring([X_COM_SUPERBATCH],3,18)))   AS TUN ,   --tun
     ltrim(rtrim(substring([X_COM_SUPERBATCH],23,8)))   AS HMEROMHNIA,   --date
     ltrim(rtrim(substring([X_COM_SUPERBATCH],31,4)))   AS SRVC_CODE,   --srvc code
     ltrim(rtrim(substring([X_COM_SUPERBATCH],35,40)))  AS REF_NUMBER,   --ref number
     ltrim(rtrim(substring([X_COM_SUPERBATCH],75,15)))  AS DB_ACNT,  --db-acnt
     ltrim(rtrim(substring([X_COM_SUPERBATCH],90,1)))   AS DB_SUM_FLAG,  --db-sum-flag
     ltrim(rtrim(substring([X_COM_SUPERBATCH],91,15)))  AS CR_ACNT ,  --cr-acnt
     ltrim(rtrim(substring([X_COM_SUPERBATCH],107,18))) AS DB_AMOUNT,  --db amount
     ltrim(rtrim(substring([X_COM_SUPERBATCH],125,2)))  AS REJ_CODE,  --rej code
     ltrim(rtrim(substring([X_COM_SUPERBATCH],214,6)))  AS DATA_AITIOL_CODE, --DATA-AITIOL-CODE
     ltrim(rtrim(substring([X_COM_SUPERBATCH],240,18))) AS DATA_AMOUNT,  --data amount
     ltrim(rtrim(substring([X_COM_SUPERBATCH],309,18))) AS REAL_TRANSACTION_TUN,  -- real transaction tun
     ltrim(rtrim(substring([X_COM_SUPERBATCH],329,20))) AS DATA_CUST_DATA,  -- DATA-CUST-DATA
     ltrim(rtrim(substring([X_COM_SUPERBATCH],375,1)))  AS NET_TYPE ,  --NET-TYPE
     ltrim(rtrim(substring([X_COM_SUPERBATCH],376,4)))  AS RBR,  --rbr
     ltrim(rtrim(substring([X_COM_SUPERBATCH],535,140))) AS REMIT_INFO,   --remit info
	 
	 ltrim(rtrim(substring([X_COM_SUPERBATCH],1,800)))      AS SB_RECORD --ROW_DATA	



--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,78,17),'0'))),',', '.')),2) as CURRENT_BALANCE_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,95,17))) as CURRENT_BALANCE_IN_EURO
--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,95,17),'0'))),',', '.')),2) as CURRENT_BALANCE_IN_EURO_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,112,9))) as WA_CURRENT_INTEREST_RATE
--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,112,9),'0'))),',', '.')),6) AS WA_CURRENT_INTEREST_RATE_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,121,17))) as NUMBER_OF_NON_ZERO_ACCOUNTS
--,convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,121,17),0))),',', '.')) AS NUMBER_OF_NON_ZERO_ACCOUNTS_CALC

FROM    OPENROWSET(BULK 'X:/DATA/COMMISSIONS/DATA/X_COM_SUPERBATCH.txt',
FORMATFILE = 'X:/DATA/COMMISSIONS/FF/X_COM_SUPERBATCH_FF.txt', FIRSTROW = 1, CODEPAGE=65001) as zzz




GO


