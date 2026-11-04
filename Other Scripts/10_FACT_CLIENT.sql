
INSERT INTO REP.DIM_COMMISSION_TYPE (
  	ENTITY_CODE
  ,	COMMISSION_TYPE_CODE
)
SELECT
	   src.ENTITY_CODE                               ENTITY_CODE
	 , src.COMMISSION_TYPE_CODE                      COMMISSION_TYPE_CODE
FROM (
	SELECT 
		  CASE WHEN ENTITY_CODE          IS NULL OR ENTITY_CODE          = '' THEN '0' ELSE  ENTITY_CODE            END    ENTITY_CODE
		, CASE WHEN COMMISSION_TYPE_CODE IS NULL OR COMMISSION_TYPE_CODE = '' THEN '0' ELSE  COMMISSION_TYPE_CODE   END    COMMISSION_TYPE_CODE
	FROM STG.PRE_FACT_CLIENT
	GROUP BY 
		  CASE WHEN ENTITY_CODE          IS NULL OR ENTITY_CODE          = '' THEN '0' ELSE  ENTITY_CODE            END 
		, CASE WHEN COMMISSION_TYPE_CODE IS NULL OR COMMISSION_TYPE_CODE = '' THEN '0' ELSE  COMMISSION_TYPE_CODE   END 
	) src LEFT JOIN	REP.DIM_COMMISSION_TYPE trg ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.COMMISSION_TYPE_CODE = trg.COMMISSION_TYPE_CODE
WHERE trg.ENTITY_CODE IS NULL AND trg.COMMISSION_TYPE_CODE IS NULL





INSERT INTO REP.DIM_MOVEMENT_JUSTIFICATION (
  	ENTITY_CODE
  ,	MOVEMENT_JUSTIFICATION_CODE
)
SELECT
	   src.ENTITY_CODE                               ENTITY_CODE
	 , src.MOVEMENT_JUSTIFICATION_CODE               MOVEMENT_JUSTIFICATION_CODE
FROM (
	SELECT 
		  CASE WHEN ENTITY_CODE                 IS NULL OR ENTITY_CODE                 = '' THEN '0' ELSE  ENTITY_CODE                   END    ENTITY_CODE
		, CASE WHEN MOVEMENT_JUSTIFICATION_CODE IS NULL OR MOVEMENT_JUSTIFICATION_CODE = '' THEN '0' ELSE  MOVEMENT_JUSTIFICATION_CODE   END    MOVEMENT_JUSTIFICATION_CODE
	FROM STG.PRE_FACT_CLIENT
	GROUP BY 
		  CASE WHEN ENTITY_CODE                 IS NULL OR ENTITY_CODE                 = '' THEN '0' ELSE  ENTITY_CODE                   END 
		, CASE WHEN MOVEMENT_JUSTIFICATION_CODE IS NULL OR MOVEMENT_JUSTIFICATION_CODE = '' THEN '0' ELSE  MOVEMENT_JUSTIFICATION_CODE   END 
	) src LEFT JOIN	REP.DIM_MOVEMENT_JUSTIFICATION trg ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.MOVEMENT_JUSTIFICATION_CODE = trg.MOVEMENT_JUSTIFICATION_CODE
WHERE trg.ENTITY_CODE IS NULL AND trg.MOVEMENT_JUSTIFICATION_CODE IS NULL





INSERT INTO REP.DIM_SOURCE_APPLICATION (
  	ENTITY_CODE
  ,	SOURCE_APPLICATION_CODE
)
SELECT
	   src.ENTITY_CODE                               ENTITY_CODE
	 , src.SOURCE_APPLICATION_CODE                   SOURCE_APPLICATION_CODE
FROM (
	SELECT 
		  CASE WHEN ENTITY_CODE                 IS NULL OR ENTITY_CODE                 = '' THEN '0' ELSE  ENTITY_CODE                   END    ENTITY_CODE
		, CASE WHEN SOURCE_APPLICATION_CODE     IS NULL OR SOURCE_APPLICATION_CODE     = '' THEN '0' ELSE  SOURCE_APPLICATION_CODE       END    SOURCE_APPLICATION_CODE
	FROM STG.PRE_FACT_CLIENT
	GROUP BY 
		  CASE WHEN ENTITY_CODE                 IS NULL OR ENTITY_CODE                 = '' THEN '0' ELSE  ENTITY_CODE                   END 
		, CASE WHEN SOURCE_APPLICATION_CODE     IS NULL OR SOURCE_APPLICATION_CODE     = '' THEN '0' ELSE  SOURCE_APPLICATION_CODE       END 
	) src LEFT JOIN	REP.DIM_SOURCE_APPLICATION trg ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.SOURCE_APPLICATION_CODE = trg.SOURCE_APPLICATION_CODE
WHERE trg.ENTITY_CODE IS NULL AND trg.SOURCE_APPLICATION_CODE IS NULL




INSERT INTO REP.DIM_CLIENT (
	  DIM_PERIOD_ID                        
	, ENTITY_CODE                  
	, CLIENT_CODE                  
	, PARENT_CLIENT_CODE      
)
SELECT
	   DIM_REF_PERIOD.DIM_PERIOD_ID				             DIM_PERIOD_ID
	 , src.ENTITY_CODE                               ENTITY_CODE
	 , src.CLIENT_CODE                               CLIENT_CODE
	 , src.CLIENT_CODE                               PARENT_CLIENT_CODE
FROM REP.FACT_CLIENT_REF_DATE DIM_REF_PERIOD,
   (
	SELECT 
		  CASE WHEN ENTITY_CODE IS NULL OR ENTITY_CODE = '' THEN '0' ELSE  ENTITY_CODE   END    ENTITY_CODE
		, CASE WHEN CLIENT_CODE IS NULL OR CLIENT_CODE = '' THEN '0' ELSE  CLIENT_CODE   END    CLIENT_CODE
	FROM STG.PRE_FACT_CLIENT
	GROUP BY 
		  CASE WHEN ENTITY_CODE IS NULL OR ENTITY_CODE = '' THEN '0' ELSE  ENTITY_CODE   END
		, CASE WHEN CLIENT_CODE IS NULL OR CLIENT_CODE = '' THEN '0' ELSE  CLIENT_CODE   END
	) src LEFT JOIN	REP.DIM_CLIENT trg ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.CLIENT_CODE = trg.CLIENT_CODE
WHERE trg.ENTITY_CODE IS NULL AND trg.CLIENT_CODE IS NULL





INSERT INTO REP.DIM_ACCOUNT (
	   DIM_PERIOD_ID
     , ACCOUNT_CODE
	 , ENTITY_CODE
	 , ACCOUNT_GL_ACCOUNT_TYPE_CODE
   , ACCOUNT_GL_ACCOUNT_TYPE_ID
)
SELECT
	   DIM_REF_PERIOD.DIM_PERIOD_ID			      DIM_PERIOD_ID                          
	 , src.ACCOUNT_CODE                   ACCOUNT_CODE                   
	 , src.ENTITY_CODE                    ENTITY_CODE                    
	 , src.GL_ACCOUNT_TYPE_CODE           ACCOUNT_GL_ACCOUNT_TYPE_CODE   
	 , src.GL_ACCOUNT_TYPE_ID             ACCOUNT_GL_ACCOUNT_TYPE_ID   
FROM REP.FACT_CLIENT_REF_DATE DIM_REF_PERIOD,
   (
	SELECT 
		  CASE WHEN x.ENTITY_CODE             IS NULL OR x.ENTITY_CODE            = '' THEN '0' ELSE  x.ENTITY_CODE            END ENTITY_CODE          
		, CASE WHEN x.ACCOUNT_CODE            IS NULL OR x.ACCOUNT_CODE           = '' THEN '0' ELSE  x.ACCOUNT_CODE           END ACCOUNT_CODE         
		, CASE WHEN x.GL_ACCOUNT_TYPE_CODE    IS NULL OR x.GL_ACCOUNT_TYPE_CODE   = '' THEN '0' ELSE  x.GL_ACCOUNT_TYPE_CODE   END GL_ACCOUNT_TYPE_CODE 
        , CASE WHEN y.DIM_GL_ACCOUNT_TYPE_ID  IS NULL OR y.DIM_GL_ACCOUNT_TYPE_ID = '' THEN '0' ELSE  y.DIM_GL_ACCOUNT_TYPE_ID END GL_ACCOUNT_TYPE_ID
	FROM STG.PRE_FACT_CLIENT x LEFT JOIN REP.DIM_GL_ACCOUNT_TYPE y ON x.ENTITY_CODE = y.ENTITY_CODE AND x.GL_ACCOUNT_TYPE_CODE = y.GL_ACCOUNT_TYPE_CODE 
	GROUP BY 
		  CASE WHEN x.ENTITY_CODE             IS NULL OR x.ENTITY_CODE            = '' THEN '0' ELSE  x.ENTITY_CODE            END           
		, CASE WHEN x.ACCOUNT_CODE            IS NULL OR x.ACCOUNT_CODE           = '' THEN '0' ELSE  x.ACCOUNT_CODE           END          
		, CASE WHEN x.GL_ACCOUNT_TYPE_CODE    IS NULL OR x.GL_ACCOUNT_TYPE_CODE   = '' THEN '0' ELSE  x.GL_ACCOUNT_TYPE_CODE   END  
        , CASE WHEN y.DIM_GL_ACCOUNT_TYPE_ID  IS NULL OR y.DIM_GL_ACCOUNT_TYPE_ID = '' THEN '0' ELSE  y.DIM_GL_ACCOUNT_TYPE_ID END 
	) src LEFT JOIN	REP.DIM_ACCOUNT trg ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.ACCOUNT_CODE = trg.ACCOUNT_CODE AND src.GL_ACCOUNT_TYPE_CODE = trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE
WHERE trg.ENTITY_CODE IS NULL AND trg.ACCOUNT_CODE IS NULL AND trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE IS NULL







INSERT INTO REP.FACT_CLIENT	 
(
		DIM_ACCOUNT_ID
	,	DIM_CLIENT_ID
	,	DIM_PERIOD_ID
	,	DIM_SOURCE_ID
	,	DIM_SCENARIO_ID
	,	DIM_ENTITY_ID
	,	DIM_CURRENCY_ID
	,	DIM_MOVEMENT_JUSTIFICATION_ID
	,	DIM_BALANCE_TYPE_ID
	,	DIM_SOURCE_APPLICATION_ID
	,	DIM_COMMISSION_TYPE_ID
	,	DIM_CURRENCY_FTP_ID
	,	DIM_DWH_PRODUCT_ID
	,	DIM_DENOUNCED_FLAG_ID
	,	DIM_ACCRUAL_BASIS_ID
	,	DIM_CL_GROUP_ID
	,	DIM_CL_RM_ID
	,	DIM_CL_TYPE_ID
	,	DIM_CL_CATEGORY_ID
	,	DIM_EBA_FLAG_ID
	,	DIM_CRM_SEGMENT_ID
	,	DIM_GL_ACCOUNT_TYPE_ID
	,	DIM_LOAN_CLASS_ID
	,	DIM_LOAN_BUCKET_ID
	,	DIM_FTP_AMOUNT_BUCKET_ID
	,	DIM_FTP_MATURITY_BUCKET_ID
	,	DIM_FUNDING_ID
	,	DIM_LOAN_STAGE_ID
	,	DIM_PAYMENT_TYPE_ID
	,	DIM_MODIFICATION_TYPE_ID
	,	DIM_HFS_ID
	,	DIM_REPRICE_INDEX_ID
	,	DIM_RATE_TYPE_ID
	,	DIM_FINREP_CLASS_ID
	,	DIM_PRODUCT_ID
	,	DIM_CRE_FLAG_ID
	,	DIM_IFRS_NPL_FLAG_ID
	,	DIM_POCI_FLAG_ID
	,	DIM_UNSECURED_FLAG_ID
	,	DIM_FPL_UNDER_PRB_FLAG_ID
	,	DIM_MONITORING_UNIT_ID
	,	DIM_ANNOUNCEMENT_UNIT_ID
	,	DIM_MIS_UNIT_ID
	,	DIM_MIS_PRODUCT_ID
	,	DIM_NETWORK_CLIENT_ID
	,	DIM_NETWORK_ACCOUNT_ID
	,	DIM_BRANCH_CLIENT_ID
	,	DIM_BRANCH_ACCOUNT_ID
	,	DIM_BRANCH_TYPE_CLIENT_ID
	,	DIM_BRANCH_TYPE_ACCOUNT_ID
	,	DIM_STATUS_ID
	,	DIM_CL_RATING_ID
	,	DIM_STAKOD_ID
	,	DIM_ECA_INDUSTRY_ID
	,	DIM_FINREP_INDUSTRY_ID
	,	DIM_IFRS_INDUSTRY_ID
	,	DIM_FINREP_SUB_CLASS_ID
	,	DIM_IFRS_CLASS_ID
	,	DIM_IMPAIRMENT_TYPE_ID
	,	DIM_LOAN_GUARANTEE_ID
	,	DIM_LOAN_SERVICE_TYPE_ID
	,	DIM_FORBEARANCE_TYPE_ID
	,	DIM_ECA_CLASS_ID
	,	DIM_RISK_PRODUCT_ID
	,	DIM_TD_DURATION_ID
	,	DIM_IFRS9_CLASS_ID
	,	DIM_COUNTRY_ID
	,	ORIGINAL_DURATION
	,	FTP_DURATION
	,	ORIGINAL_BALANCE_EUR
	,	ORIGINAL_BALANCE_FX
	,	ACCOUNT_IS_STAFF
	,	ACCOUNT_WITHOUT_MLT
	,	ORIGINATION_DATE
	,	MATURITY_DATE
	,	MODIFICATION_DATE
	,	PREVIOUS_REPRICE_DATE
	,	NEXT_REPRICE_DATE
	,	FTP_START_DATE
	,	FTP_END_DATE
	,	REAL_CLOSE_DATE
	,	FTP_ORIGINATION_DATE
	,	FTP_MATURITY_DATE
	,	FTP_PREVIOUS_REPRICE_DATE
	,	FTP_NEXT_REPRICE_DATE
	,	HMNIA_LOAD
	,	EOP_BALANCE_EUR
	,	EOP_BALANCE_FX
	,	EOP_ACCRUED_INTEREST_EUR
	,	EOP_ACCRUED_INTEREST_FX
	,	AVG_BALANCE_EUR
	,	AVG_BALANCE_FX
	,	AVG_ACCRUED_INTEREST_EUR
	,	AVG_ACCRUED_INTEREST_FX
	,	MTD_BALANCE_EUR
	,	MTD_BALANCE_FX
	,	MTD_ACCRUED_INTEREST_EUR
	,	MTD_ACCRUED_INTEREST_FX
	,	MTD_NII_INTEREST_EUR
	,	MTD_NII_LAW128_EUR
	,	MTD_NII_BD_INTEREST_EUR
	,	MTD_NII_OT_INTEREST_EUR
	,	MTD_NII_RR_INTEREST_EUR
	,	MTD_NII_BASE_INTEREST_EUR
	,	MTD_NII_D_BASE_INTEREST_EUR
	,	MTD_NII_FIRST_DEMAND_SPREAD_EUR
	,	MTD_NII_MATURITY_SPREAD_EUR
	,	MTD_NII_AMOUNT_SPREAD_EUR
	,	MTD_NII_FINANCING_COST_SPREAD_EUR
	,	MTD_NII_TREASURY_SPREAD_EUR
	,	MTD_NII_COST_OF_DEPOSIT_INSURANCE_EUR
	,	MTD_NII_COST_OF_LIQUIDITY_BUFFER_EUR
	,	MTD_NII_COST_OF_RESERVES_EUR
	,	MTD_COMMISSION_EUR
	,	MTD_IMPAIRMENT_CHARGE_EUR
	,	MTD_NPV_MODIFICATION_EUR
	,	MTD_MOVEMENT_JUSTIFICATION_EUR
	,	MTD_MOVEMENT_JUSTIFICATION_FX
	,	EOP_OFFBS_BALANCE_EUR
	,	EOP_OFFBS_BALANCE_FX
	,	EOP_ONBS_RWA_EUR
	,	EOP_ONBS_RWA_FX
	,	EOP_OFFBS_RWA_EUR
	,	EOP_OFFBS_RWA_FX
	,	EOP_TAN_COLLATER_EUR
	,	EOP_TAN_COLLATER_FX
	,	NO_OF_EMPLOYERS
	,	AVG_OFFBS_BALANCE_EUR
	,	AVG_OFFBS_BALANCE_FX
	,	AVG_ONBS_RWA_EUR
	,	AVG_ONBS_RWA_FX
	,	AVG_OFFBS_RWA_EUR
	,	AVG_OFFBS_RWA_FX
	,	EOP_PII_CAPITAL_EUR
	,	EOP_PII_CAPITAL_FX
	,	AVG_PII_CAPITAL_EUR
	,	AVG_PII_CAPITAL_FX
	,	MTD_TRADING_EUR
	,	MTD_OTHER_INCOME_EUR
	,	MTD_DERECOGNITION_EUR
	,	MTD_DEX_EUR
	,	MTD_COR_EUR
	,	MTD_COC_EUR
	,	MTD_VOLUME_EUR
	,	MTD_VOLUME_FX
	,	EOP_RISK_EXPOSURE_EUR
	,	EOP_RISK_EXPOSURE_FX
	,	MTD_NII_LAW3869_EUR
	,	EOP_PI_CAPITAL_EUR
	,	EOP_PI_CAPITAL_FX
	,	AVG_PI_CAPITAL_EUR
	,	AVG_PI_CAPITAL_FX
	,	MTD_OFFBS_BALANCE_EUR
	,	MTD_OFFBS_BALANCE_FX
	,	NO_OF_TRANSACTIONS
	,   EOP_BOOK_VALUE_EUR
    ,   EOP_BOOK_VALUE_FX
    ,   AVG_BOOK_VALUE_EUR
    ,   AVG_BOOK_VALUE_FX
    ,   MTD_BOOK_VALUE_EUR
    ,   MTD_BOOK_VALUE_FX
    ,   EOP_FACE_VALUE_EUR
    ,   EOP_FACE_VALUE_FX
    ,   AVG_FACE_VALUE_EUR
    ,   AVG_FACE_VALUE_FX
    ,   MTD_FACE_VALUE_EUR
    ,   MTD_FACE_VALUE_FX
	,   FTP_MATURITY_DURATION


)
SELECT 
		ISNULL(acc.DIM_ACCOUNT_ID							   , 0)              DIM_ACCOUNT_ID	
	,	ISNULL(cl.DIM_CLIENT_ID								   , 0)              DIM_CLIENT_ID	  
	,	ISNULL(per.DIM_PERIOD_ID							   , 0)              DIM_PERIOD_ID
	,	ISNULL(src.DIM_SOURCE_ID							   , 0)              DIM_SOURCE_ID
	,	ISNULL(scnr.DIM_SCENARIO_ID							   , 0)              DIM_SCENARIO_ID
	,	ISNULL(ntty.DIM_ENTITY_ID							   , 0)              DIM_ENTITY_ID
	,	ISNULL(crrncy.DIM_CURRENCY_ID						   , 0)              DIM_CURRENCY_ID
	,	ISNULL(mvmnt_jstfctn.DIM_MOVEMENT_JUSTIFICATION_ID	   , 0)              DIM_MOVEMENT_JUSTIFICATION_ID
	,	ISNULL(blnc_typ.DIM_BALANCE_TYPE_ID					   , 0)              DIM_BALANCE_TYPE_ID
	,	ISNULL(srca.DIM_SOURCE_APPLICATION_ID		           , 0)              DIM_SOURCE_APPLICATION_ID
	,	ISNULL(cmmssn_typ.DIM_COMMISSION_TYPE_ID			   , 0)              DIM_COMMISSION_TYPE_ID
	,	ISNULL(crrncy_ftp.DIM_CURRENCY_FTP_ID                  , 0)              DIM_CURRENCY_FTP_ID
	,	ISNULL(acc.ACCOUNT_DWH_PRODUCT_ID                      , 0)              DIM_DWH_PRODUCT_ID
	,	ISNULL(acc.ACCOUNT_DENOUNCED_FLAG_ID                   , 0)              DIM_DENOUNCED_FLAG_ID
	,	ISNULL(acc.ACCOUNT_ACCRUAL_BASIS_ID                    , 0)              DIM_ACCRUAL_BASIS_ID
	,	ISNULL(cl.CLIENT_CL_GROUP_ID                           , 0)              DIM_CL_GROUP_ID
	,	ISNULL(cl.CLIENT_CL_RM_ID                              , 0)              DIM_CL_RM_ID
	,	ISNULL(cl.CLIENT_CL_TYPE_ID                            , 0)              DIM_CL_TYPE_ID
	,	ISNULL(cl.CLIENT_CL_CATEGORY_ID                        , 0)              DIM_CL_CATEGORY_ID
	,	ISNULL(acc.ACCOUNT_EBA_FLAG_ID                         , 0)              DIM_EBA_FLAG_ID
	,	ISNULL(cl.CLIENT_CRM_SEGMENT_ID                        , 0)              DIM_CRM_SEGMENT_ID
	,	ISNULL(acc.ACCOUNT_GL_ACCOUNT_TYPE_ID                  , 0)              DIM_GL_ACCOUNT_TYPE_ID
	,	ISNULL(acc.ACCOUNT_LOAN_CLASS_ID                       , 0)              DIM_LOAN_CLASS_ID
	,	ISNULL(acc.ACCOUNT_LOAN_BUCKET_ID                      , 0)              DIM_LOAN_BUCKET_ID
	,	ISNULL(acc.ACCOUNT_FTP_AMOUNT_BUCKET_ID                , 0)              DIM_FTP_AMOUNT_BUCKET_ID
	,	ISNULL(acc.ACCOUNT_FTP_MATURITY_BUCKET_ID              , 0)              DIM_FTP_MATURITY_BUCKET_ID
	,	ISNULL(acc.ACCOUNT_FUNDING_ID                          , 0)              DIM_FUNDING_ID
	,	ISNULL(acc.ACCOUNT_LOAN_STAGE_ID                       , 0)              DIM_LOAN_STAGE_ID
	,	ISNULL(acc.ACCOUNT_PAYMENT_TYPE_ID                     , 0)              DIM_PAYMENT_TYPE_ID
	,	ISNULL(acc.ACCOUNT_MODIFICATION_TYPE_ID                , 0)              DIM_MODIFICATION_TYPE_ID
	,	ISNULL(acc.ACCOUNT_HFS_ID                              , 0)              DIM_HFS_ID
	,	ISNULL(acc.ACCOUNT_REPRICE_INDEX_ID                    , 0)              DIM_REPRICE_INDEX_ID
	,	ISNULL(acc.ACCOUNT_RATE_TYPE_ID                        , 0)              DIM_RATE_TYPE_ID
	,	ISNULL(acc.ACCOUNT_FINREP_CLASS_ID                     , 0)              DIM_FINREP_CLASS_ID
	,	ISNULL(acc.ACCOUNT_PRODUCT_ID                          , 0)              DIM_PRODUCT_ID
	,	ISNULL(acc.ACCOUNT_CRE_FLAG_ID                         , 0)              DIM_CRE_FLAG_ID
	,	ISNULL(acc.ACCOUNT_IFRS_NPL_FLAG_ID                    , 0)              DIM_IFRS_NPL_FLAG_ID
	,	ISNULL(acc.ACCOUNT_POCI_FLAG_ID                        , 0)              DIM_POCI_FLAG_ID
	,	ISNULL(acc.ACCOUNT_UNSECURED_FLAG_ID                   , 0)              DIM_UNSECURED_FLAG_ID
	,	ISNULL(acc.ACCOUNT_FPL_UNDER_PRB_FLAG_ID               , 0)              DIM_FPL_UNDER_PRB_FLAG_ID
	,	ISNULL(cl.CLIENT_MONITORING_UNIT_ID                    , 0)              DIM_MONITORING_UNIT_ID
	,	ISNULL(cl.CLIENT_ANNOUNCEMENT_UNIT_ID                  , 0)              DIM_ANNOUNCEMENT_UNIT_ID
	,	ISNULL(cl.CLIENT_MIS_UNIT_ID                           , 0)              DIM_MIS_UNIT_ID
	,	ISNULL(acc.ACCOUNT_MIS_PRODUCT_ID                      , 0)              DIM_MIS_PRODUCT_ID
	,	ISNULL(cl.CLIENT_NETWORK_ID                            , 0)              DIM_NETWORK_CLIENT_ID
	,	ISNULL(acc.ACCOUNT_NETWORK_ID                          , 0)              DIM_NETWORK_ACCOUNT_ID
	,	ISNULL(cl.CLIENT_BRANCH_ID                             , 0)              DIM_BRANCH_CLIENT_ID
	,	ISNULL(acc.ACCOUNT_BRANCH_ID                           , 0)              DIM_BRANCH_ACCOUNT_ID
	,	ISNULL(cl.CLIENT_BRANCH_TYPE_ID                        , 0)              DIM_BRANCH_TYPE_CLIENT_ID
	,	ISNULL(acc.ACCOUNT_BRANCH_TYPE_ID                      , 0)              DIM_BRANCH_TYPE_ACCOUNT_ID
	,	ISNULL(acc.ACCOUNT_STATUS_ID                           , 0)              DIM_STATUS_ID
	,	ISNULL(cl.CLIENT_CL_RATING_ID                          , 0)              DIM_CL_RATING_ID
	,	ISNULL(cl.CLIENT_STAKOD_ID                             , 0)              DIM_STAKOD_ID
	,	ISNULL(acc.ACCOUNT_ECA_INDUSTRY_ID                     , 0)              DIM_ECA_INDUSTRY_ID
	,	ISNULL(acc.ACCOUNT_FINREP_INDUSTRY_ID                  , 0)              DIM_FINREP_INDUSTRY_ID
	,	ISNULL(acc.ACCOUNT_IFRS_INDUSTRY_ID                    , 0)              DIM_IFRS_INDUSTRY_ID
	,	ISNULL(acc.ACCOUNT_FINREP_SUB_CLASS_ID                 , 0)              DIM_FINREP_SUB_CLASS_ID
	,	ISNULL(acc.ACCOUNT_IFRS_CLASS_ID                       , 0)              DIM_IFRS_CLASS_ID
	,	ISNULL(acc.ACCOUNT_IMPAIRMENT_TYPE_ID                  , 0)              DIM_IMPAIRMENT_TYPE_ID
	,	ISNULL(acc.ACCOUNT_LOAN_GUARANTEE_ID                   , 0)              DIM_LOAN_GUARANTEE_ID
	,	ISNULL(acc.ACCOUNT_LOAN_SERVICE_TYPE_ID                , 0)              DIM_LOAN_SERVICE_TYPE_ID
	,	ISNULL(acc.ACCOUNT_FORBEARANCE_TYPE_ID                 , 0)              DIM_FORBEARANCE_TYPE_ID
	,	ISNULL(acc.ACCOUNT_ECA_CLASS_ID                        , 0)              DIM_ECA_CLASS_ID
	,	ISNULL(acc.ACCOUNT_RISK_PRODUCT_ID                     , 0)              DIM_RISK_PRODUCT_ID
	,	ISNULL(acc.ACCOUNT_TD_DURATION_ID                      , 0)              DIM_TD_DURATION_ID
	,	ISNULL(acc.ACCOUNT_IFRS9_CLASS_ID                      , 0)              DIM_IFRS9_CLASS_ID
	,	ISNULL(cl.CLIENT_COUNTRY_ID                            , 0)              DIM_COUNTRY_ID
	,	ISNULL(acc.ACCOUNT_ORIGINAL_DURATION                   , 0)              ORIGINAL_DURATION
	,	ISNULL(acc.ACCOUNT_FTP_DURATION                        , 0)              FTP_DURATION
	,	ISNULL(acc.ACCOUNT_ORIGINAL_BALANCE_EUR                , 0)              ORIGINAL_BALANCE_EUR
	,	ISNULL(acc.ACCOUNT_ORIGINAL_BALANCE_FX                 , 0)              ORIGINAL_BALANCE_FX
	,	ISNULL(acc.ACCOUNT_IS_STAFF                            ,'0')             ACCOUNT_IS_STAFF
	,	ISNULL(acc.ACCOUNT_WITHOUT_MLT                         ,'0')             ACCOUNT_WITHOUT_MLT
	,	ISNULL(acc.ACCOUNT_ORIGINATION_DATE,                   '9999-01-01')     ORIGINATION_DATE
	,	ISNULL(acc.ACCOUNT_MATURITY_DATE,                      '9999-01-01')     MATURITY_DATE
	,	ISNULL(acc.ACCOUNT_MODIFICATION_DATE,                  '9999-01-01')     MODIFICATION_DATE
	,	ISNULL(acc.ACCOUNT_PREVIOUS_REPRICE_DATE,              '9999-01-01')     PREVIOUS_REPRICE_DATE
	,	ISNULL(acc.ACCOUNT_NEXT_REPRICE_DATE,                  '9999-01-01')     NEXT_REPRICE_DATE
	,	ISNULL(acc.ACCOUNT_FTP_START_DATE,                     '9999-01-01')     FTP_START_DATE
	,	ISNULL(acc.ACCOUNT_FTP_END_DATE,                       '9999-01-01')     FTP_END_DATE
	,	ISNULL(acc.ACCOUNT_REAL_CLOSE_DATE,                    '9999-01-01')     REAL_CLOSE_DATE
	,	ISNULL(acc.ACCOUNT_FTP_ORIGINATION_DATE,               '9999-01-01')     FTP_ORIGINATION_DATE
	,	ISNULL(acc.ACCOUNT_FTP_MATURITY_DATE,                  '9999-01-01')     FTP_MATURITY_DATE
	,	ISNULL(acc.ACCOUNT_FTP_PREVIOUS_REPRICE_DATE,          '9999-01-01')     FTP_PREVIOUS_REPRICE_DATE
	,	ISNULL(acc.ACCOUNT_FTP_NEXT_REPRICE_DATE,              '9999-01-01')     FTP_NEXT_REPRICE_DATE
	,	GETDATE()                                                                HMNIA_LOAD
	,   ISNULL(EOP_BALANCE_EUR								   , 0)              EOP_BALANCE_EUR                                 
	,   ISNULL(EOP_BALANCE_FX								   , 0)              EOP_BALANCE_FX                                  
	,   ISNULL(EOP_ACCRUED_INTEREST_EUR						   , 0)              EOP_ACCRUED_INTEREST_EUR                        
	,   ISNULL(EOP_ACCRUED_INTEREST_FX						   , 0)              EOP_ACCRUED_INTEREST_FX                         
	,   ISNULL(AVG_BALANCE_EUR								   , 0)              AVG_BALANCE_EUR                                 
	,   ISNULL(AVG_BALANCE_FX								   , 0)              AVG_BALANCE_FX                                  
	,   ISNULL(AVG_ACCRUED_INTEREST_EUR						   , 0)              AVG_ACCRUED_INTEREST_EUR                        
	,   ISNULL(AVG_ACCRUED_INTEREST_FX						   , 0)              AVG_ACCRUED_INTEREST_FX                         
	,   ISNULL(MTD_BALANCE_EUR								   , 0)              MTD_BALANCE_EUR                                 
	,   ISNULL(MTD_BALANCE_FX								   , 0)              MTD_BALANCE_FX                                  
	,   ISNULL(MTD_ACCRUED_INTEREST_EUR						   , 0)              MTD_ACCRUED_INTEREST_EUR                        
	,   ISNULL(MTD_ACCRUED_INTEREST_FX						   , 0)              MTD_ACCRUED_INTEREST_FX                         
	,   ISNULL(MTD_NII_INTEREST_EUR							   , 0)              MTD_NII_INTEREST_EUR                            
	,   ISNULL(MTD_NII_LAW128_EUR							   , 0)              MTD_NII_LAW128_EUR                              
	,   ISNULL(MTD_NII_BD_INTEREST_EUR						   , 0)              MTD_NII_BD_INTEREST_EUR                         
	,   ISNULL(MTD_NII_OT_INTEREST_EUR						   , 0)              MTD_NII_OT_INTEREST_EUR                         
	,   ISNULL(MTD_NII_RR_INTEREST_EUR						   , 0)              MTD_NII_RR_INTEREST_EUR                         
	,   ISNULL(MTD_NII_BASE_INTEREST_EUR					   , 0)              MTD_NII_BASE_INTEREST_EUR                       
	,   ISNULL(MTD_NII_D_BASE_INTEREST_EUR					   , 0)              MTD_NII_D_BASE_INTEREST_EUR                     
	,   ISNULL(MTD_NII_FIRST_DEMAND_SPREAD_EUR			       , 0)              MTD_NII_FIRST_DEMAND_SPREAD_EUR                 
	,   ISNULL(MTD_NII_MATURITY_SPREAD_EUR					   , 0)              MTD_NII_MATURITY_SPREAD_EUR                     
	,   ISNULL(MTD_NII_AMOUNT_SPREAD_EUR					   , 0)              MTD_NII_AMOUNT_SPREAD_EUR                       
	,   ISNULL(MTD_NII_FINANCING_COST_SPREAD_EUR		       , 0)              MTD_NII_FINANCING_COST_SPREAD_EUR               
	,   ISNULL(MTD_NII_TREASURY_SPREAD_EUR					   , 0)              MTD_NII_TREASURY_SPREAD_EUR                     
	,   ISNULL(MTD_NII_COST_OF_DEPOSIT_INSURANCE_EUR           , 0)              MTD_NII_COST_OF_DEPOSIT_INSURANCE_EUR           
	,   ISNULL(MTD_NII_COST_OF_LIQUIDITY_BUFFER_EUR	           , 0)              MTD_NII_COST_OF_LIQUIDITY_BUFFER_EUR            
	,   ISNULL(MTD_NII_COST_OF_RESERVES_EUR					   , 0)              MTD_NII_COST_OF_RESERVES_EUR                    
	,   ISNULL(MTD_COMMISSION_EUR							   , 0)              MTD_COMMISSION_EUR                              
	,   ISNULL(MTD_IMPAIRMENT_CHARGE_EUR				       , 0)              MTD_IMPAIRMENT_CHARGE_EUR                       
	,   ISNULL(MTD_NPV_MODIFICATION_EUR						   , 0)              MTD_NPV_MODIFICATION_EUR                        
	,   ISNULL(MTD_MOVEMENT_JUSTIFICATION_EUR				   , 0)              MTD_MOVEMENT_JUSTIFICATION_EUR                  
	,   ISNULL(MTD_MOVEMENT_JUSTIFICATION_FX				   , 0)              MTD_MOVEMENT_JUSTIFICATION_FX                   
	,   ISNULL(EOP_OFFBS_BALANCE_EUR						   , 0)              EOP_OFFBS_BALANCE_EUR                           
	,   ISNULL(EOP_OFFBS_BALANCE_FX							   , 0)              EOP_OFFBS_BALANCE_FX                            
	,   ISNULL(EOP_ONBS_RWA_EUR								   , 0)              EOP_ONBS_RWA_EUR                                
	,   ISNULL(EOP_ONBS_RWA_FX								   , 0)              EOP_ONBS_RWA_FX                                 
	,   ISNULL(EOP_OFFBS_RWA_EUR							   , 0)              EOP_OFFBS_RWA_EUR                               
	,   ISNULL(EOP_OFFBS_RWA_FX								   , 0)              EOP_OFFBS_RWA_FX                                
	,   ISNULL(EOP_TAN_COLLATER_EUR						       , 0)              EOP_TAN_COLLATER_EUR                            
	,   ISNULL(EOP_TAN_COLLATER_FX						       , 0)              EOP_TAN_COLLATER_FX                             
	,   ISNULL(NO_OF_EMPLOYERS								   , 0)              NO_OF_EMPLOYERS                                 
	,   ISNULL(AVG_OFFBS_BALANCE_EUR					       , 0)              AVG_OFFBS_BALANCE_EUR                           
	,   ISNULL(AVG_OFFBS_BALANCE_FX						       , 0)              AVG_OFFBS_BALANCE_FX                            
	,   ISNULL(AVG_ONBS_RWA_EUR								   , 0)              AVG_ONBS_RWA_EUR                                
	,   ISNULL(AVG_ONBS_RWA_FX								   , 0)              AVG_ONBS_RWA_FX                                 
	,   ISNULL(AVG_OFFBS_RWA_EUR							   , 0)              AVG_OFFBS_RWA_EUR                               
	,   ISNULL(AVG_OFFBS_RWA_FX								   , 0)              AVG_OFFBS_RWA_FX                                
	,   ISNULL(EOP_PII_CAPITAL_EUR						       , 0)              EOP_PII_CAPITAL_EUR                             
	,   ISNULL(EOP_PII_CAPITAL_FX							   , 0)              EOP_PII_CAPITAL_FX                              
	,   ISNULL(AVG_PII_CAPITAL_EUR						       , 0)              AVG_PII_CAPITAL_EUR                             
	,   ISNULL(AVG_PII_CAPITAL_FX							   , 0)              AVG_PII_CAPITAL_FX                              
	,   ISNULL(MTD_TRADING_EUR								   , 0)              MTD_TRADING_EUR                                 
	,   ISNULL(MTD_OTHER_INCOME_EUR						       , 0)              MTD_OTHER_INCOME_EUR                            
	,   ISNULL(MTD_DERECOGNITION_EUR					       , 0)              MTD_DERECOGNITION_EUR                           
	,   ISNULL(MTD_DEX_EUR									   , 0)              MTD_DEX_EUR                                     
	,   ISNULL(MTD_COR_EUR									   , 0)              MTD_COR_EUR                                     
	,   ISNULL(MTD_COC_EUR									   , 0)              MTD_COC_EUR                                     
	,   ISNULL(MTD_VOLUME_EUR								   , 0)              MTD_VOLUME_EUR                                  
	,   ISNULL(MTD_VOLUME_FX								   , 0)              MTD_VOLUME_FX                                   
	,   ISNULL(EOP_RISK_EXPOSURE_EUR					       , 0)              EOP_RISK_EXPOSURE_EUR                           
	,   ISNULL(EOP_RISK_EXPOSURE_FX						       , 0)              EOP_RISK_EXPOSURE_FX                            
	,   ISNULL(MTD_NII_LAW3869_EUR						       , 0)              MTD_NII_LAW3869_EUR                             
	,   ISNULL(EOP_PI_CAPITAL_EUR							   , 0)              EOP_PI_CAPITAL_EUR                              
	,   ISNULL(EOP_PI_CAPITAL_FX							   , 0)              EOP_PI_CAPITAL_FX                               
	,   ISNULL(AVG_PI_CAPITAL_EUR							   , 0)              AVG_PI_CAPITAL_EUR                              
	,   ISNULL(AVG_PI_CAPITAL_FX							   , 0)              AVG_PI_CAPITAL_FX                               
	,   ISNULL(MTD_OFFBS_BALANCE_EUR					       , 0)              MTD_OFFBS_BALANCE_EUR                           
	,   ISNULL(MTD_OFFBS_BALANCE_FX						       , 0)              MTD_OFFBS_BALANCE_FX                            
	,   ISNULL(NO_OF_TRANSACTIONS							   , 0)              NO_OF_TRANSACTIONS     
	,	ISNULL(EOP_BOOK_VALUE_EUR                              , 0)              EOP_BOOK_VALUE_EUR
    ,   ISNULL(EOP_BOOK_VALUE_FX							   , 0)              EOP_BOOK_VALUE_FX
    ,   ISNULL(AVG_BOOK_VALUE_EUR							   , 0)              AVG_BOOK_VALUE_EUR
    ,   ISNULL(AVG_BOOK_VALUE_FX							   , 0)              AVG_BOOK_VALUE_FX
    ,   ISNULL(MTD_BOOK_VALUE_EUR							   , 0)              MTD_BOOK_VALUE_EUR
    ,   ISNULL(MTD_BOOK_VALUE_FX							   , 0)              MTD_BOOK_VALUE_FX
    ,   ISNULL(EOP_FACE_VALUE_EUR							   , 0)              EOP_FACE_VALUE_EUR
    ,   ISNULL(EOP_FACE_VALUE_FX							   , 0)              EOP_FACE_VALUE_FX
    ,   ISNULL(AVG_FACE_VALUE_EUR							   , 0)              AVG_FACE_VALUE_EUR
    ,   ISNULL(AVG_FACE_VALUE_FX							   , 0)              AVG_FACE_VALUE_FX
    ,   ISNULL(MTD_FACE_VALUE_EUR							   , 0)              MTD_FACE_VALUE_EUR
    ,   ISNULL(MTD_FACE_VALUE_FX                         	   , 0)              MTD_FACE_VALUE_FX
	,	ISNULL(acc.ACCOUNT_FTP_MATURITY_DURATION               , 0)              FTP_MATURITY_DURATION  
FROM STG.PRE_FACT_CLIENT fct
	LEFT JOIN REP.DIM_PERIOD per                               ON fct.HMNIA         = per.HMNIA                                                            
	LEFT JOIN REP.DIM_SCENARIO scnr                            ON fct.SCENARIO_CODE = scnr.SCENARIO_CODE                                                
	LEFT JOIN REP.DIM_ENTITY ntty                              ON fct.ENTITY_CODE   = ntty.ENTITY_CODE                                                      
	LEFT JOIN REP.DIM_ACCOUNT acc                              ON fct.ENTITY_CODE   = acc.ENTITY_CODE           AND fct.ACCOUNT_CODE                = acc.ACCOUNT_CODE                          AND fct.GL_ACCOUNT_TYPE_CODE = acc.ACCOUNT_GL_ACCOUNT_TYPE_CODE
	LEFT JOIN REP.DIM_CLIENT cl                                ON fct.ENTITY_CODE   = cl.ENTITY_CODE            AND fct.CLIENT_CODE                 = cl.CLIENT_CODE                                                        
	LEFT JOIN REP.DIM_COMMISSION_TYPE cmmssn_typ               ON fct.ENTITY_CODE   = cmmssn_typ.ENTITY_CODE    AND fct.COMMISSION_TYPE_CODE        = cmmssn_typ.COMMISSION_TYPE_CODE       
	LEFT JOIN REP.DIM_MOVEMENT_JUSTIFICATION mvmnt_jstfctn     ON fct.ENTITY_CODE   = mvmnt_jstfctn.ENTITY_CODE AND fct.MOVEMENT_JUSTIFICATION_CODE = mvmnt_jstfctn.MOVEMENT_JUSTIFICATION_CODE   
	LEFT JOIN REP.DIM_SOURCE_APPLICATION srca                  ON fct.ENTITY_CODE   = srca.ENTITY_CODE          AND fct.SOURCE_APPLICATION_CODE     = srca.SOURCE_APPLICATION_CODE                                      
	LEFT JOIN REP.DIM_SOURCE src                               ON fct.SOURCE_CODE   = src.SOURCE_CODE                                                       
	LEFT JOIN REP.DIM_CURRENCY crrncy                          ON fct.CURRENCY_CODE = crrncy.CURRENCY_ISO                                               
	LEFT JOIN REP.DIM_BALANCE_TYPE blnc_typ                    ON fct.ENTITY_CODE   = blnc_typ.ENTITY_CODE      AND fct.BALANCE_TYPE_CODE           = blnc_typ.BALANCE_TYPE_CODE        
    LEFT JOIN REP.DIM_CURRENCY_FTP crrncy_ftp                  ON fct.ENTITY_CODE   = crrncy_ftp.ENTITY_CODE    AND  crrncy_ftp.CURRENCY_FTP_CODE   =
	                                                           (SELECT  CASE                                                                                                                                            
                                                                WHEN fct.ENTITY_CODE = 'AB1001' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1001' AND fct.CURRENCY_CODE in ('USD')                           THEN 'USD'  
																WHEN fct.ENTITY_CODE = 'AB1001' AND fct.CURRENCY_CODE in ('GBP')                           THEN 'GBP'  
																WHEN fct.ENTITY_CODE = 'AB1001' AND fct.CURRENCY_CODE in ('CZK')                           THEN 'CZK'  
                                                                WHEN fct.ENTITY_CODE = 'AB1001' AND fct.CURRENCY_CODE not in ('EUR','USD','GBP','CZK')     THEN 'OTH'                  
                                                                WHEN fct.ENTITY_CODE = 'AB2063' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB2063' AND fct.CURRENCY_CODE in ('USD')                           THEN 'USD'                    
                                                                WHEN fct.ENTITY_CODE = 'AB2063' AND fct.CURRENCY_CODE not in ('EUR','USD')                 THEN 'OTH'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1002' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1002' AND fct.CURRENCY_CODE in ('USD')                           THEN 'USD'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1002' AND fct.CURRENCY_CODE in ('GBP')                           THEN 'GBP'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1002' AND fct.CURRENCY_CODE not in ('EUR','USD','GBP')           THEN 'OTH'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1094' AND fct.CURRENCY_CODE in ('ALL')                           THEN 'ALL'                    
	                                                            WHEN fct.ENTITY_CODE = 'AB1094' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1094' AND fct.CURRENCY_CODE in ('CHF')                           THEN 'CHF'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1094' AND fct.CURRENCY_CODE not in ('ALL','EUR','CHF')           THEN 'OTH'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1048' AND fct.CURRENCY_CODE in ('RON')                           THEN 'RON'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1048' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'   
																WHEN fct.ENTITY_CODE = 'AB1048' AND fct.CURRENCY_CODE in ('USD')                           THEN 'USD'                 
                                                                WHEN fct.ENTITY_CODE = 'AB1048' AND fct.CURRENCY_CODE in ('CHF')                           THEN 'CHF'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1048' AND fct.CURRENCY_CODE not in ('RON','EUR','USD','CHF')     THEN 'OTH'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1062' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1062' AND fct.CURRENCY_CODE in ('CHF')                           THEN 'CHF'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1062' AND fct.CURRENCY_CODE not in ('EUR','CHF')                 THEN 'OTH'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1098' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1098' AND fct.CURRENCY_CODE in ('CHF')                           THEN 'CHF'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1098' AND fct.CURRENCY_CODE not in ('EUR','CHF')                 THEN 'OTH'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1144' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1144' AND fct.CURRENCY_CODE in ('CHF')                           THEN 'CHF'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1144' AND fct.CURRENCY_CODE not in ('EUR','CHF')                 THEN 'OTH'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1257' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1257' AND fct.CURRENCY_CODE in ('CHF')                           THEN 'CHF'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1257' AND fct.CURRENCY_CODE not in ('EUR','CHF')                 THEN 'OTH'       
                                                                WHEN fct.ENTITY_CODE = 'AB1294' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1294' AND fct.CURRENCY_CODE in ('CHF')                           THEN 'CHF'                    
                                                                WHEN fct.ENTITY_CODE = 'AB1294' AND fct.CURRENCY_CODE not in ('EUR','CHF')                 THEN 'OTH'   
																WHEN fct.ENTITY_CODE = 'AB1330' AND fct.CURRENCY_CODE in ('EUR')                           THEN 'EUR' 
																WHEN fct.ENTITY_CODE = 'AB1330' AND fct.CURRENCY_CODE in ('CHF')                           THEN 'CHF' 
																WHEN fct.ENTITY_CODE = 'AB1330' AND fct.CURRENCY_CODE not in ('EUR','CHF')                 THEN 'OTH'               
                                                                ELSE '0'                                                                                                           
                                                                END	CURRENCY_FTP_CODE )  
WHERE    fct.BALANCE_TYPE_CODE = '901' or (fct.BALANCE_TYPE_CODE <> '901' and (              
	     ISNULL(EOP_BALANCE_EUR								   , 0)       <> 0
	OR   ISNULL(EOP_BALANCE_FX								   , 0)       <> 0
	OR   ISNULL(EOP_ACCRUED_INTEREST_EUR					   , 0)       <> 0
	OR   ISNULL(EOP_ACCRUED_INTEREST_FX						   , 0)       <> 0
	OR   ISNULL(AVG_BALANCE_EUR								   , 0)       <> 0
	OR   ISNULL(AVG_BALANCE_FX								   , 0)       <> 0
	OR   ISNULL(AVG_ACCRUED_INTEREST_EUR					   , 0)       <> 0
	OR   ISNULL(AVG_ACCRUED_INTEREST_FX						   , 0)       <> 0
	OR   ISNULL(MTD_BALANCE_EUR								   , 0)       <> 0
	OR   ISNULL(MTD_BALANCE_FX								   , 0)       <> 0
	OR   ISNULL(MTD_ACCRUED_INTEREST_EUR					   , 0)       <> 0
	OR   ISNULL(MTD_ACCRUED_INTEREST_FX						   , 0)       <> 0
	OR   ISNULL(MTD_NII_INTEREST_EUR						   , 0)       <> 0
	OR   ISNULL(MTD_NII_LAW128_EUR							   , 0)       <> 0
	OR   ISNULL(MTD_NII_BD_INTEREST_EUR						   , 0)       <> 0
	OR   ISNULL(MTD_NII_OT_INTEREST_EUR						   , 0)       <> 0
	OR   ISNULL(MTD_NII_RR_INTEREST_EUR						   , 0)       <> 0
	OR   ISNULL(MTD_NII_BASE_INTEREST_EUR					   , 0)       <> 0
	OR   ISNULL(MTD_NII_D_BASE_INTEREST_EUR					   , 0)       <> 0
	OR   ISNULL(MTD_NII_FIRST_DEMAND_SPREAD_EUR			       , 0)       <> 0
	OR   ISNULL(MTD_NII_MATURITY_SPREAD_EUR					   , 0)       <> 0
	OR   ISNULL(MTD_NII_AMOUNT_SPREAD_EUR					   , 0)       <> 0
	OR   ISNULL(MTD_NII_FINANCING_COST_SPREAD_EUR		       , 0)       <> 0
	OR   ISNULL(MTD_NII_TREASURY_SPREAD_EUR					   , 0)       <> 0
	OR   ISNULL(MTD_NII_COST_OF_DEPOSIT_INSURANCE_EUR          , 0)       <> 0
	OR   ISNULL(MTD_NII_COST_OF_LIQUIDITY_BUFFER_EUR	       , 0)       <> 0
	OR   ISNULL(MTD_NII_COST_OF_RESERVES_EUR				   , 0)       <> 0
	OR   ISNULL(MTD_COMMISSION_EUR							   , 0)       <> 0
	OR   ISNULL(MTD_IMPAIRMENT_CHARGE_EUR				       , 0)       <> 0
	OR   ISNULL(MTD_NPV_MODIFICATION_EUR					   , 0)       <> 0
	OR   ISNULL(MTD_MOVEMENT_JUSTIFICATION_EUR				   , 0)       <> 0
	OR   ISNULL(MTD_MOVEMENT_JUSTIFICATION_FX				   , 0)       <> 0
	OR   ISNULL(EOP_OFFBS_BALANCE_EUR						   , 0)       <> 0
	OR   ISNULL(EOP_OFFBS_BALANCE_FX						   , 0)       <> 0
	OR   ISNULL(EOP_ONBS_RWA_EUR							   , 0)       <> 0
	OR   ISNULL(EOP_ONBS_RWA_FX								   , 0)       <> 0
	OR   ISNULL(EOP_OFFBS_RWA_EUR							   , 0)       <> 0
	OR   ISNULL(EOP_OFFBS_RWA_FX							   , 0)       <> 0
	OR   ISNULL(EOP_TAN_COLLATER_EUR						   , 0)       <> 0
	OR   ISNULL(EOP_TAN_COLLATER_FX						       , 0)       <> 0
	OR   ISNULL(NO_OF_EMPLOYERS								   , 0)       <> 0
	OR   ISNULL(AVG_OFFBS_BALANCE_EUR					       , 0)       <> 0
	OR   ISNULL(AVG_OFFBS_BALANCE_FX						   , 0)       <> 0
	OR   ISNULL(AVG_ONBS_RWA_EUR							   , 0)       <> 0
	OR   ISNULL(AVG_ONBS_RWA_FX								   , 0)       <> 0
	OR   ISNULL(AVG_OFFBS_RWA_EUR							   , 0)       <> 0
	OR   ISNULL(AVG_OFFBS_RWA_FX							   , 0)       <> 0
	OR   ISNULL(EOP_PII_CAPITAL_EUR						       , 0)       <> 0
	OR   ISNULL(EOP_PII_CAPITAL_FX							   , 0)       <> 0
	OR   ISNULL(AVG_PII_CAPITAL_EUR						       , 0)       <> 0
	OR   ISNULL(AVG_PII_CAPITAL_FX							   , 0)       <> 0
	OR   ISNULL(MTD_TRADING_EUR								   , 0)       <> 0
	OR   ISNULL(MTD_OTHER_INCOME_EUR						   , 0)       <> 0
	OR   ISNULL(MTD_DERECOGNITION_EUR					       , 0)       <> 0
	OR   ISNULL(MTD_DEX_EUR									   , 0)       <> 0
	OR   ISNULL(MTD_COR_EUR									   , 0)       <> 0
	OR   ISNULL(MTD_COC_EUR									   , 0)       <> 0
	OR   ISNULL(MTD_VOLUME_EUR								   , 0)       <> 0
	OR   ISNULL(MTD_VOLUME_FX								   , 0)       <> 0
	OR   ISNULL(EOP_RISK_EXPOSURE_EUR					       , 0)       <> 0
	OR   ISNULL(EOP_RISK_EXPOSURE_FX						   , 0)       <> 0
	OR   ISNULL(MTD_NII_LAW3869_EUR						       , 0)       <> 0
	OR   ISNULL(EOP_PI_CAPITAL_EUR							   , 0)       <> 0
	OR   ISNULL(EOP_PI_CAPITAL_FX							   , 0)       <> 0
	OR   ISNULL(AVG_PI_CAPITAL_EUR							   , 0)       <> 0
	OR   ISNULL(AVG_PI_CAPITAL_FX							   , 0)       <> 0
	OR   ISNULL(MTD_OFFBS_BALANCE_EUR					       , 0)       <> 0
	OR   ISNULL(MTD_OFFBS_BALANCE_FX						   , 0)       <> 0
	OR   ISNULL(NO_OF_TRANSACTIONS							   , 0)       <> 0
	OR   ISNULL(EOP_BOOK_VALUE_EUR                             , 0)       <> 0
	OR   ISNULL(EOP_BOOK_VALUE_FX							   , 0)		  <> 0
	OR   ISNULL(AVG_BOOK_VALUE_EUR							   , 0)		  <> 0
	OR   ISNULL(AVG_BOOK_VALUE_FX							   , 0)		  <> 0
	OR   ISNULL(MTD_BOOK_VALUE_EUR							   , 0)		  <> 0
	OR   ISNULL(MTD_BOOK_VALUE_FX							   , 0)		  <> 0
	OR   ISNULL(EOP_FACE_VALUE_EUR							   , 0)		  <> 0
	OR   ISNULL(EOP_FACE_VALUE_FX							   , 0)		  <> 0
	OR   ISNULL(AVG_FACE_VALUE_EUR							   , 0)		  <> 0
	OR   ISNULL(AVG_FACE_VALUE_FX							   , 0)		  <> 0
	OR   ISNULL(MTD_FACE_VALUE_EUR							   , 0)		  <> 0
	OR   ISNULL(MTD_FACE_VALUE_FX                         	   , 0)		  <> 0
	)) 
