USE [MIS]
GO

/****** Object:  View [STG].[X_COM_UXLSPLCOME_V]    Script Date: 27/2/2025 11:50:56 рм ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW STG.X_COM_UXLSPLCOME_V
AS
SELECT 
  ETOS_PROM
, MINAS_PROM
, COD_KATAST_TRAPEZAS 
, case when ltrim(rtrim(isnull(COD_KATAST_TRAPEZAS,''))) = '' then '0' else right('0000' + COD_KATAST_TRAPEZAS,4) end as COD_KATAST_TRAPEZAS_CALC
, PERIGRAF_KATAST_DIKTYOU
, case when rtrim(ltrim(isnull(PERIGRAF_KATAST_DIKTYOU,''))) = '' then '0' else rtrim(ltrim(replace(PERIGRAF_KATAST_DIKTYOU,'"',''))) end as PERIGRAF_KATAST_DIKTYOU_CALC
, AR_SIMVOLEOU
, AR_APODIKSIS
, COD_KALIPSIS
, case when rtrim(ltrim(isnull(COD_KALIPSIS,''))) = '' then '0' else rtrim(ltrim(replace(COD_KALIPSIS,'"',''))) end as COD_KALIPSIS_CALC
, ONOMASIA_KALIPSIS
, case when rtrim(ltrim(isnull(ONOMASIA_KALIPSIS,''))) = '' then '0' else rtrim(ltrim(replace(ONOMASIA_KALIPSIS,'"',''))) end as ONOMASIA_KALIPSIS_CALC
, ONOMASIA_SIXNOTITAS
, case when rtrim(ltrim(isnull(ONOMASIA_SIXNOTITAS,''))) = '' then '0' else rtrim(ltrim(replace(ONOMASIA_SIXNOTITAS,'"',''))) end as ONOMASIA_SIXNOTITAS_CALC
, ETOS_ISXYOS_VASIKIS
, DRK_ASF
, AR_PELATI_ALPHA_BANK
, case when rtrim(ltrim(isnull(AR_PELATI_ALPHA_BANK,''))) = '' then '0' else rtrim(ltrim(replace(AR_PELATI_ALPHA_BANK,'"',''))) end as AR_PELATI_ALPHA_BANK_CALC
, ONOMATEPONIMO
, case when rtrim(ltrim(isnull(ONOMATEPONIMO,''))) = '' then '0' else rtrim(ltrim(replace(ONOMATEPONIMO,'"',''))) end as ONOMATEPONIMO_CALC
, AFM
, case when rtrim(ltrim(isnull(AFM,''))) = '' then '0' else rtrim(ltrim(replace(AFM,'"',''))) end as AFM_CALC
, LEITOURGOS
, case when rtrim(ltrim(isnull(LEITOURGOS,''))) = '' then '0' else rtrim(ltrim(replace(LEITOURGOS,'"',''))) end as LEITOURGOS_CALC
, COD_SIMVASIS
, IMEROMINIA_ISXYOS
, IMEROMINIA_ENARKSEOS 
, IMEROMINIA_LIKSIS
, IMEROMINIA_PLIROMIS
, PERIGRAFI_STATUS
, case when rtrim(ltrim(isnull(PERIGRAFI_STATUS,''))) = '' then '0' else rtrim(ltrim(replace(PERIGRAFI_STATUS,'"',''))) end as PERIGRAFI_STATUS_CALC
, ASFALISTRO_DOSIS
, ROUND(cast(REPLACE(REPLACE(ISNULL(ASFALISTRO_DOSIS,'0'), '.', ''),',', '.') as float) ,2) ASFALISTRO_DOSIS_CALC
, PROM_KALIPSIS
, ROUND(cast(REPLACE(REPLACE(ISNULL(PROM_KALIPSIS,'0'), '.', ''),',', '.') as float) ,2) PROM_KALIPSIS_CALC
, FOROS_PROM
, ROUND(cast(REPLACE(REPLACE(ISNULL(FOROS_PROM,'0'), '.', ''),',', '.') as float) ,2) FOROS_PROM_CALC
, TROPOS_PLIROMIS
, ARITHMOS_AITISIS
, IMEROMINIA_KATAXORISIS
, EKS_COD_POLITI
, case when rtrim(ltrim(isnull(EKS_COD_POLITI,''))) = '' then '0' else rtrim(ltrim(replace(EKS_COD_POLITI,'"',''))) end as EKS_COD_POLITI_CALC
, ETHSIO_ASFALISTIRIO
, ROUND(cast(REPLACE(REPLACE(ISNULL(ETHSIO_ASFALISTIRIO,'0'), '.', ''),',', '.') as float) ,2) ETHSIO_ASFALISTIRIO_CALC
, UPDT_ID  


FROM    OPENROWSET(BULK 'X:/DATA/Commissions/DATA/X_COM_UXLSPLCOME.csv', FORMATFILE = 'X:/DATA/Commissions/FF/X_COM_UXLSPLCOME_FF.txt', FIRSTROW=4, CODEPAGE=65001) as zzz


GO