USE [MIS]
GO

/****** Object:  View [STG].[X_COM_FACTORS_V]    Script Date: 28/2/2025 2:05:49 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





ALTER VIEW [STG].[X_COM_FACTORS_PRV_V]
AS
SELECT 
	CLIENT_ID --Κωδ. Πελάτη
,   CASE WHEN isnull(CLIENT_ID,'') = '' THEN '0' ELSE CLIENT_ID END  AS CLIENT_ID_CALC
,	CLIENT_ACCOUNT_ID --ID account Πελάτη
,   CASE WHEN isnull(CLIENT_ACCOUNT_ID,'') = '' THEN '0' ELSE CLIENT_ACCOUNT_ID END  AS CLIENT_ACCOUNT_ID_CALC
,	CONTRACT_NUMBER --Αριθμός Συμβολαίου
,	CONTRACT_TYPE --Τύπος Συμβολαίου
,	REDUCTION --Με/Χωρίς Αναγωγή
,	PRODUCT_TYPE --Τύπος Προϊόντος
,	CURRENCY --Κωδ. Νομίσματος
,	AFM --ΑΦΜ
,   CASE WHEN isnull(AFM,'') = '' THEN '-' 
         ELSE AFM END  AS AFM_CALC
,	CDI --CDI
,   CASE WHEN isnull(CDI,'') = '' THEN '0' 
         ELSE CDI END  AS CDI_CALC
,	COMPANY_NAME --Επωνυμία Εταιρείας
,   CASE WHEN isnull(COMPANY_NAME,'') = '' THEN '-' 
         ELSE COMPANY_NAME END  AS COMPANY_NAME_CALC
,	BRANCH --Υποκατάστημα Τραπέζης
, case when isnumeric(ltrim(rtrim(BRANCH))) = 0 then '0'   
       when BRANCH is null then '0'
	   when BRANCH = '' then '0'
	   else RIGHT('0000'+ltrim(rtrim(BRANCH)), 4) END  AS BRANCH_CALC
,	MDS --Αρμόδιο Συμβούλιο

,	LIMIT --Όριο
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(LIMIT, '0'))), '.', ''), ',', '.')), 6) as LIMIT_CALC

,	LIMIT_WITH_REDUCTION --Όριο με Αναγωγή
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(LIMIT_WITH_REDUCTION, '0'))), '.', ''), ',', '.')), 6) AS LIMIT_WITH_REDUCTION_CALC

,	LIMIT_WITHOUT_REDUCTION --Όριο χωρίς Αναγωγή
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(LIMIT_WITHOUT_REDUCTION, '0'))), '.', ''), ',', '.')), 6) AS LIMIT_WITHOUT_REDUCTION_CALC

,	RATE_TYPE --Τύπος Επιτοκίου
,	RATE --Τιμή Επιτοκίου
   ,ROUND(CONVERT(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(RATE, '0'))), '.', ''), ',', '.')), 6) AS RATE_CALC

,	SPREAD --Περιθώριο Προμ. Προεξ.
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(SPREAD, '0'))), '.', ''), ',', '.')), 6) as SPREAD_CALC

,	BALANCE --Υπόλ. Αλληλόχρεου
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(BALANCE, '0'))), '.', ''), ',', '.')), 6)  AS BALANCE_CALC
   
,	BALANCE_NO_REDUCTION --Υπόλοιπο χωρίς αναγωγή
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(BALANCE_NO_REDUCTION, '0'))), '.', ''), ',', '.')), 6) AS BALANCE_NO_REDUCTION_CALC

,	AVERAGE_MTD_BALANCE --Μέσο Υπόλ. Αλληλόχρεου Μηνός!!!!!!!!!!!
,   round(convert(float,REPLACE(replace(LTRIM(RTRIM(isnull(AVERAGE_MTD_BALANCE,'0'))),'.',''),',','.')),6)  AS AVERAGE_MTD_BALANCE_CALC

,	AVERAGE_YTD_BALANCE --Μέσο Υπόλ. Αλληλόχρεου Έτους
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(AVERAGE_YTD_BALANCE, '0'))), '.', ''), ',', '.')), 6)  AS AVERAGE_YTD_BALANCE_CALC

,	DISBURSMENT_AMOUNT --Ετήσιος Τζίρος
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(DISBURSMENT_AMOUNT, '0'))), '.', ''), ',', '.')), 6) AS DISBURSMENT_AMOUNT_CALC

,	ANNUAL_COMMISSION_FEE --Ετήσια Προμ. Διαχειρ.
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(ANNUAL_COMMISSION_FEE, '0'))), '.', ''), ',', '.')), 6) AS ANNUAL_COMMISSION_FEE_CALC

,	NII_INTEREST_YTD --Ετήσια Προμ. Προεξ.
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(NII_INTEREST_YTD,'0'))),'.', ''),',','.')), 6)  AS NII_INTEREST_YTD_CALC

,	BALANCE2 --Υπόλοιπο Καθολικού
,   round(convert(FLOAT, REPLACE(REPLACE(LTRIM(RTRIM(isnull(BALANCE2, '0'))), '.', ''), ',', '.')), 6)  AS BALANCE2_CALC

,	REAL_CUSTOMER_STATUS --Real Customer Status

,	RELATIONSHIP_START_DATE --Ημερομηνια έναρξης Συνεργασίας
--,   CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(RELATIONSHIP_START_DATE,''),'/','-'))) = '' THEN '9999-01-01'   
--  ELSE LTRIM(RTRIM(REPLACE(RELATIONSHIP_START_DATE,'/','-'))) END,103 ) AS RELATIONSHIP_START_DATE_CALC
 ,   ISNULL(CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(RELATIONSHIP_START_DATE,'9999-01-01'),'/','-'))) = '' THEN '9999-01-01'  
 ELSE LTRIM(RTRIM(REPLACE(RELATIONSHIP_START_DATE,'/','-'))) END,103 ),'9999-01-01') AS RELATIONSHIP_START_DATE_CALC

--,	EISFORA_L128_MTD --MTD_EISFORA
--,   round(convert(float,REPLACE(replace(LTRIM(RTRIM(isnull(EISFORA_L128_MTD,'0'))),'.',''),',','.')),2)  AS EISFORA_L128_MTD_CALC

FROM    OPENROWSET(BULK 'X:/DATA/Commissions/DATA/X_COM_FACTORS_PRV.csv', FORMATFILE = 'X:/DATA/Commissions/FF/X_COM_FACTORS_PRV_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz








GO


