

ALTER VIEW [STG].[X_FACTORS_PREVIOUS_V]
AS
SELECT 
	CLIENT_ID --Κωδ. Πελάτη
,   CASE WHEN isnull(CLIENT_ID,'') = '' THEN '0' 
         ELSE CLIENT_ID END  AS CLIENT_ID_CALC
,	CLIENT_ACCOUNT_ID --ID account Πελάτη
,   CASE WHEN isnull(CLIENT_ACCOUNT_ID,'') = '' THEN '0' 
         ELSE CLIENT_ACCOUNT_ID END  AS CLIENT_ACCOUNT_ID_CALC
,	CONTRACT_NUMBER --Αριθμός Συμβολαίου
,	CONTRACT_TYPE --Τύπος Συμβολαίου
,	REDUCTION --Με/Χωρίς Αναγωγή
,	PRODUCT_TYPE --Τύπος Προϊόντος
,	CURRENCY --Κωδ. Νομίσματος
,	AFM --ΑΦΜ
,   CASE WHEN isnull(CDI,'') = '' THEN '0' 
         ELSE CDI END  AS CDI_CALC
,	CDI --CDI
,   CASE WHEN isnull(AFM,'') = '' THEN '-' 
         ELSE AFM END  AS AFM_CALC
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
,	LIMIT_WITH_REDUCTION --Όριο με Αναγωγή
,	LIMIT_WITHOUT_REDUCTION --Όριο χωρίς Αναγωγή
,	RATE_TYPE --Τύπος Επιτοκίου
,	RATE --Τιμή Επιτοκίου
,	SPREAD --Περιθώριο Προμ. Προεξ.
,	BALANCE --Υπόλ. Αλληλόχρεου
,   round(convert(float,REPLACE(replace(LTRIM(RTRIM(isnull(BALANCE,'0'))),'.',''),',','.')),2)  AS BALANCE_CALC
,	BALANCE_NO_REDUCTION --Υπόλοιπο χωρίς αναγωγή
,	AVERAGE_MTD_BALANCE --Μέσο Υπόλ. Αλληλόχρεου Μηνός
,   round(convert(float,REPLACE(replace(LTRIM(RTRIM(isnull(AVERAGE_MTD_BALANCE,'0'))),'.',''),',','.')),2)  AS AVERAGE_MTD_BALANCE_CALC
,	AVERAGE_YTD_BALANCE --Μέσο Υπόλ. Αλληλόχρεου Έτους
,	DISBURSMENT_AMOUNT --Ετήσιος Τζίρος
,	ANNUAL_COMMISSION_FEE --Ετήσια Προμ. Διαχειρ.
,	NII_INTEREST_YTD --Ετήσια Προμ. Προεξ.
,   round(convert(float,REPLACE(replace(LTRIM(RTRIM(isnull(NII_INTEREST_YTD,'0'))),'.',''),',','.')),2)  AS NII_INTEREST_YTD_CALC
,	BALANCE2 --Υπόλοιπο Καθολικού
,	REAL_CUSTOMER_STATUS --Real Customer Status
,	RELATIONSHIP_START_DATE --Ημερομηνια έναρξης Συνεργασίας

 ,   ISNULL(CONVERT(DATE,CASE WHEN LTRIM(RTRIM(REPLACE(isnull(RELATIONSHIP_START_DATE,'9999-01-01'),'/','-'))) = '' THEN '9999-01-01'  
 ELSE LTRIM(RTRIM(REPLACE(RELATIONSHIP_START_DATE,'/','-'))) END,103 ),'9999-01-01') AS RELATIONSHIP_START_DATE_CALC
 --,   cast(CASE WHEN isnull(RELATIONSHIP_START_DATE,'') = '' THEN '9999-01-01' 
 --        ELSE RELATIONSHIP_START_DATE END as date) AS RELATIONSHIP_START_DATE_CALC
--,	EISFORA_L128_MTD --MTD_EISFORA
--,   round(convert(float,REPLACE(replace(LTRIM(RTRIM(isnull(EISFORA_L128_MTD,'0'))),'.',''),',','.')),2)  AS EISFORA_L128_MTD_CALC
FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_FACTORS_PREVIOUS.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_FACTORS_PREVIOUS_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz


GO


