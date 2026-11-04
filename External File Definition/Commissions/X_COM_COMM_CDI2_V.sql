USE [MIS]
GO

/****** Object:  View [STG].[X_COM_COMM_CDI2_V]    Script Date: 24/4/2025 12:54:07 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [STG].[X_COM_COMM_CDI2_V]
AS

SELECT 
    ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,1,18))) as TUN
, ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,19,18))) as RTUN
, ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,37,4))) as TR_CODE
, ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,46,9))) as GL_ACNT
, cast(substring(X_COM_COMM_CDI2_RECORD,60,15) as float)/1000 as AMOUNT
--, (LEFT((ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,70,3)))), LEN((ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,70,3))))) - 2)) 
--           + '.' + RIGHT(RTRIM((ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,71,3))))), 2)  as AMOUNT
, ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,74,1))) as CD
, ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,75,21))) as ACCOUNT
, ltrim(rtrim(substring(X_COM_COMM_CDI2_RECORD,96,10))) as CDI
--, substring(X_COM_COMM_CDI2_RECORD,1,5000)

--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,78,17),'0'))),',', '.')),2) as CURRENT_BALANCE_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,95,17))) as CURRENT_BALANCE_IN_EURO
--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,95,17),'0'))),',', '.')),2) as CURRENT_BALANCE_IN_EURO_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,112,9))) as WA_CURRENT_INTEREST_RATE
--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,112,9),'0'))),',', '.')),6) AS WA_CURRENT_INTEREST_RATE_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,121,17))) as NUMBER_OF_NON_ZERO_ACCOUNTS
--,convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,121,17),0))),',', '.')) AS NUMBER_OF_NON_ZERO_ACCOUNTS_CALC

FROM    OPENROWSET(BULK 'X:/DATA/COMMISSIONS/DATA/X_COM_COMM_CDI2.txt',
FORMATFILE = 'X:/DATA/COMMISSIONS/FF/X_COM_COMM_CDI2_FF.txt', FIRSTROW = 1, CODEPAGE=65001) as zzz



GO


