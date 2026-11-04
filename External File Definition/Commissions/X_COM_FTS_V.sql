USE [MIS]
GO

/****** Object:  View [STG].[X_COM_FTS_V]    Script Date: 11/3/2025 2:38:20 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




ALTER VIEW [STG].[X_COM_FTS_V]
AS

SELECT 
            ltrim(rtrim(substring(X_COM_FTS,2,8)))      AS REFERENCE_DATE					--[Reference Date]
		    ,ltrim(rtrim(substring(X_COM_FTS,10,5)))    AS ORDER_INDICATOR			 --     ,[Order Indicator]
			,ltrim(rtrim(substring(X_COM_FTS,15,35)))	AS ORDER_IDENTIFICATION_NUMBER			 --     ,[Order Identification Number]
			,ltrim(rtrim(substring(X_COM_FTS,50,5)))	AS ORDER_STATUS			 --     ,[Order Status]
			,ltrim(rtrim(substring(X_COM_FTS,55,11)))	AS COUNTERPARTY_BIC			 --     ,[Counterparty BIC]
			,ltrim(rtrim(substring(X_COM_FTS,66,5)))	AS ORDER_TYPE			 --     ,[Order Type]
			,ltrim(rtrim(substring(X_COM_FTS,71,5)))	AS ORIGINATOR			 --     ,[Originator]
			,ltrim(rtrim(substring(X_COM_FTS,76,5)))	AS PRODUCT_CODE			 --     ,[Product Code]
			,ltrim(rtrim(substring(X_COM_FTS,81,5)))	AS SERVICE_TYPE_ID			 --     ,[Service Type Id]
			,ltrim(rtrim(substring(X_COM_FTS,86,25)))	AS TRANSACTION_REFERENCE_CODE			 --     ,[Transaction Reference Number]
			,ltrim(rtrim(substring(X_COM_FTS,111,10)))	AS CUSTOMER_NUMBER			 --     ,[Customer Number]
			,ltrim(rtrim(substring(X_COM_FTS,121,34)))	AS CUSTOMER_ACCOUNT			 --     ,[Customer Account]
			,ltrim(rtrim(substring(X_COM_FTS,155,8)))	AS VALUE_DATE			 --     ,[Value Date]
			,ltrim(rtrim(substring(X_COM_FTS,163,4)))	AS BRANCH			 --     ,[Branch]
			,ltrim(rtrim(substring(X_COM_FTS,167,2)))	AS COUNTRY			 --     ,[Country]
			,ltrim(rtrim(substring(X_COM_FTS,294,34)))	AS COUNTERPARTY_ACCOUNT			 --     ,[Counterparty Account]
			,ltrim(rtrim(substring(X_COM_FTS,328,1)))	AS FORWARD_INDICATOR			 --     ,[Forward Indicator]
			,ltrim(rtrim(substring(X_COM_FTS,329,20)))	AS ORDERED_AMOUNT			 --     ,[Ordered Amount]
			,ltrim(rtrim(substring(X_COM_FTS,349,3)))	AS ORDERED_CURRENCY			 --     ,[Ordered Currency]
			,ltrim(rtrim(substring(X_COM_FTS,352,5)))	AS CHARGES_OPTION			 --     ,[Charges Option]
			,ltrim(rtrim(substring(X_COM_FTS,357,20)))	AS CHARGES_ACTUAL_AMOUNT			 --     ,[Charges Actual Amount]
			,ltrim(rtrim(substring(X_COM_FTS,377,1)))	AS CHARGES_SPECIAL_INDEX			 --     ,[Charges_Special_Index]
			,ltrim(rtrim(substring(X_COM_FTS,378,3)))	AS CHARGES_ISO_CURRENCY			 --     ,[Charges ISO Currency]
			,ltrim(rtrim(substring(X_COM_FTS,381,25)))	AS PAYMENT_REFERENCE_NUMBER			 --     ,[Payment Reference Number]
			,ltrim(rtrim(substring(X_COM_FTS,406,20)))	AS PAYMENT_AMOUNT			 --     ,[Payment Amount] 
			,ltrim(rtrim(substring(X_COM_FTS,429,5)))	AS PAYMENT_PURPOSE			 --     ,[Payment Purpose]
			,ltrim(rtrim(substring(X_COM_FTS,434,50)))  AS PAYMENT_COUNTERPARTY_NAME              ---[Payment Counterparty Name]
			,ltrim(rtrim(substring(X_COM_FTS,484,5)))   AS PAYMENT_COUNTERPARTY_HEBIC             ---[Payment Counterparty HEBIC]
			,ltrim(rtrim(substring(X_COM_FTS,769,140))) AS REMMITANCE_INFO               ---[Remmitance Info]

			,ltrim(rtrim(substring(X_COM_FTS,1,800)))      AS FTS_RECORD --ROW_DATA	



--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,78,17),'0'))),',', '.')),2) as CURRENT_BALANCE_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,95,17))) as CURRENT_BALANCE_IN_EURO
--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,95,17),'0'))),',', '.')),2) as CURRENT_BALANCE_IN_EURO_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,112,9))) as WA_CURRENT_INTEREST_RATE
--,round(convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,112,9),'0'))),',', '.')),6) AS WA_CURRENT_INTEREST_RATE_CALC
--,ltrim(rtrim(substring(rom_loans_depos_record,121,17))) as NUMBER_OF_NON_ZERO_ACCOUNTS
--,convert(float,REPLACE(ltrim(rtrim(isnull(substring(rom_loans_depos_record,121,17),0))),',', '.')) AS NUMBER_OF_NON_ZERO_ACCOUNTS_CALC

FROM    OPENROWSET(BULK 'X:/DATA/COMMISSIONS/DATA/X_COM_FTS.txt',
FORMATFILE = 'X:/DATA/COMMISSIONS/FF/X_COM_FTS_FF.txt', FIRSTROW = 2, CODEPAGE=65001) as zzz




GO


