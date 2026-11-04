


ALTER VIEW [STG].[X_RWAS_RATIO_V]
AS
SELECT
    HMNIA
,   ENTITY_CODE
, ltrim(rtrim(replace(ENTITY_CODE,'@',''))) as ENTITY_CODE_CALC  -------------  ENTITY_CODE_RWA
,   EBA_FLAG_CODE
,   CASE WHEN ltrim(rtrim(isnull(EBA_FLAG_CODE,''))) = ''  THEN '0' ELSE ltrim(rtrim(EBA_FLAG_CODE)) END AS EBA_FLAG_CODE_CALC
,   ASSET_CLASS_CODE
,   RATIO
,   ROUND(cast(REPLACE(REPLACE(ISNULL(RATIO,'0'), '.', ''),',', '.') as decimal(12,6)) ,4) as RATIO_CALC

FROM    OPENROWSET(BULK 'X:/DATA/CLIENT/DATA/X_RWAS_RATIO.csv', FORMATFILE = 'X:/DATA/CLIENT/FF/X_RWAS_RATIO_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz








