alter VIEW STG.X_CLIENT_GR_3_V
AS
SELECT
	REF_MONTH
,	CLIENT_CODE
,   ltrim(rtrim(ISNULL(CLIENT_CODE, '0' ))) AS CLIENT_CODE_CALC
,	CLIENT_NAME
,   ltrim(rtrim(ISNULL(CLIENT_NAME, '-' ))) AS CLIENT_NAME_CALC
,	CLIENT_AFM_CODE
,   ltrim(rtrim(ISNULL(CLIENT_AFM_CODE, '-' ))) AS CLIENT_AFM_CODE_CALC
,	CLIENT_ID_CODE
,	CLIENT_HOST_CODE
,	CLIENT_MONITORING_UNIT_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_MONITORING_UNIT_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_MONITORING_UNIT_CODE)) end as CLIENT_MONITORING_UNIT_CODE_CALC
,	CLIENT_ANNOUNCEMENT_UNIT_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_ANNOUNCEMENT_UNIT_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_ANNOUNCEMENT_UNIT_CODE)) end as CLIENT_ANNOUNCEMENT_UNIT_CODE_CALC
,	CLIENT_MIS_UNIT_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_MIS_UNIT_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_MIS_UNIT_CODE)) end as CLIENT_MIS_UNIT_CODE_CALC
,	CLIENT_CRM_SEGMENT_CODE
,   ISNULL(CLIENT_CRM_SEGMENT_CODE, '0' )  AS CLIENT_CRM_SEGMENT_CODE_CALC
,	CLIENT_CL_GROUP_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_CL_GROUP_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_CL_GROUP_CODE)) end as CLIENT_CL_GROUP_CODE_CALC
,	CLIENT_CL_RM_CODE

,   case when ltrim(rtrim(ISNULL(REPLACE(client_cl_rm_code,CHAR(13),''), ''))) ='' then '0'
         else ltrim(rtrim(REPLACE(client_cl_rm_code,CHAR(13),''))) end as CLIENT_CL_RM_CODE_CALC
,	CLIENT_CL_TYPE_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_CL_TYPE_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_CL_TYPE_CODE)) end as CLIENT_CL_TYPE_CODE_CALC
,	CLIENT_CL_CATEGORY_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_CL_CATEGORY_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_CL_CATEGORY_CODE)) end as CLIENT_CL_CATEGORY_CODE_CALC
,	CLIENT_CL_MME_BOG_CODE
,	CLIENT_KIND_CODE
,	CLIENT_GOLD_AMEX_CODE
,	CLIENT_CL_RATING_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_CL_RATING_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_CL_RATING_CODE)) end as CLIENT_CL_RATING_CODE_CALC
,	CLIENT_BRANCH_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_BRANCH_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_BRANCH_CODE)) end as CLIENT_BRANCH_CODE_CALC
,	CLIENT_STAKOD_CODE
,   case when ltrim(rtrim(ISNULL(CLIENT_STAKOD_CODE, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_STAKOD_CODE)) end as CLIENT_STAKOD_CODE_CALC
,	CLIENT_NACE1_CODE
,	CLIENT_NACE2_CODE
,	CLIENT_OBLIGOR_COUNTRY
,   case when ltrim(rtrim(ISNULL(CLIENT_OBLIGOR_COUNTRY, ''))) ='' then '0'
         else ltrim(rtrim(CLIENT_OBLIGOR_COUNTRY)) end as CLIENT_OBLIGOR_COUNTRY_CALC
,	CLIENT_NO_OF_EMPLOYEES
,	CLIENT_FIN_ASSETS
,	CLIENT_FIN_TURNOVER
,	PARENT_CLIENT_CODE
,   ltrim(rtrim(ISNULL(PARENT_CLIENT_CODE, '0' ))) AS PARENT_CLIENT_CODE_CALC
FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_CLIENT_GR_3.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_CLIENT_GR_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz

