USE [MIS]
GO

/****** Object:  View [STG].[X_COM_COMM_ALL_V]    Script Date: 1/4/2025 12:07:42 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






ALTER VIEW [STG].[X_COM_COMM_ALL_V]
AS

SELECT 
  ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,1,18))) as TUN
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,19,18))) as RTUN
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,37,4))) as TR_CODE
--, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,46,9))) as GL_ACNT
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,41,15))) as GL_ACNT
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,62,16))) as AMOUNT
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,94,2))) as CD
, '' as SB_CODE

, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,98,18))) as ACCOUNT
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,116,10))) as CDI
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,126,20))) as ADD_INFO
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,146,44))) as REMARKS
, ltrim(rtrim(substring(X_COM_COMM_ALL_RECORD,81,13))) as TOTAL_AMOUNT

--,X_COM_COMM_ALL_RECORD


--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,78,17),'0'))),',', '.')),2) as CURRENT_BALANCE_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,95,17))) as CURRENT_BALANCE_IN_EURO
--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,95,17),'0'))),',', '.')),2) as CURRENT_BALANCE_IN_EURO_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,112,9))) as WA_CURRENT_INTEREST_RATE
--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,112,9),'0'))),',', '.')),6) AS WA_CURRENT_INTEREST_RATE_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,121,17))) as NUMBER_OF_NON_ZERO_ACCOUNTS
--,convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,121,17),0))),',', '.')) AS NUMBER_OF_NON_ZERO_ACCOUNTS_CALC


FROM    OPENROWSET(BULK 'X:/DATA/COMMISSIONS/DATA/X_COM_COMM_ALL.txt',
FORMATFILE = 'X:/DATA/COMMISSIONS/FF/X_COM_COMM_ALL_FF.txt', FIRSTROW = 1, CODEPAGE=1253) as zzz /*CODEPAGE=1253 GIA ANSI*/







GO


