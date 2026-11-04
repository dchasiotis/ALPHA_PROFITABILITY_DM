

INSERT INTO REP.DIM_RL_CLIENT (     
	  DIM_ENTITY_ID
	, DIM_MONITORING_UNIT_ID
	, DIM_ANNOUNCEMENT_UNIT_ID
	, DIM_MIS_UNIT_ID
	, DIM_CL_TYPE_ID
	, DIM_CL_CATEGORY_ID
	, DIM_CRM_SEGMENT_ID
	, DIM_BRANCH_TYPE_ACCOUNT_ID
	, DIM_GL_ACCOUNT_TYPE_ID
	, DIM_BALANCE_TYPE_ID
	, DIM_DWH_PRODUCT_ID
	, DIM_MIS_PRODUCT_ID
	, DIM_EBA_FLAG_ID
	, DIM_IFRS_NPL_FLAG_ID
	, DIM_FUNDING_ID
	, DIM_HFS_ID
	, DIM_MODIFICATION_TYPE_ID
	, DIM_COMMISSION_TYPE_ID
	, DIM_IFRS9_CLASS_ID
	, DIM_NETWORK_ACCOUNT_ID
	, DIM_UNSECURED_FLAG_ID
	, DIM_LOAN_CLASS_ID
)                                       
SELECT                                                                                                                                          
	  src.DIM_ENTITY_ID                                                                                                                           
	, src.DIM_MONITORING_UNIT_ID                                                                                                                  
	, src.DIM_ANNOUNCEMENT_UNIT_ID                                                                                                                
	, src.DIM_MIS_UNIT_ID                                                                                                                         
	, src.DIM_CL_TYPE_ID                                                                                                                          
	, src.DIM_CL_CATEGORY_ID                                                                                                                      
	, src.DIM_CRM_SEGMENT_ID                                                                                                                      
	, src.DIM_BRANCH_TYPE_ACCOUNT_ID                                                                                                              
	, src.DIM_GL_ACCOUNT_TYPE_ID                                                                                                                  
	, src.DIM_BALANCE_TYPE_ID                                                                                                                     
	, src.DIM_DWH_PRODUCT_ID                                                                                                                      
	, src.DIM_MIS_PRODUCT_ID                                                                                                                      
	, src.DIM_EBA_FLAG_ID                                                                                                                         
	, src.DIM_IFRS_NPL_FLAG_ID                                                                                                                    
	, src.DIM_FUNDING_ID                                                                                                                          
	, src.DIM_HFS_ID                                                                                                                              
	, src.DIM_MODIFICATION_TYPE_ID                                                                                                                
	, src.DIM_COMMISSION_TYPE_ID                                                                                                                  
	, src.DIM_IFRS9_CLASS_ID
	, src.DIM_NETWORK_ACCOUNT_ID
	, src.DIM_UNSECURED_FLAG_ID
	, src.DIM_LOAN_CLASS_ID
FROM REP.FACT_CLIENT_REF_DATE FACT_CLIENT_REF_DATE, REP.FACT_CLIENT src LEFT JOIN REP.DIM_RL_CLIENT ON  
                                                            src.DIM_ENTITY_ID                   =     REP.DIM_RL_CLIENT.DIM_ENTITY_ID                             
														AND src.DIM_MONITORING_UNIT_ID          =     REP.DIM_RL_CLIENT.DIM_MONITORING_UNIT_ID                                  
														AND src.DIM_ANNOUNCEMENT_UNIT_ID        =     REP.DIM_RL_CLIENT.DIM_ANNOUNCEMENT_UNIT_ID                                
														AND src.DIM_MIS_UNIT_ID                 =     REP.DIM_RL_CLIENT.DIM_MIS_UNIT_ID                                         
														AND src.DIM_CL_TYPE_ID                  =     REP.DIM_RL_CLIENT.DIM_CL_TYPE_ID                                          
														AND src.DIM_CL_CATEGORY_ID              =     REP.DIM_RL_CLIENT.DIM_CL_CATEGORY_ID                                      
														AND src.DIM_CRM_SEGMENT_ID              =     REP.DIM_RL_CLIENT.DIM_CRM_SEGMENT_ID                                      
														AND src.DIM_BRANCH_TYPE_ACCOUNT_ID      =     REP.DIM_RL_CLIENT.DIM_BRANCH_TYPE_ACCOUNT_ID                              
														AND src.DIM_GL_ACCOUNT_TYPE_ID          =     REP.DIM_RL_CLIENT.DIM_GL_ACCOUNT_TYPE_ID                                  
														AND src.DIM_BALANCE_TYPE_ID             =     REP.DIM_RL_CLIENT.DIM_BALANCE_TYPE_ID                                     
														AND src.DIM_DWH_PRODUCT_ID              =     REP.DIM_RL_CLIENT.DIM_DWH_PRODUCT_ID                                      
														AND src.DIM_MIS_PRODUCT_ID              =     REP.DIM_RL_CLIENT.DIM_MIS_PRODUCT_ID                                      
														AND src.DIM_EBA_FLAG_ID                 =     REP.DIM_RL_CLIENT.DIM_EBA_FLAG_ID                                         
														AND src.DIM_IFRS_NPL_FLAG_ID            =     REP.DIM_RL_CLIENT.DIM_IFRS_NPL_FLAG_ID                                    
														AND src.DIM_FUNDING_ID                  =     REP.DIM_RL_CLIENT.DIM_FUNDING_ID                                          
														AND src.DIM_HFS_ID                      =     REP.DIM_RL_CLIENT.DIM_HFS_ID                                              
														AND src.DIM_MODIFICATION_TYPE_ID        =     REP.DIM_RL_CLIENT.DIM_MODIFICATION_TYPE_ID                                
														AND src.DIM_COMMISSION_TYPE_ID          =     REP.DIM_RL_CLIENT.DIM_COMMISSION_TYPE_ID                                  
														AND src.DIM_IFRS9_CLASS_ID              =     REP.DIM_RL_CLIENT.DIM_IFRS9_CLASS_ID                                  
														AND src.DIM_NETWORK_ACCOUNT_ID          =     REP.DIM_RL_CLIENT.DIM_NETWORK_ACCOUNT_ID                                  
														AND src.DIM_UNSECURED_FLAG_ID           =     REP.DIM_RL_CLIENT.DIM_UNSECURED_FLAG_ID                                  
														AND src.DIM_LOAN_CLASS_ID               =     REP.DIM_RL_CLIENT.DIM_LOAN_CLASS_ID                                  
WHERE src.DIM_PERIOD_ID = FACT_CLIENT_REF_DATE.DIM_PERIOD_ID                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_ENTITY_ID              IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_MONITORING_UNIT_ID     IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_ANNOUNCEMENT_UNIT_ID   IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_MIS_UNIT_ID            IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_CL_TYPE_ID             IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_CL_CATEGORY_ID         IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_CRM_SEGMENT_ID         IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_BRANCH_TYPE_ACCOUNT_ID IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_GL_ACCOUNT_TYPE_ID     IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_BALANCE_TYPE_ID        IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_DWH_PRODUCT_ID         IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_MIS_PRODUCT_ID         IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_EBA_FLAG_ID            IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_IFRS_NPL_FLAG_ID       IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_FUNDING_ID             IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_HFS_ID                 IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_MODIFICATION_TYPE_ID   IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_COMMISSION_TYPE_ID     IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_IFRS9_CLASS_ID         IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_NETWORK_ACCOUNT_ID     IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_UNSECURED_FLAG_ID      IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT.DIM_LOAN_CLASS_ID          IS NULL                                                                                      
GROUP BY                                                                                                                                        
	  src.DIM_ENTITY_ID                                                                                                                           
	, src.DIM_MONITORING_UNIT_ID                                                                                                                  
	, src.DIM_ANNOUNCEMENT_UNIT_ID                                                                                                                
	, src.DIM_MIS_UNIT_ID                                                                                                                         
	, src.DIM_CL_TYPE_ID                                                                                                                          
	, src.DIM_CL_CATEGORY_ID                                                                                                                      
	, src.DIM_CRM_SEGMENT_ID                                                                                                                      
	, src.DIM_BRANCH_TYPE_ACCOUNT_ID                                                                                                              
	, src.DIM_GL_ACCOUNT_TYPE_ID                                                                                                                  
	, src.DIM_BALANCE_TYPE_ID                                                                                                                     
	, src.DIM_DWH_PRODUCT_ID                                                                                                                      
	, src.DIM_MIS_PRODUCT_ID                                                                                                                      
	, src.DIM_EBA_FLAG_ID                                                                                                                         
	, src.DIM_IFRS_NPL_FLAG_ID                                                                                                                    
	, src.DIM_FUNDING_ID                                                                                                                          
	, src.DIM_HFS_ID                                                                                                                              
	, src.DIM_MODIFICATION_TYPE_ID                                                                                                                
	, src.DIM_COMMISSION_TYPE_ID                      
	, src.DIM_IFRS9_CLASS_ID       
	, src.DIM_NETWORK_ACCOUNT_ID               
	, src.DIM_UNSECURED_FLAG_ID
	, src.DIM_LOAN_CLASS_ID



UPDATE RL SET
	  	  RL.ENTITY_CODE               =  DIM_ENTITY.ENTITY_CODE
	    , RL.MONITORING_UNIT_CODE      =  DIM_MONITORING_UNIT.MONITORING_UNIT_CODE                                                                                                    
      	, RL.ANNOUNCEMENT_UNIT_CODE    =  DIM_ANNOUNCEMENT_UNIT.ANNOUNCEMENT_UNIT_CODE      
      	, RL.MIS_UNIT_CODE             =  DIM_MIS_UNIT.MIS_UNIT_CODE               
      	, RL.CL_TYPE_CODE              =  DIM_CL_TYPE.CL_TYPE_CODE                
      	, RL.CL_CATEGORY_CODE          =  DIM_CL_CATEGORY.CL_CATEGORY_CODE            
      	, RL.CRM_SEGMENT_CODE          =  DIM_CRM_SEGMENT.CRM_SEGMENT_CODE            
      	, RL.BRANCH_TYPE_ACCOUNT_CODE  =  DIM_BRANCH_TYPE.BRANCH_TYPE_CODE    
      	, RL.GL_ACCOUNT_TYPE_CODE      =  DIM_GL_ACCOUNT_TYPE.GL_ACCOUNT_TYPE_CODE        
      	, RL.BALANCE_TYPE_CODE         =  DIM_BALANCE_TYPE.BALANCE_TYPE_CODE           
      	, RL.DWH_PRODUCT_CODE          =  DIM_DWH_PRODUCT.DWH_PRODUCT_CODE            
      	, RL.MIS_PRODUCT_CODE          =  DIM_MIS_PRODUCT.MIS_PRODUCT_CODE            
      	, RL.EBA_FLAG_CODE             =  DIM_EBA_FLAG.EBA_FLAG_CODE               
      	, RL.IFRS_NPL_FLAG_CODE        =  DIM_IFRS_NPL_FLAG.IFRS_NPL_FLAG_CODE          
      	, RL.FUNDING_CODE              =  DIM_FUNDING.FUNDING_CODE                
      	, RL.HFS_CODE                  =  DIM_HFS.HFS_CODE                    
      	, RL.MODIFICATION_TYPE_CODE    =  DIM_MODIFICATION_TYPE.MODIFICATION_TYPE_CODE      
      	, RL.COMMISSION_TYPE_CODE      =  DIM_COMMISSION_TYPE.COMMISSION_TYPE_CODE        
      	, RL.IFRS9_CLASS_CODE          =  DIM_IFRS9_CLASS.IFRS9_CLASS_CODE        
      	, RL.NETWORK_ACCOUNT_CODE      =  DIM_NETWORK.NETWORK_CODE     
      	, RL.UNSECURED_FLAG_CODE       =  DIM_UNSECURED_FLAG.UNSECURED_FLAG_CODE     
      	, RL.LOAN_CLASS_CODE           =  DIM_LOAN_CLASS.LOAN_CLASS_CODE     
FROM REP.DIM_RL_CLIENT RL
     LEFT JOIN REP.DIM_ENTITY              DIM_ENTITY             ON RL.DIM_ENTITY_ID                   =     DIM_ENTITY.DIM_ENTITY_ID                         
     LEFT JOIN REP.DIM_MONITORING_UNIT     DIM_MONITORING_UNIT    ON RL.DIM_MONITORING_UNIT_ID          =     DIM_MONITORING_UNIT.DIM_MONITORING_UNIT_ID    
     LEFT JOIN REP.DIM_ANNOUNCEMENT_UNIT   DIM_ANNOUNCEMENT_UNIT  ON RL.DIM_ANNOUNCEMENT_UNIT_ID        =     DIM_ANNOUNCEMENT_UNIT.DIM_ANNOUNCEMENT_UNIT_ID
     LEFT JOIN REP.DIM_MIS_UNIT            DIM_MIS_UNIT           ON RL.DIM_MIS_UNIT_ID                 =     DIM_MIS_UNIT.DIM_MIS_UNIT_ID                  
     LEFT JOIN REP.DIM_CL_TYPE             DIM_CL_TYPE            ON RL.DIM_CL_TYPE_ID                  =     DIM_CL_TYPE.DIM_CL_TYPE_ID                    
     LEFT JOIN REP.DIM_CL_CATEGORY         DIM_CL_CATEGORY        ON RL.DIM_CL_CATEGORY_ID              =     DIM_CL_CATEGORY.DIM_CL_CATEGORY_ID            
     LEFT JOIN REP.DIM_CRM_SEGMENT         DIM_CRM_SEGMENT        ON RL.DIM_CRM_SEGMENT_ID              =     DIM_CRM_SEGMENT.DIM_CRM_SEGMENT_ID            
     LEFT JOIN REP.DIM_BRANCH_TYPE         DIM_BRANCH_TYPE        ON RL.DIM_BRANCH_TYPE_ACCOUNT_ID      =     DIM_BRANCH_TYPE.DIM_BRANCH_TYPE_ID            
     LEFT JOIN REP.DIM_GL_ACCOUNT_TYPE     DIM_GL_ACCOUNT_TYPE    ON RL.DIM_GL_ACCOUNT_TYPE_ID          =     DIM_GL_ACCOUNT_TYPE.DIM_GL_ACCOUNT_TYPE_ID    
     LEFT JOIN REP.DIM_BALANCE_TYPE        DIM_BALANCE_TYPE       ON RL.DIM_BALANCE_TYPE_ID             =     DIM_BALANCE_TYPE.DIM_BALANCE_TYPE_ID          
     LEFT JOIN REP.DIM_DWH_PRODUCT         DIM_DWH_PRODUCT        ON RL.DIM_DWH_PRODUCT_ID              =     DIM_DWH_PRODUCT.DIM_DWH_PRODUCT_ID            
     LEFT JOIN REP.DIM_MIS_PRODUCT         DIM_MIS_PRODUCT        ON RL.DIM_MIS_PRODUCT_ID              =     DIM_MIS_PRODUCT.DIM_MIS_PRODUCT_ID            
     LEFT JOIN REP.DIM_EBA_FLAG            DIM_EBA_FLAG           ON RL.DIM_EBA_FLAG_ID                 =     DIM_EBA_FLAG.DIM_EBA_FLAG_ID                  
     LEFT JOIN REP.DIM_IFRS_NPL_FLAG       DIM_IFRS_NPL_FLAG      ON RL.DIM_IFRS_NPL_FLAG_ID            =     DIM_IFRS_NPL_FLAG.DIM_IFRS_NPL_FLAG_ID        
     LEFT JOIN REP.DIM_FUNDING             DIM_FUNDING            ON RL.DIM_FUNDING_ID                  =     DIM_FUNDING.DIM_FUNDING_ID                    
     LEFT JOIN REP.DIM_HFS                 DIM_HFS                ON RL.DIM_HFS_ID                      =     DIM_HFS.DIM_HFS_ID                            
     LEFT JOIN REP.DIM_MODIFICATION_TYPE   DIM_MODIFICATION_TYPE  ON RL.DIM_MODIFICATION_TYPE_ID        =     DIM_MODIFICATION_TYPE.DIM_MODIFICATION_TYPE_ID
     LEFT JOIN REP.DIM_COMMISSION_TYPE     DIM_COMMISSION_TYPE    ON RL.DIM_COMMISSION_TYPE_ID          =     DIM_COMMISSION_TYPE.DIM_COMMISSION_TYPE_ID    
     LEFT JOIN REP.DIM_IFRS9_CLASS         DIM_IFRS9_CLASS        ON RL.DIM_IFRS9_CLASS_ID              =     DIM_IFRS9_CLASS.DIM_IFRS9_CLASS_ID    
     LEFT JOIN REP.DIM_NETWORK             DIM_NETWORK            ON RL.DIM_NETWORK_ACCOUNT_ID          =     DIM_NETWORK.DIM_NETWORK_ID    
     LEFT JOIN REP.DIM_UNSECURED_FLAG      DIM_UNSECURED_FLAG     ON RL.DIM_UNSECURED_FLAG_ID           =     DIM_UNSECURED_FLAG.DIM_UNSECURED_FLAG_ID    
     LEFT JOIN REP.DIM_LOAN_CLASS          DIM_LOAN_CLASS         ON RL.DIM_LOAN_CLASS_ID               =     DIM_LOAN_CLASS.DIM_LOAN_CLASS_ID    


INSERT INTO REP.DIM_RL_CLIENT_FTP (     
	  DIM_DWH_PRODUCT_ID
	, DIM_EBA_FLAG_ID
	, DIM_ENTITY_ID
	, DIM_FTP_AMOUNT_BUCKET_ID
	, DIM_FTP_MATURITY_BUCKET_ID
	, DIM_FUNDING_ID
	, DIM_GL_ACCOUNT_TYPE_ID
	, DIM_RATE_TYPE_ID
	, DIM_CL_TYPE_ID
	, DIM_CL_CATEGORY_ID
	, DIM_CURRENCY_FTP_ID
	, DIM_IFRS_NPL_FLAG_ID
	, DIM_UNSECURED_FLAG_ID
	, DIM_LOAN_CLASS_ID
	, DIM_MIS_UNIT_ID
	, DIM_MONITORING_UNIT_ID 
	, DIM_ANNOUNCEMENT_UNIT_ID 
	, DIM_MIS_PRODUCT_ID 
)                                       
SELECT                                                                                                                                          
	  src.DIM_DWH_PRODUCT_ID
	, src.DIM_EBA_FLAG_ID
	, src.DIM_ENTITY_ID
	, src.DIM_FTP_AMOUNT_BUCKET_ID
	, src.DIM_FTP_MATURITY_BUCKET_ID
	, src.DIM_FUNDING_ID
	, src.DIM_GL_ACCOUNT_TYPE_ID
	, src.DIM_RATE_TYPE_ID
	, src.DIM_CL_TYPE_ID
	, src.DIM_CL_CATEGORY_ID
	, src.DIM_CURRENCY_FTP_ID
    , src.DIM_IFRS_NPL_FLAG_ID
	, src.DIM_UNSECURED_FLAG_ID
	, src.DIM_LOAN_CLASS_ID
	, src.DIM_MIS_UNIT_ID
	, src.DIM_MONITORING_UNIT_ID 
	, src.DIM_ANNOUNCEMENT_UNIT_ID 
	, src.DIM_MIS_PRODUCT_ID 
FROM REP.FACT_CLIENT_REF_DATE FACT_CLIENT_REF_DATE, REP.FACT_CLIENT src LEFT JOIN REP.DIM_RL_CLIENT_FTP ON  
                                                            src.DIM_DWH_PRODUCT_ID               =     REP.DIM_RL_CLIENT_FTP.DIM_DWH_PRODUCT_ID                        
														AND src.DIM_EBA_FLAG_ID                  =     REP.DIM_RL_CLIENT_FTP.DIM_EBA_FLAG_ID                                         
														AND src.DIM_ENTITY_ID                    =     REP.DIM_RL_CLIENT_FTP.DIM_ENTITY_ID                                           
														AND src.DIM_FTP_AMOUNT_BUCKET_ID         =     REP.DIM_RL_CLIENT_FTP.DIM_FTP_AMOUNT_BUCKET_ID                                
														AND src.DIM_FTP_MATURITY_BUCKET_ID       =     REP.DIM_RL_CLIENT_FTP.DIM_FTP_MATURITY_BUCKET_ID                              
														AND src.DIM_FUNDING_ID                   =     REP.DIM_RL_CLIENT_FTP.DIM_FUNDING_ID                                          
														AND src.DIM_GL_ACCOUNT_TYPE_ID           =     REP.DIM_RL_CLIENT_FTP.DIM_GL_ACCOUNT_TYPE_ID                                  
														AND src.DIM_RATE_TYPE_ID                 =     REP.DIM_RL_CLIENT_FTP.DIM_RATE_TYPE_ID                                        
														AND src.DIM_CL_TYPE_ID                   =     REP.DIM_RL_CLIENT_FTP.DIM_CL_TYPE_ID                                          
														AND src.DIM_CL_CATEGORY_ID               =     REP.DIM_RL_CLIENT_FTP.DIM_CL_CATEGORY_ID                                          
														AND src.DIM_CURRENCY_FTP_ID              =     REP.DIM_RL_CLIENT_FTP.DIM_CURRENCY_FTP_ID                                          
														AND src.DIM_IFRS_NPL_FLAG_ID             =     REP.DIM_RL_CLIENT_FTP.DIM_IFRS_NPL_FLAG_ID                                          
														AND src.DIM_UNSECURED_FLAG_ID            =     REP.DIM_RL_CLIENT_FTP.DIM_UNSECURED_FLAG_ID                                          
														AND src.DIM_LOAN_CLASS_ID                =     REP.DIM_RL_CLIENT_FTP.DIM_LOAN_CLASS_ID                                          
														AND src.DIM_MIS_UNIT_ID                  =     REP.DIM_RL_CLIENT_FTP.DIM_MIS_UNIT_ID                                          
														AND src.DIM_MONITORING_UNIT_ID           =     REP.DIM_RL_CLIENT_FTP.DIM_MONITORING_UNIT_ID                                          
														AND src.DIM_ANNOUNCEMENT_UNIT_ID         =     REP.DIM_RL_CLIENT_FTP.DIM_ANNOUNCEMENT_UNIT_ID                                          
														AND src.DIM_MIS_PRODUCT_ID               =     REP.DIM_RL_CLIENT_FTP.DIM_MIS_PRODUCT_ID                                          
WHERE src.DIM_PERIOD_ID = FACT_CLIENT_REF_DATE.DIM_PERIOD_ID                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_DWH_PRODUCT_ID                  IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_EBA_FLAG_ID                     IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_ENTITY_ID                       IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_FTP_AMOUNT_BUCKET_ID            IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_FTP_MATURITY_BUCKET_ID          IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_FUNDING_ID                      IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_GL_ACCOUNT_TYPE_ID              IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_RATE_TYPE_ID                    IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_CL_TYPE_ID                      IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_CL_CATEGORY_ID                  IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_CURRENCY_FTP_ID                 IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_IFRS_NPL_FLAG_ID                IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_UNSECURED_FLAG_ID               IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_LOAN_CLASS_ID                   IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_MIS_UNIT_ID                     IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_MONITORING_UNIT_ID              IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_ANNOUNCEMENT_UNIT_ID            IS NULL                                                                                      
		  AND REP.DIM_RL_CLIENT_FTP.DIM_MIS_PRODUCT_ID                  IS NULL                                                                                      
GROUP BY                                                                                                                                        
	  src.DIM_DWH_PRODUCT_ID                                                                                                                               
	, src.DIM_EBA_FLAG_ID                                                                                                                                  
	, src.DIM_ENTITY_ID                                                                                                                                    
	, src.DIM_FTP_AMOUNT_BUCKET_ID                                                                                                                         
	, src.DIM_FTP_MATURITY_BUCKET_ID                                                                                                                       
	, src.DIM_FUNDING_ID                                                                                                                                   
	, src.DIM_GL_ACCOUNT_TYPE_ID                                                                                                                           
	, src.DIM_RATE_TYPE_ID                                                                                                                                 
	, src.DIM_CL_TYPE_ID                                                                                                                                   
	, src.DIM_CL_CATEGORY_ID
	, src.DIM_CURRENCY_FTP_ID
	, src.DIM_IFRS_NPL_FLAG_ID
	, src.DIM_UNSECURED_FLAG_ID
	, src.DIM_LOAN_CLASS_ID
	, src.DIM_MIS_UNIT_ID
	, src.DIM_MONITORING_UNIT_ID 
	, src.DIM_ANNOUNCEMENT_UNIT_ID 
	, src.DIM_MIS_PRODUCT_ID 




UPDATE RL SET
	      RL.DWH_PRODUCT_CODE            =  DIM_DWH_PRODUCT.DWH_PRODUCT_CODE        
	    , RL.EBA_FLAG_CODE               =  DIM_EBA_FLAG.EBA_FLAG_CODE                                                                                                            
      	, RL.ENTITY_CODE                 =  DIM_ENTITY.ENTITY_CODE                    
      	, RL.FTP_AMOUNT_BUCKET_CODE      =  DIM_FTP_AMOUNT_BUCKET.FTP_AMOUNT_BUCKET_CODE    
      	, RL.FTP_MATURITY_BUCKET_CODE    =  DIM_FTP_MATURITY_BUCKET.FTP_MATURITY_BUCKET_CODE  
      	, RL.FUNDING_CODE                =  DIM_FUNDING.FUNDING_CODE              
      	, RL.GL_ACCOUNT_TYPE_CODE        =  DIM_GL_ACCOUNT_TYPE.GL_ACCOUNT_TYPE_CODE      
      	, RL.RATE_TYPE_CODE              =  DIM_RATE_TYPE.RATE_TYPE_CODE            
      	, RL.CL_TYPE_CODE                =  DIM_CL_TYPE.CL_TYPE_CODE                 
      	, RL.CL_CATEGORY_CODE            =  DIM_CL_CATEGORY.CL_CATEGORY_CODE                 
      	, RL.CURRENCY_FTP_CODE           =  DIM_CURRENCY_FTP.CURRENCY_FTP_CODE                 
      	, RL.IFRS_NPL_FLAG_CODE          =  DIM_IFRS_NPL_FLAG.IFRS_NPL_FLAG_CODE                 
      	, RL.UNSECURED_FLAG_CODE         =  DIM_UNSECURED_FLAG.UNSECURED_FLAG_CODE                 
      	, RL.LOAN_CLASS_CODE             =  DIM_LOAN_CLASS.LOAN_CLASS_CODE                 
      	, RL.MIS_UNIT_CODE               =  DIM_MIS_UNIT.MIS_UNIT_CODE                  
      	, RL.MONITORING_UNIT_CODE        =  DIM_MONITORING_UNIT.MONITORING_UNIT_CODE                  
      	, RL.ANNOUNCEMENT_UNIT_CODE      =  DIM_ANNOUNCEMENT_UNIT.ANNOUNCEMENT_UNIT_CODE                  
      	, RL.MIS_PRODUCT_CODE            =  DIM_MIS_PRODUCT.MIS_PRODUCT_CODE                  
FROM REP.DIM_RL_CLIENT_FTP RL
     LEFT JOIN REP.DIM_DWH_PRODUCT             DIM_DWH_PRODUCT            ON RL.DIM_DWH_PRODUCT_ID              =     DIM_DWH_PRODUCT.DIM_DWH_PRODUCT_ID          
     LEFT JOIN REP.DIM_EBA_FLAG                DIM_EBA_FLAG               ON RL.DIM_EBA_FLAG_ID                 =     DIM_EBA_FLAG.DIM_EBA_FLAG_ID           
     LEFT JOIN REP.DIM_ENTITY                  DIM_ENTITY                 ON RL.DIM_ENTITY_ID                   =     DIM_ENTITY.DIM_ENTITY_ID             
     LEFT JOIN REP.DIM_FTP_AMOUNT_BUCKET       DIM_FTP_AMOUNT_BUCKET      ON RL.DIM_FTP_AMOUNT_BUCKET_ID        =     DIM_FTP_AMOUNT_BUCKET.DIM_FTP_AMOUNT_BUCKET_ID
     LEFT JOIN REP.DIM_FTP_MATURITY_BUCKET     DIM_FTP_MATURITY_BUCKET    ON RL.DIM_FTP_MATURITY_BUCKET_ID      =     DIM_FTP_MATURITY_BUCKET.DIM_FTP_MATURITY_BUCKET_ID
     LEFT JOIN REP.DIM_FUNDING                 DIM_FUNDING                ON RL.DIM_FUNDING_ID                  =     DIM_FUNDING.DIM_FUNDING_ID            
     LEFT JOIN REP.DIM_GL_ACCOUNT_TYPE         DIM_GL_ACCOUNT_TYPE        ON RL.DIM_GL_ACCOUNT_TYPE_ID          =     DIM_GL_ACCOUNT_TYPE.DIM_GL_ACCOUNT_TYPE_ID
     LEFT JOIN REP.DIM_RATE_TYPE               DIM_RATE_TYPE              ON RL.DIM_RATE_TYPE_ID                =     DIM_RATE_TYPE.DIM_RATE_TYPE_ID
     LEFT JOIN REP.DIM_CL_TYPE                 DIM_CL_TYPE                ON RL.DIM_CL_TYPE_ID                  =     DIM_CL_TYPE.DIM_CL_TYPE_ID            
     LEFT JOIN REP.DIM_CL_CATEGORY             DIM_CL_CATEGORY            ON RL.DIM_CL_CATEGORY_ID              =     DIM_CL_CATEGORY.DIM_CL_CATEGORY_ID            
     LEFT JOIN REP.DIM_CURRENCY_FTP            DIM_CURRENCY_FTP           ON RL.DIM_CURRENCY_FTP_ID             =     DIM_CURRENCY_FTP.DIM_CURRENCY_FTP_ID            
     LEFT JOIN REP.DIM_IFRS_NPL_FLAG           DIM_IFRS_NPL_FLAG          ON RL.DIM_IFRS_NPL_FLAG_ID            =     DIM_IFRS_NPL_FLAG.DIM_IFRS_NPL_FLAG_ID            
     LEFT JOIN REP.DIM_UNSECURED_FLAG          DIM_UNSECURED_FLAG         ON RL.DIM_UNSECURED_FLAG_ID           =     DIM_UNSECURED_FLAG.DIM_UNSECURED_FLAG_ID            
     LEFT JOIN REP.DIM_LOAN_CLASS              DIM_LOAN_CLASS             ON RL.DIM_LOAN_CLASS_ID               =     DIM_LOAN_CLASS.DIM_LOAN_CLASS_ID            
     LEFT JOIN REP.DIM_MIS_UNIT                DIM_MIS_UNIT               ON RL.DIM_MIS_UNIT_ID                 =     DIM_MIS_UNIT.DIM_MIS_UNIT_ID            
     LEFT JOIN REP.DIM_MONITORING_UNIT         DIM_MONITORING_UNIT        ON RL.DIM_MONITORING_UNIT_ID          =     DIM_MONITORING_UNIT.DIM_MONITORING_UNIT_ID             
     LEFT JOIN REP.DIM_ANNOUNCEMENT_UNIT       DIM_ANNOUNCEMENT_UNIT      ON RL.DIM_ANNOUNCEMENT_UNIT_ID        =     DIM_ANNOUNCEMENT_UNIT.DIM_ANNOUNCEMENT_UNIT_ID            
     LEFT JOIN REP.DIM_MIS_PRODUCT             DIM_MIS_PRODUCT            ON RL.DIM_MIS_PRODUCT_ID              =     DIM_MIS_PRODUCT.DIM_MIS_PRODUCT_ID             

	 





