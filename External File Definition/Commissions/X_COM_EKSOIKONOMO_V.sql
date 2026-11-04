USE [MIS]
GO

/****** Object:  View [STG].[X_COM_EKSOIKONOMO_V]    Script Date: 19/6/2025 3:51:29 ЛЛ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




ALTER VIEW [STG].[X_COM_EKSOIKONOMO_V]
AS

SELECT 
  ARITHMOS_AITHSHS
, PISTOSI_SE                			
, CDI                             
, POSO                
, ROUND(cast(REPLACE(REPLACE(ISNULL(POSO,'0'), '.', ''),',', '.') as float) ,2) as POSO_CALC


FROM    OPENROWSET(BULK 'X:/DATA/Commissions/DATA/X_COM_EKSOIKONOMO.csv', FORMATFILE = 'X:/DATA/Commissions/FF/X_COM_EKSOIKONOMO_FF.txt', FIRSTROW=2, CODEPAGE=65001) as zzz
 
 where ARITHMOS_AITHSHS not like '%сумок%'




GO


