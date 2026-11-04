USE [MIS]
GO

/****** Object:  View [STG].[X_ECL_V]    Script Date: 22/9/2020 12:51:22 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO



CREATE VIEW [STG].[X_ECL_V]
AS
SELECT
   AC_CODE
,  CASE WHEN isnull(AC_CODE,'') = '' THEN '0' 
   ELSE ltrim(rtrim(AC_CODE)) END  AS AC_CODE_CALC  			
,  CDI	
,  CASE WHEN isnull(CDI,'') = ''  THEN '0' 
   ELSE CDI END  AS CDI_CALC 		
,  SOURCE_SYSTEM_ID	
,  EXTRACT_DATE		
,  INDIVIDUAL_FLAG	
,  BASIC_SEGMENTATION		
,  PORTFOLIO_DATA_MART		
,  IFRS_STAGE		
,  POCI_FLAG	
,  FAILED_SPPIFLAG	
,  EBASTATUS		
,  PAST_DUE_BUCKET_MATERIALITY		
,  EIR	
,  round(convert(float,REPLACE(LTRIM(RTRIM(isnull(EIR,0))),',','.')),2)  AS EIR_CALC
,  EXPOSURE_ON_BALANCE
,  round(convert(float,REPLACE(LTRIM(RTRIM(isnull(EXPOSURE_ON_BALANCE,0))),',','.')),2)  AS EXPOSURE_ON_BALANCE_CALC		
,  CCF		
,  round(convert(float,REPLACE(LTRIM(RTRIM(isnull(CCF,0))),',','.')),2)  AS CCF_CALC
,  EXPOSURE_OFF_BALANCE
,  round(convert(float,REPLACE(LTRIM(RTRIM(isnull(EXPOSURE_OFF_BALANCE,0))),',','.')),2)  AS EXPOSURE_OFF_BALANCE_CALC
,  TOTAL_EXPOSURE
,  round(convert(float,REPLACE(LTRIM(RTRIM(isnull(TOTAL_EXPOSURE,0))),',','.')),2)  AS TOTAL_EXPOSURE_CALC		
,  IFRS_GROSS_CARRYING_AMT	
,  round(convert(float,REPLACE(LTRIM(RTRIM(isnull(IFRS_GROSS_CARRYING_AMT,0))),',','.')),2)  AS IFRS_GROSS_CARRYING_AMT_CALC
,  ECL_WEIGHTED	
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(ECL_WEIGHTED,0))),',','.')),2)  AS ECL_WEIGHTED_CALC	
,  ECL_12M
,   round(convert(float,REPLACE(LTRIM(RTRIM(isnull(ECL_12M,0))),',','.')),2)  AS ECL_12M_CALC

FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_ECL.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_ECL_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz




GO


