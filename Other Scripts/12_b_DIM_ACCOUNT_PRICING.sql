
UPDATE trg 
SET											
	  ACCOUNT_FTP_BASE_RATE_CODE                     = isnull(src.ACCOUNT_FTP_BASE_RATE_CODE                , 0)                                 
	, ACCOUNT_FTP_D_BASE_RATE_CODE                   = isnull(src.ACCOUNT_FTP_D_BASE_RATE_CODE              , 0)                               
	, ACCOUNT_RTE_NII_RR                             = isnull(src.ACCOUNT_RTE_NII_RR                        , 0)    
	, ACCOUNT_RTE_NII_BASE                           = isnull(src.ACCOUNT_RTE_NII_BASE                      , 0)                                            
	, ACCOUNT_RTE_NII_D_BASE                         = CASE WHEN cls.ACCOUNT_CODE is not null THEN isnull(src.ACCOUNT_RTE_NII_D_BASE , 0)
		                                                                                          * (CASE WHEN cls.LOAN_CLASS_CODE in ('GRCC', 'GRCP') then 1-isnull(cls.CASH_VALUE_PERC_ON_AVERAGE_BALANCES_CALC, 0) else 1 end)    
	                                                                                              + (CASE WHEN cls.LOAN_CLASS_CODE in ('GRCC', 'GRCP') then  (src.ACCOUNT_RTE_NII_ECB_DISC)   * isnull(cls.CASH_VALUE_PERC_ON_AVERAGE_BALANCES_CALC, 0) else 0 end)   
													   ELSE isnull(src.ACCOUNT_RTE_NII_D_BASE , 0) END
	, ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD            = isnull(src.ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD       , 0)    
	, ACCOUNT_RTE_NII_MATURITY_SPREAD                = isnull(src.ACCOUNT_RTE_NII_MATURITY_SPREAD           , 0)                                
	, ACCOUNT_RTE_NII_AMOUNT_SPREAD                  = isnull(src.ACCOUNT_RTE_NII_AMOUNT_SPREAD             , 0)    
	, ACCOUNT_RTE_NII_FINANCING_COST_SPREAD          = isnull(src.ACCOUNT_RTE_NII_FINANCING_COST_SPREAD     , 0)                                
	, ACCOUNT_RTE_NII_TREASURY_SPREAD                = isnull(src.ACCOUNT_RTE_NII_TREASURY_SPREAD           , 0)                                                                                                                                                                                                      
	, ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE      = isnull(src.ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE , 0)    
	, ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER       = isnull(src.ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER  , 0)    
	, ACCOUNT_RTE_NII_COST_OF_RESERVES               = isnull(src.ACCOUNT_RTE_NII_COST_OF_RESERVES          , 0)    
	, ACCOUNT_RTE_NII_CFR                            = isnull(src.ACCOUNT_RTE_NII_CFR                       , 0)    
	, ACCOUNT_RTE_NII_MFR                            = isnull(src.ACCOUNT_RTE_NII_MFR                       , 0)    
	, ACCOUNT_RTE_NII_ABR                            = isnull(src.ACCOUNT_RTE_NII_ABR                       , 0)    
	, ACCOUNT_RTE_RWA                                = isnull(src.ACCOUNT_RTE_RWA                           , 0)    
	, ACCOUNT_RTE_ECL                                = isnull(src.ACCOUNT_RTE_ECL                           , 0)    
	, ACCOUNT_RTE_NII_ECB_MRO                        = isnull(src.ACCOUNT_RTE_NII_ECB_MRO                   , 0)  
	, ACCOUNT_RTE_NII_ECB_PL                         = isnull(src.ACCOUNT_RTE_NII_ECB_PL                    , 0)   
	, ACCOUNT_RTE_NII_ECB_DISC                       = isnull(src.ACCOUNT_RTE_NII_ECB_DISC                  , 0)   
FROM REP.DIM_ACCOUNT trg											
	 INNER JOIN STG.T_ACCOUNT src ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.ACCOUNT_CODE = trg.ACCOUNT_CODE AND src.ACCOUNT_GL_ACCOUNT_TYPE_CODE = trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE
	 LEFT JOIN STG.X_LOAN_CLASS_V cls ON src.ENTITY_CODE = 'AB1001' AND src.ACCOUNT_CODE=cls.ACCOUNT_CODE AND src.ACCOUNT_GL_ACCOUNT_TYPE_CODE='1'

