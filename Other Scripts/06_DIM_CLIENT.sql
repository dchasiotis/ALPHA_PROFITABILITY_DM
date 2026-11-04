
INSERT INTO REP.DIM_MONITORING_UNIT    (ENTITY_CODE, MONITORING_UNIT_CODE             ) SELECT src.ENTITY_CODE, src.CLIENT_MONITORING_UNIT_CODE    FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_MONITORING_UNIT_CODE  , '0') CLIENT_MONITORING_UNIT_CODE   FROM STG.T_CLIENT WHERE CLIENT_MONITORING_UNIT_CODE    <> '' AND CLIENT_MONITORING_UNIT_CODE    IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_MONITORING_UNIT_CODE  , '0')  ) src LEFT JOIN REP.DIM_MONITORING_UNIT   min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_MONITORING_UNIT_CODE   = min_Dim_Tbl.MONITORING_UNIT_CODE   WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.MONITORING_UNIT_CODE   IS NULL 
INSERT INTO REP.DIM_ANNOUNCEMENT_UNIT  (ENTITY_CODE, ANNOUNCEMENT_UNIT_CODE           ) SELECT src.ENTITY_CODE, src.CLIENT_ANNOUNCEMENT_UNIT_CODE  FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_ANNOUNCEMENT_UNIT_CODE, '0') CLIENT_ANNOUNCEMENT_UNIT_CODE FROM STG.T_CLIENT WHERE CLIENT_ANNOUNCEMENT_UNIT_CODE  <> '' AND CLIENT_ANNOUNCEMENT_UNIT_CODE  IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_ANNOUNCEMENT_UNIT_CODE, '0')  ) src LEFT JOIN REP.DIM_ANNOUNCEMENT_UNIT min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_ANNOUNCEMENT_UNIT_CODE = min_Dim_Tbl.ANNOUNCEMENT_UNIT_CODE WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.ANNOUNCEMENT_UNIT_CODE IS NULL 
INSERT INTO REP.DIM_MIS_UNIT           (ENTITY_CODE, MIS_UNIT_CODE                    ) SELECT src.ENTITY_CODE, src.CLIENT_MIS_UNIT_CODE           FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_MIS_UNIT_CODE         , '0') CLIENT_MIS_UNIT_CODE          FROM STG.T_CLIENT WHERE CLIENT_MIS_UNIT_CODE           <> '' AND CLIENT_MIS_UNIT_CODE           IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_MIS_UNIT_CODE         , '0')  ) src LEFT JOIN REP.DIM_MIS_UNIT          min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_MIS_UNIT_CODE          = min_Dim_Tbl.MIS_UNIT_CODE          WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.MIS_UNIT_CODE          IS NULL 
INSERT INTO REP.DIM_CRM_SEGMENT        (ENTITY_CODE, CRM_SEGMENT_CODE                 ) SELECT src.ENTITY_CODE, src.CLIENT_CRM_SEGMENT_CODE        FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_CRM_SEGMENT_CODE      , '0') CLIENT_CRM_SEGMENT_CODE       FROM STG.T_CLIENT WHERE CLIENT_CRM_SEGMENT_CODE        <> '' AND CLIENT_CRM_SEGMENT_CODE        IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_CRM_SEGMENT_CODE      , '0')  ) src LEFT JOIN REP.DIM_CRM_SEGMENT       min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_CRM_SEGMENT_CODE       = min_Dim_Tbl.CRM_SEGMENT_CODE       WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.CRM_SEGMENT_CODE       IS NULL 
INSERT INTO REP.DIM_CL_GROUP           (ENTITY_CODE, CL_GROUP_CODE                    ) SELECT src.ENTITY_CODE, src.CLIENT_CL_GROUP_CODE           FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_CL_GROUP_CODE         , '0') CLIENT_CL_GROUP_CODE          FROM STG.T_CLIENT WHERE CLIENT_CL_GROUP_CODE           <> '' AND CLIENT_CL_GROUP_CODE           IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_CL_GROUP_CODE         , '0')  ) src LEFT JOIN REP.DIM_CL_GROUP          min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_CL_GROUP_CODE          = min_Dim_Tbl.CL_GROUP_CODE          WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.CL_GROUP_CODE          IS NULL 
INSERT INTO REP.DIM_CL_TYPE            (ENTITY_CODE, CL_TYPE_CODE                     ) SELECT src.ENTITY_CODE, src.CLIENT_CL_TYPE_CODE            FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_CL_TYPE_CODE          , '0') CLIENT_CL_TYPE_CODE           FROM STG.T_CLIENT WHERE CLIENT_CL_TYPE_CODE            <> '' AND CLIENT_CL_TYPE_CODE            IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_CL_TYPE_CODE          , '0')  ) src LEFT JOIN REP.DIM_CL_TYPE           min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_CL_TYPE_CODE           = min_Dim_Tbl.CL_TYPE_CODE           WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.CL_TYPE_CODE           IS NULL 
INSERT INTO REP.DIM_CL_CATEGORY        (ENTITY_CODE, CL_CATEGORY_CODE                 ) SELECT src.ENTITY_CODE, src.CLIENT_CL_CATEGORY_CODE        FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_CL_CATEGORY_CODE      , '0') CLIENT_CL_CATEGORY_CODE       FROM STG.T_CLIENT WHERE CLIENT_CL_CATEGORY_CODE        <> '' AND CLIENT_CL_CATEGORY_CODE        IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_CL_CATEGORY_CODE      , '0')  ) src LEFT JOIN REP.DIM_CL_CATEGORY       min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_CL_CATEGORY_CODE       = min_Dim_Tbl.CL_CATEGORY_CODE       WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.CL_CATEGORY_CODE       IS NULL 
INSERT INTO REP.DIM_CL_RM              (ENTITY_CODE, CL_RM_CODE                       ) SELECT src.ENTITY_CODE, src.CLIENT_CL_RM_CODE              FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_CL_RM_CODE            , '0') CLIENT_CL_RM_CODE             FROM STG.T_CLIENT WHERE CLIENT_CL_RM_CODE              <> '' AND CLIENT_CL_RM_CODE              IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_CL_RM_CODE            , '0')  ) src LEFT JOIN REP.DIM_CL_RM             min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_CL_RM_CODE             = min_Dim_Tbl.CL_RM_CODE             WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.CL_RM_CODE             IS NULL 
INSERT INTO REP.DIM_CL_RATING          (ENTITY_CODE, CL_RATING_CODE                   ) SELECT src.ENTITY_CODE, src.CLIENT_CL_RATING_CODE          FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_CL_RATING_CODE        , '0') CLIENT_CL_RATING_CODE         FROM STG.T_CLIENT WHERE CLIENT_CL_RATING_CODE          <> '' AND CLIENT_CL_RATING_CODE          IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_CL_RATING_CODE        , '0')  ) src LEFT JOIN REP.DIM_CL_RATING         min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_CL_RATING_CODE         = min_Dim_Tbl.CL_RATING_CODE         WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.CL_RATING_CODE         IS NULL 
INSERT INTO REP.DIM_BRANCH             (ENTITY_CODE, BRANCH_CODE, BRANCH_TYPE_CODE    ) SELECT src.ENTITY_CODE, src.CLIENT_BRANCH_CODE, 'OTH'      FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_BRANCH_CODE           , '0') CLIENT_BRANCH_CODE            FROM STG.T_CLIENT WHERE CLIENT_BRANCH_CODE             <> '' AND CLIENT_BRANCH_CODE             IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_BRANCH_CODE           , '0')  ) src LEFT JOIN REP.DIM_BRANCH            min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_BRANCH_CODE            = min_Dim_Tbl.BRANCH_CODE            WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.BRANCH_CODE            IS NULL 
INSERT INTO REP.DIM_NETWORK            (ENTITY_CODE, NETWORK_CODE                     ) SELECT src.ENTITY_CODE, src.CLIENT_NETWORK_CODE            FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_NETWORK_CODE          , '0') CLIENT_NETWORK_CODE           FROM STG.T_CLIENT WHERE CLIENT_NETWORK_CODE            <> '' AND CLIENT_NETWORK_CODE            IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_NETWORK_CODE          , '0')  ) src LEFT JOIN REP.DIM_NETWORK           min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_NETWORK_CODE           = min_Dim_Tbl.NETWORK_CODE           WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.NETWORK_CODE           IS NULL 
INSERT INTO REP.DIM_STAKOD             (ENTITY_CODE, STAKOD_CODE                      ) SELECT src.ENTITY_CODE, src.CLIENT_STAKOD_CODE             FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(CLIENT_STAKOD_CODE           , '0') CLIENT_STAKOD_CODE            FROM STG.T_CLIENT WHERE CLIENT_STAKOD_CODE             <> '' AND CLIENT_STAKOD_CODE             IS NOT NULL  GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(CLIENT_STAKOD_CODE           , '0')  ) src LEFT JOIN REP.DIM_STAKOD            min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.CLIENT_STAKOD_CODE            = min_Dim_Tbl.STAKOD_CODE            WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.STAKOD_CODE            IS NULL 
                      

INSERT INTO REP.DIM_CLIENT ( 
	   DIM_PERIOD_ID
	 , CLIENT_CODE
	 , ENTITY_CODE
	 , PARENT_CLIENT_CODE
)
SELECT
	   DIM_REF_PERIOD.DIM_PERIOD_ID
	 , src.CLIENT_CODE
	 , src.ENTITY_CODE
	 , src.PARENT_CLIENT_CODE
FROM REP.FACT_CLIENT_REF_DATE DIM_REF_PERIOD, STG.T_CLIENT src
	 LEFT JOIN REP.DIM_CLIENT trg ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.CLIENT_CODE = trg.CLIENT_CODE
WHERE 
	  trg.CLIENT_CODE IS NULL

	 

TRUNCATE TABLE REP.DIM_CLIENT_T
INSERT INTO REP.DIM_CLIENT_T (	
    DIM_CLIENT_ID                
  , DIM_PERIOD_ID                        
  , ENTITY_CODE                  
  , CLIENT_CODE                  
  , CLIENT_NAME                  
  , CLIENT_COMPANY_NAME          
  , CLIENT_AFM_CODE              
  , CLIENT_REPORTED_CODE         
  , CLIENT_REPORTED_NAME         
  , CLIENT_MONITORING_UNIT_CODE  
  , CLIENT_MONITORING_UNIT_DESC  
  , CLIENT_ANNOUNCEMENT_UNIT_CODE
  , CLIENT_ANNOUNCEMENT_UNIT_DESC
  , CLIENT_MIS_UNIT_CODE         
  , CLIENT_MIS_UNIT_DESC         
  , CLIENT_CRM_SEGMENT_CODE      
  , CLIENT_CRM_SEGMENT_DESC      
  , CLIENT_CL_GROUP_CODE         
  , CLIENT_CL_GROUP_DESC         
  , CLIENT_CL_GROUP_RATING_CODE  
  , CLIENT_CL_GROUP_RATING_DESC  
  , CLIENT_CL_GROUP_RTE_TRG_RORAC
  , CLIENT_CL_TYPE_CODE          
  , CLIENT_CL_TYPE_DESC          
  , CLIENT_CL_CATEGORY_CODE      
  , CLIENT_CL_CATEGORY_DESC      
  , CLIENT_CL_RM_CODE            
  , CLIENT_CL_RM_NAME            
  , CLIENT_BRANCH_CODE           
  , CLIENT_BRANCH_DESC           
  , CLIENT_BRANCH_AREA_CODE      
  , CLIENT_BRANCH_AREA_DESC      
  , CLIENT_BRANCH_TYPE_CODE      
  , CLIENT_BRANCH_TYPE_DESC      
  , CLIENT_NETWORK_CODE          
  , CLIENT_NETWORK_DESC          
  , CLIENT_STAKOD_CODE           
  , CLIENT_STAKOD_DESC           
  , CLIENT_STAKOD_L1_CODE        
  , CLIENT_STAKOD_L1_DESC        
  , CLIENT_STAKOD_L2_CODE        
  , CLIENT_STAKOD_L2_DESC        
  , CLIENT_STAKOD_L3_CODE        
  , CLIENT_STAKOD_L3_DESC        
  , CLIENT_STAKOD_L4_CODE        
  , CLIENT_STAKOD_L4_DESC        
  , CLIENT_STAKOD_PEE_GROUP      
  , CLIENT_STAKOD_CRC_GROUP      
  , CLIENT_CL_RATING_CODE        
  , CLIENT_CL_RATING_DESC        
  , CLIENT_COUNTRY_CODE          
  , CLIENT_COUNTRY_NAME          
  , CLIENT_COUNTRY_ISO           
  , CLIENT_EVA_SEQID             
  , CLIENT_SUB_CODE              
  , CLIENT_SUB_NAME              
  , PARENT_CLIENT_CODE
  , CLIENT_CL_RM_ID
  , CLIENT_CRM_SEGMENT_ID
  , CLIENT_MONITORING_UNIT_ID
  , CLIENT_CL_GROUP_ID
  , CLIENT_ANNOUNCEMENT_UNIT_ID
  , CLIENT_MIS_UNIT_ID
  , CLIENT_CL_TYPE_ID
  , CLIENT_CL_RATING_ID
  , CLIENT_COUNTRY_ID
  , CLIENT_STAKOD_ID
  , CLIENT_NETWORK_ID
  , CLIENT_BRANCH_ID
  , CLIENT_BRANCH_TYPE_ID
  , CLIENT_CL_CATEGORY_ID
)                                                    
SELECT								                                                                                                                                                                             
	  trg.DIM_CLIENT_ID										                                                                                                                                                                   
	, DIM_REF_PERIOD.DIM_PERIOD_ID										                                                                                                                                                                           
	, trg.ENTITY_CODE										                                                                                                                                                                     
	, trg.CLIENT_CODE										                                                                                                                                                                     
    , ISNULL(src.CLIENT_NAME                     , trg.CLIENT_NAME                     ) CLIENT_NAME                      
	, ISNULL(src.CLIENT_COMPANY_NAME             , trg.CLIENT_COMPANY_NAME             ) CLIENT_COMPANY_NAME              
	, ISNULL(src.CLIENT_AFM_CODE                 , trg.CLIENT_AFM_CODE                 ) CLIENT_AFM_CODE                  
	, trg.CLIENT_CODE										                                                                                                                                                                     
    , ISNULL(src.CLIENT_NAME, trg.CLIENT_NAME)									                                                                                     
    , ISNULL(src.CLIENT_MONITORING_UNIT_CODE     , trg.CLIENT_MONITORING_UNIT_CODE     ) CLIENT_MONITORING_UNIT_CODE      
	, DIM_MONITORING_UNIT.MONITORING_UNIT_DESC										                                                                                                                                           
    , ISNULL(src.CLIENT_ANNOUNCEMENT_UNIT_CODE   , trg.CLIENT_ANNOUNCEMENT_UNIT_CODE   ) CLIENT_ANNOUNCEMENT_UNIT_CODE    
	, DIM_ANNOUNCEMENT_UNIT.ANNOUNCEMENT_UNIT_DESC										                                                                                                                                       
    , ISNULL(src.CLIENT_MIS_UNIT_CODE            , trg.CLIENT_MIS_UNIT_CODE            ) CLIENT_MIS_UNIT_CODE             
	, DIM_MIS_UNIT.MIS_UNIT_DESC										                                                                                                                                                         
    , ISNULL(src.CLIENT_CRM_SEGMENT_CODE         , trg.CLIENT_CRM_SEGMENT_CODE         ) CLIENT_CRM_SEGMENT_CODE          
	, DIM_CRM_SEGMENT.CRM_SEGMENT_DESC										                                                                                                                                                   
    , ISNULL(src.CLIENT_CL_GROUP_CODE            , trg.CLIENT_CL_GROUP_CODE            ) CLIENT_CL_GROUP_CODE             
	, DIM_CL_GROUP.CL_GROUP_DESC										                                                                                                                                                         
	, DIM_CL_GROUP.CL_GROUP_RATING_CODE										                                                                                                                                                   
	, DIM_CL_GROUP.CL_GROUP_RATING_DESC										                                                                                                                                                   
	, DIM_CL_GROUP.CL_GROUP_RTE_TRG_RORAC										                                                                                                                                                 
    , ISNULL(src.CLIENT_CL_TYPE_CODE             , trg.CLIENT_CL_TYPE_CODE             ) CLIENT_CL_TYPE_CODE              
	, DIM_CL_TYPE.CL_TYPE_DESC										                                                                                                                                                           
    , ISNULL(src.CLIENT_CL_CATEGORY_CODE         , trg.CLIENT_CL_CATEGORY_CODE         ) CLIENT_CL_CATEGORY_CODE          
	, DIM_CL_CATEGORY.CL_CATEGORY_DESC										                                                                                                                                                   
    , ISNULL(src.CLIENT_CL_RM_CODE               , trg.CLIENT_CL_RM_CODE               ) CLIENT_CL_RM_CODE                
	, DIM_CL_RM.CL_RM_NAME										                                                                                                                                                               
    , ISNULL(src.CLIENT_BRANCH_CODE              , trg.CLIENT_BRANCH_CODE              ) CLIENT_BRANCH_CODE               
	, DIM_BRANCH.BRANCH_DESC										                                                                                                                                                             
	, DIM_BRANCH.BRANCH_AREA_CODE										                                                                                                                                                         
	, DIM_BRANCH.BRANCH_AREA_DESC										                                                                                                                                                         
	, DIM_BRANCH.BRANCH_TYPE_CODE										                                                                                                                                                         
	, DIM_BRANCH.BRANCH_TYPE_DESC										                                                                                                                                                         
    , ISNULL(src.CLIENT_NETWORK_CODE             , trg.CLIENT_NETWORK_CODE             ) CLIENT_NETWORK_CODE              
	, DIM_NETWORK.NETWORK_DESC										                                                                                                                                                           
    , ISNULL(src.CLIENT_STAKOD_CODE              , trg.CLIENT_STAKOD_CODE              ) CLIENT_STAKOD_CODE               
	, DIM_STAKOD.STAKOD_DESC										                                                                                                                                                             
	, DIM_STAKOD.STAKOD_L1_CODE										                                                                                                                                                           
	, DIM_STAKOD.STAKOD_L1_DESC										                                                                                                                                                           
	, DIM_STAKOD.STAKOD_L2_CODE										                                                                                                                                                           
	, DIM_STAKOD.STAKOD_L2_DESC										                                                                                                                                                           
	, DIM_STAKOD.STAKOD_L3_CODE										                                                                                                                                                           
	, DIM_STAKOD.STAKOD_L3_DESC										                                                                                                                                                           
	, DIM_STAKOD.STAKOD_L4_CODE										                                                                                                                                                           
	, DIM_STAKOD.STAKOD_L4_DESC										                                                                                                                                                           
	, DIM_STAKOD.STAKOD_PEE_GROUP										                                                                                                                                                         
	, DIM_STAKOD.STAKOD_CRC_GROUP										                                                                                                                                                         
    , ISNULL(src.CLIENT_CL_RATING_CODE           , trg.CLIENT_CL_RATING_CODE           ) CLIENT_CL_RATING_CODE            
	, DIM_CL_RATING.CL_RATING_DESC										                                                                                                                                                       
    , ISNULL(src.CLIENT_COUNTRY_CODE             , trg.CLIENT_COUNTRY_CODE             ) CLIENT_COUNTRY_CODE              
	, DIM_COUNTRY.COUNTRY_NAME										                                                                                                                                                           
	, DIM_COUNTRY.COUNTRY_ISO										                                                                                                                                                             
	, trg.CLIENT_EVA_SEQID										                                                                                                                                                               
    , ISNULL(src.CLIENT_SUB_CODE                 , trg.CLIENT_SUB_CODE                 ) CLIENT_SUB_CODE                  
	, ISNULL(src.CLIENT_SUB_NAME                 , trg.CLIENT_SUB_NAME                 ) CLIENT_SUB_NAME                  
    , ISNULL(src.PARENT_CLIENT_CODE              , trg.PARENT_CLIENT_CODE              ) PARENT_CLIENT_CODE               
    , DIM_CL_RM.DIM_CL_RM_ID
    , DIM_CRM_SEGMENT.DIM_CRM_SEGMENT_ID
    , DIM_MONITORING_UNIT.DIM_MONITORING_UNIT_ID
    , DIM_CL_GROUP.DIM_CL_GROUP_ID
    , DIM_ANNOUNCEMENT_UNIT.DIM_ANNOUNCEMENT_UNIT_ID
    , DIM_MIS_UNIT.DIM_MIS_UNIT_ID
    , DIM_CL_TYPE.DIM_CL_TYPE_ID
    , DIM_CL_RATING.DIM_CL_RATING_ID
    , DIM_COUNTRY.DIM_COUNTRY_ID
    , DIM_STAKOD.DIM_STAKOD_ID
    , DIM_NETWORK.DIM_NETWORK_ID
    , DIM_BRANCH.DIM_BRANCH_ID
    , DIM_BRANCH_TYPE.DIM_BRANCH_TYPE_ID
    , DIM_CL_CATEGORY.DIM_CL_CATEGORY_ID										                                                                                                                                                             
FROM REP.FACT_CLIENT_REF_DATE DIM_REF_PERIOD,
     REP.DIM_CLIENT trg
    LEFT JOIN   STG.T_CLIENT src ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.CLIENT_CODE = trg.CLIENT_CODE
	LEFT JOIN	REP.DIM_MONITORING_UNIT	DIM_MONITORING_UNIT	ON	DIM_MONITORING_UNIT.MONITORING_UNIT_CODE = ISNULL(src.CLIENT_MONITORING_UNIT_CODE, trg.CLIENT_MONITORING_UNIT_CODE)	AND	DIM_MONITORING_UNIT.ENTITY_CODE = trg.ENTITY_CODE            
	LEFT JOIN	REP.DIM_ANNOUNCEMENT_UNIT	DIM_ANNOUNCEMENT_UNIT	ON	DIM_ANNOUNCEMENT_UNIT.ANNOUNCEMENT_UNIT_CODE = ISNULL(src.CLIENT_ANNOUNCEMENT_UNIT_CODE, trg.CLIENT_ANNOUNCEMENT_UNIT_CODE) AND	DIM_ANNOUNCEMENT_UNIT.ENTITY_CODE = trg.ENTITY_CODE	
	LEFT JOIN	REP.DIM_MIS_UNIT	DIM_MIS_UNIT	ON	DIM_MIS_UNIT.MIS_UNIT_CODE = ISNULL(src.CLIENT_MIS_UNIT_CODE, trg.CLIENT_MIS_UNIT_CODE) AND	DIM_MIS_UNIT.ENTITY_CODE = trg.ENTITY_CODE	                                                   
	LEFT JOIN	REP.DIM_CRM_SEGMENT	DIM_CRM_SEGMENT	ON	DIM_CRM_SEGMENT.CRM_SEGMENT_CODE = ISNULL(src.CLIENT_CRM_SEGMENT_CODE, trg.CLIENT_CRM_SEGMENT_CODE) AND	DIM_CRM_SEGMENT.ENTITY_CODE = trg.ENTITY_CODE                                    
	LEFT JOIN	REP.DIM_CL_GROUP	DIM_CL_GROUP	ON	DIM_CL_GROUP.CL_GROUP_CODE = ISNULL(src.CLIENT_CL_GROUP_CODE, trg.CLIENT_CL_GROUP_CODE) AND	DIM_CL_GROUP.ENTITY_CODE = trg.ENTITY_CODE	                                                   
	LEFT JOIN	REP.DIM_CL_TYPE	DIM_CL_TYPE	ON	DIM_CL_TYPE.CL_TYPE_CODE = ISNULL(src.CLIENT_CL_TYPE_CODE, trg.CLIENT_CL_TYPE_CODE) AND	DIM_CL_TYPE.ENTITY_CODE = trg.ENTITY_CODE	                                                            
	LEFT JOIN	REP.DIM_CL_CATEGORY	DIM_CL_CATEGORY	ON	DIM_CL_CATEGORY.CL_CATEGORY_CODE = ISNULL(src.CLIENT_CL_CATEGORY_CODE, trg.CLIENT_CL_CATEGORY_CODE) AND	DIM_CL_CATEGORY.ENTITY_CODE = trg.ENTITY_CODE	                                    
	LEFT JOIN	REP.DIM_CL_RM	DIM_CL_RM	ON	DIM_CL_RM.CL_RM_CODE = ISNULL(src.CLIENT_CL_RM_CODE, trg.CLIENT_CL_RM_CODE) AND	DIM_CL_RM.ENTITY_CODE = trg.ENTITY_CODE	                                                                        
	LEFT JOIN	REP.DIM_BRANCH	DIM_BRANCH	ON	DIM_BRANCH.BRANCH_CODE = ISNULL(src.CLIENT_BRANCH_CODE, trg.CLIENT_BRANCH_CODE) AND	DIM_BRANCH.ENTITY_CODE = trg.ENTITY_CODE	                                                               
	LEFT JOIN	REP.DIM_BRANCH_TYPE	DIM_BRANCH_TYPE	ON	DIM_BRANCH.BRANCH_TYPE_CODE	=	DIM_BRANCH_TYPE.BRANCH_TYPE_CODE AND DIM_BRANCH.ENTITY_CODE	=	DIM_BRANCH_TYPE.ENTITY_CODE 			   
	LEFT JOIN	REP.DIM_NETWORK	DIM_NETWORK	ON	DIM_NETWORK.NETWORK_CODE = ISNULL(src.CLIENT_NETWORK_CODE, trg.CLIENT_NETWORK_CODE) AND	DIM_NETWORK.ENTITY_CODE = trg.ENTITY_CODE	
	LEFT JOIN	REP.DIM_STAKOD	DIM_STAKOD	ON	DIM_STAKOD.STAKOD_CODE = ISNULL(src.CLIENT_STAKOD_CODE, trg.CLIENT_STAKOD_CODE) AND	DIM_STAKOD.ENTITY_CODE = trg.ENTITY_CODE	                                                               
	LEFT JOIN	REP.DIM_CL_RATING	DIM_CL_RATING	ON	DIM_CL_RATING.CL_RATING_CODE = ISNULL(src.CLIENT_CL_RATING_CODE, trg.CLIENT_CL_RATING_CODE) AND	DIM_CL_RATING.ENTITY_CODE = trg.ENTITY_CODE	                                                
	LEFT JOIN	REP.DIM_COUNTRY	DIM_COUNTRY	ON	DIM_COUNTRY.COUNTRY_CODE = ISNULL(src.CLIENT_COUNTRY_CODE, trg.CLIENT_COUNTRY_CODE)				   



TRUNCATE TABLE REP.DIM_CLIENT_SO;
ALTER TABLE REP.DIM_CLIENT SWITCH TO REP.DIM_CLIENT_SO;
ALTER TABLE REP.DIM_CLIENT_T SWITCH TO REP.DIM_CLIENT;


TRUNCATE TABLE REP.DIM_CLIENT_T
INSERT INTO REP.DIM_CLIENT_T (	                        
	  DIM_CLIENT_ID                                         
	, DIM_PERIOD_ID                                                 
	, ENTITY_CODE                                           
	, CLIENT_CODE                                           
	, CLIENT_NAME                                           
	, CLIENT_COMPANY_NAME                                   
	, CLIENT_AFM_CODE                                       
	, CLIENT_REPORTED_CODE                                  
	, CLIENT_REPORTED_NAME                                  
	, CLIENT_MONITORING_UNIT_CODE                           
	, CLIENT_MONITORING_UNIT_DESC                           
	, CLIENT_ANNOUNCEMENT_UNIT_CODE                         
	, CLIENT_ANNOUNCEMENT_UNIT_DESC                         
	, CLIENT_MIS_UNIT_CODE                                  
	, CLIENT_MIS_UNIT_DESC                                  
	, CLIENT_CRM_SEGMENT_CODE                               
	, CLIENT_CRM_SEGMENT_DESC                               
	, CLIENT_CL_GROUP_CODE                                  
	, CLIENT_CL_GROUP_DESC                                  
	, CLIENT_CL_GROUP_RATING_CODE                           
	, CLIENT_CL_GROUP_RATING_DESC                           
	, CLIENT_CL_GROUP_RTE_TRG_RORAC                         
	, CLIENT_CL_TYPE_CODE                                   
	, CLIENT_CL_TYPE_DESC                                   
	, CLIENT_CL_CATEGORY_CODE                               
	, CLIENT_CL_CATEGORY_DESC                               
	, CLIENT_CL_RM_CODE                                     
	, CLIENT_CL_RM_NAME                                     
	, CLIENT_BRANCH_CODE                                    
	, CLIENT_BRANCH_DESC                                    
	, CLIENT_BRANCH_AREA_CODE                               
	, CLIENT_BRANCH_AREA_DESC                               
	, CLIENT_BRANCH_TYPE_CODE                               
	, CLIENT_BRANCH_TYPE_DESC                               
	, CLIENT_NETWORK_CODE                                   
	, CLIENT_NETWORK_DESC                                   
	, CLIENT_STAKOD_CODE                                    
	, CLIENT_STAKOD_DESC                                    
	, CLIENT_STAKOD_L1_CODE                                 
	, CLIENT_STAKOD_L1_DESC                                 
	, CLIENT_STAKOD_L2_CODE                                 
	, CLIENT_STAKOD_L2_DESC                                 
	, CLIENT_STAKOD_L3_CODE                                 
	, CLIENT_STAKOD_L3_DESC                                 
	, CLIENT_STAKOD_L4_CODE                                 
	, CLIENT_STAKOD_L4_DESC                                 
	, CLIENT_STAKOD_PEE_GROUP                               
	, CLIENT_STAKOD_CRC_GROUP                               
	, CLIENT_CL_RATING_CODE                                 
	, CLIENT_CL_RATING_DESC                                 
	, CLIENT_COUNTRY_CODE                                   
	, CLIENT_COUNTRY_NAME                                   
	, CLIENT_COUNTRY_ISO                                    
	, CLIENT_EVA_SEQID                                      
	, CLIENT_SUB_CODE                                       
	, CLIENT_SUB_NAME                                       
    , CLIENT_CL_RM_ID
    , CLIENT_CRM_SEGMENT_ID
    , CLIENT_MONITORING_UNIT_ID
    , CLIENT_CL_GROUP_ID
    , CLIENT_ANNOUNCEMENT_UNIT_ID
    , CLIENT_MIS_UNIT_ID
    , CLIENT_CL_TYPE_ID
    , CLIENT_CL_RATING_ID
    , CLIENT_COUNTRY_ID
    , CLIENT_STAKOD_ID
    , CLIENT_NETWORK_ID
    , CLIENT_BRANCH_ID
    , CLIENT_BRANCH_TYPE_ID
    , CLIENT_CL_CATEGORY_ID
    , PARENT_CLIENT_CODE                                    
	, PARENT_CLIENT_NAME                                    
	, PARENT_CLIENT_COMPANY_NAME                            
	, PARENT_CLIENT_AFM_CODE                                
	, PARENT_CLIENT_REPORTED_CODE                           
	, PARENT_CLIENT_REPORTED_NAME                           
	, PARENT_CLIENT_MONITORING_UNIT_CODE                    
	, PARENT_CLIENT_MONITORING_UNIT_DESC                    
	, PARENT_CLIENT_ANNOUNCEMENT_UNIT_CODE                  
	, PARENT_CLIENT_ANNOUNCEMENT_UNIT_DESC                  
	, PARENT_CLIENT_MIS_UNIT_CODE                           
	, PARENT_CLIENT_MIS_UNIT_DESC                           
	, PARENT_CLIENT_CRM_SEGMENT_CODE                        
	, PARENT_CLIENT_CRM_SEGMENT_DESC                        
	, PARENT_CLIENT_CL_GROUP_CODE                           
	, PARENT_CLIENT_CL_GROUP_DESC                           
	, PARENT_CLIENT_CL_GROUP_RATING_CODE                    
	, PARENT_CLIENT_CL_GROUP_RATING_DESC                    
	, PARENT_CLIENT_CL_GROUP_RTE_TRG_RORAC                  
	, PARENT_CLIENT_CL_TYPE_CODE                            
	, PARENT_CLIENT_CL_TYPE_DESC                            
	, PARENT_CLIENT_CL_CATEGORY_CODE                        
	, PARENT_CLIENT_CL_CATEGORY_DESC                        
	, PARENT_CLIENT_CL_RM_CODE                              
	, PARENT_CLIENT_CL_RM_NAME                              
	, PARENT_CLIENT_BRANCH_CODE                             
	, PARENT_CLIENT_BRANCH_DESC                             
	, PARENT_CLIENT_BRANCH_AREA_CODE                        
	, PARENT_CLIENT_BRANCH_AREA_DESC                        
	, PARENT_CLIENT_BRANCH_TYPE_CODE                        
	, PARENT_CLIENT_BRANCH_TYPE_DESC                        
	, PARENT_CLIENT_NETWORK_CODE                            
	, PARENT_CLIENT_NETWORK_DESC                            
	, PARENT_CLIENT_STAKOD_CODE                             
	, PARENT_CLIENT_STAKOD_DESC                             
	, PARENT_CLIENT_STAKOD_L1_CODE                          
	, PARENT_CLIENT_STAKOD_L1_DESC                          
	, PARENT_CLIENT_STAKOD_L2_CODE                          
	, PARENT_CLIENT_STAKOD_L2_DESC                          
	, PARENT_CLIENT_STAKOD_L3_CODE                          
	, PARENT_CLIENT_STAKOD_L3_DESC                          
	, PARENT_CLIENT_STAKOD_L4_CODE                          
	, PARENT_CLIENT_STAKOD_L4_DESC                          
	, PARENT_CLIENT_STAKOD_PEE_GROUP                        
	, PARENT_CLIENT_STAKOD_CRC_GROUP                        
	, PARENT_CLIENT_CL_RATING_CODE                          
	, PARENT_CLIENT_CL_RATING_DESC                          
	, PARENT_CLIENT_COUNTRY_CODE                            
	, PARENT_CLIENT_COUNTRY_NAME                            
	, PARENT_CLIENT_COUNTRY_ISO                             
	, PARENT_CLIENT_EVA_SEQID                               
	, PARENT_CLIENT_SUB_CODE                                
	, PARENT_CLIENT_SUB_NAME                                
)		           
SELECT 											                                                                                                                
	  a.DIM_CLIENT_ID										                                                                     
	, a.DIM_PERIOD_ID										                                                                             
	, a.ENTITY_CODE										                                                                       
	, a.CLIENT_CODE										                                                                       
	, a.CLIENT_NAME										                                                                       
	, a.CLIENT_COMPANY_NAME										                                                               
	, a.CLIENT_AFM_CODE										                                                                   
	, a.CLIENT_REPORTED_CODE										                                                             
	, a.CLIENT_REPORTED_NAME										                                                             
	, a.CLIENT_MONITORING_UNIT_CODE										                                                       
	, a.CLIENT_MONITORING_UNIT_DESC										                                                       
	, a.CLIENT_ANNOUNCEMENT_UNIT_CODE										                                                     
	, a.CLIENT_ANNOUNCEMENT_UNIT_DESC										                                                     
	, a.CLIENT_MIS_UNIT_CODE										                                                             
	, a.CLIENT_MIS_UNIT_DESC										                                                             
	, a.CLIENT_CRM_SEGMENT_CODE										                                                           
	, a.CLIENT_CRM_SEGMENT_DESC										                                                           
	, a.CLIENT_CL_GROUP_CODE										                                                             
	, a.CLIENT_CL_GROUP_DESC										                                                             
	, a.CLIENT_CL_GROUP_RATING_CODE										                                                       
	, a.CLIENT_CL_GROUP_RATING_DESC										                                                       
	, a.CLIENT_CL_GROUP_RTE_TRG_RORAC										                                                     
	, a.CLIENT_CL_TYPE_CODE										                                                               
	, a.CLIENT_CL_TYPE_DESC										                                                               
	, a.CLIENT_CL_CATEGORY_CODE										                                                           
	, a.CLIENT_CL_CATEGORY_DESC										                                                           
	, a.CLIENT_CL_RM_CODE										                                                                 
	, a.CLIENT_CL_RM_NAME										                                                                 
	, a.CLIENT_BRANCH_CODE										                                                               
	, a.CLIENT_BRANCH_DESC										                                                               
	, a.CLIENT_BRANCH_AREA_CODE										                                                           
	, a.CLIENT_BRANCH_AREA_DESC										                                                           
	, a.CLIENT_BRANCH_TYPE_CODE										                                                           
	, a.CLIENT_BRANCH_TYPE_DESC										                                                           
	, a.CLIENT_NETWORK_CODE										                                                               
	, a.CLIENT_NETWORK_DESC										                                                               
	, a.CLIENT_STAKOD_CODE										                                                               
	, a.CLIENT_STAKOD_DESC										                                                               
	, a.CLIENT_STAKOD_L1_CODE										                                                             
	, a.CLIENT_STAKOD_L1_DESC										                                                             
	, a.CLIENT_STAKOD_L2_CODE										                                                             
	, a.CLIENT_STAKOD_L2_DESC										                                                             
	, a.CLIENT_STAKOD_L3_CODE										                                                             
	, a.CLIENT_STAKOD_L3_DESC										                                                             
	, a.CLIENT_STAKOD_L4_CODE										                                                             
	, a.CLIENT_STAKOD_L4_DESC										                                                             
	, a.CLIENT_STAKOD_PEE_GROUP										                                                           
	, a.CLIENT_STAKOD_CRC_GROUP										                                                           
	, a.CLIENT_CL_RATING_CODE										                                                             
	, a.CLIENT_CL_RATING_DESC										                                                             
	, a.CLIENT_COUNTRY_CODE										                                                               
	, a.CLIENT_COUNTRY_NAME										                                                               
	, a.CLIENT_COUNTRY_ISO										                                                               
	, a.CLIENT_EVA_SEQID										                                                                 
	, a.CLIENT_SUB_CODE										                                                                   
	, a.CLIENT_SUB_NAME										                                                                   
    , a.CLIENT_CL_RM_ID
    , a.CLIENT_CRM_SEGMENT_ID
    , a.CLIENT_MONITORING_UNIT_ID
    , a.CLIENT_CL_GROUP_ID
    , a.CLIENT_ANNOUNCEMENT_UNIT_ID
    , a.CLIENT_MIS_UNIT_ID
    , a.CLIENT_CL_TYPE_ID
    , a.CLIENT_CL_RATING_ID
    , a.CLIENT_COUNTRY_ID
    , a.CLIENT_STAKOD_ID
    , a.CLIENT_NETWORK_ID
    , a.CLIENT_BRANCH_ID
    , a.CLIENT_BRANCH_TYPE_ID
    , a.CLIENT_CL_CATEGORY_ID
    , b.CLIENT_CODE						
    , b.CLIENT_NAME						
    , b.CLIENT_COMPANY_NAME				
    , b.CLIENT_AFM_CODE					
    , b.CLIENT_REPORTED_CODE				
    , b.CLIENT_REPORTED_NAME				
    , b.CLIENT_MONITORING_UNIT_CODE		
    , b.CLIENT_MONITORING_UNIT_DESC		
    , b.CLIENT_ANNOUNCEMENT_UNIT_CODE		
    , b.CLIENT_ANNOUNCEMENT_UNIT_DESC		
    , b.CLIENT_MIS_UNIT_CODE				
    , b.CLIENT_MIS_UNIT_DESC				
    , b.CLIENT_CRM_SEGMENT_CODE			
    , b.CLIENT_CRM_SEGMENT_DESC			
    , b.CLIENT_CL_GROUP_CODE				
    , b.CLIENT_CL_GROUP_DESC				
    , b.CLIENT_CL_GROUP_RATING_CODE		
    , b.CLIENT_CL_GROUP_RATING_DESC		
    , b.CLIENT_CL_GROUP_RTE_TRG_RORAC		
    , b.CLIENT_CL_TYPE_CODE				
    , b.CLIENT_CL_TYPE_DESC				
    , b.CLIENT_CL_CATEGORY_CODE			
    , b.CLIENT_CL_CATEGORY_DESC			
    , b.CLIENT_CL_RM_CODE					
    , b.CLIENT_CL_RM_NAME					
    , b.CLIENT_BRANCH_CODE				
    , b.CLIENT_BRANCH_DESC				
    , b.CLIENT_BRANCH_AREA_CODE			
    , b.CLIENT_BRANCH_AREA_DESC			
    , b.CLIENT_BRANCH_TYPE_CODE			
    , b.CLIENT_BRANCH_TYPE_DESC			
    , b.CLIENT_NETWORK_CODE				
    , b.CLIENT_NETWORK_DESC				
    , b.CLIENT_STAKOD_CODE				
    , b.CLIENT_STAKOD_DESC				
    , b.CLIENT_STAKOD_L1_CODE				
    , b.CLIENT_STAKOD_L1_DESC				
    , b.CLIENT_STAKOD_L2_CODE				
    , b.CLIENT_STAKOD_L2_DESC				
    , b.CLIENT_STAKOD_L3_CODE				
    , b.CLIENT_STAKOD_L3_DESC				
    , b.CLIENT_STAKOD_L4_CODE				
    , b.CLIENT_STAKOD_L4_DESC				
    , b.CLIENT_STAKOD_PEE_GROUP			
    , b.CLIENT_STAKOD_CRC_GROUP			
    , b.CLIENT_CL_RATING_CODE				
    , b.CLIENT_CL_RATING_DESC				
    , b.CLIENT_COUNTRY_CODE				
    , b.CLIENT_COUNTRY_NAME				
    , b.CLIENT_COUNTRY_ISO				
    , b.CLIENT_EVA_SEQID					
    , b.CLIENT_SUB_CODE					
    , b.CLIENT_SUB_NAME					
FROM REP.DIM_CLIENT a											                                                               
	LEFT JOIN	REP.DIM_CLIENT	b	ON	a.PARENT_CLIENT_CODE	=	b.CLIENT_CODE	AND	a.ENTITY_CODE	=	b.ENTITY_CODE 
WHERE a.PARENT_CLIENT_CODE IS NOT NULL AND a.PARENT_CLIENT_CODE <> '0' AND a.PARENT_CLIENT_CODE <> a.CLIENT_CODE	


INSERT INTO REP.DIM_CLIENT_T (	                        
	  DIM_CLIENT_ID                                         
	, DIM_PERIOD_ID                                                 
	, ENTITY_CODE                                           
	, CLIENT_CODE                                           
	, CLIENT_NAME                                           
	, CLIENT_COMPANY_NAME                                   
	, CLIENT_AFM_CODE                                       
	, CLIENT_REPORTED_CODE                                  
	, CLIENT_REPORTED_NAME                                  
	, CLIENT_MONITORING_UNIT_CODE                           
	, CLIENT_MONITORING_UNIT_DESC                           
	, CLIENT_ANNOUNCEMENT_UNIT_CODE                         
	, CLIENT_ANNOUNCEMENT_UNIT_DESC                         
	, CLIENT_MIS_UNIT_CODE                                  
	, CLIENT_MIS_UNIT_DESC                                  
	, CLIENT_CRM_SEGMENT_CODE                               
	, CLIENT_CRM_SEGMENT_DESC                               
	, CLIENT_CL_GROUP_CODE                                  
	, CLIENT_CL_GROUP_DESC                                  
	, CLIENT_CL_GROUP_RATING_CODE                           
	, CLIENT_CL_GROUP_RATING_DESC                           
	, CLIENT_CL_GROUP_RTE_TRG_RORAC                         
	, CLIENT_CL_TYPE_CODE                                   
	, CLIENT_CL_TYPE_DESC                                   
	, CLIENT_CL_CATEGORY_CODE                               
	, CLIENT_CL_CATEGORY_DESC                               
	, CLIENT_CL_RM_CODE                                     
	, CLIENT_CL_RM_NAME                                     
	, CLIENT_BRANCH_CODE                                    
	, CLIENT_BRANCH_DESC                                    
	, CLIENT_BRANCH_AREA_CODE                               
	, CLIENT_BRANCH_AREA_DESC                               
	, CLIENT_BRANCH_TYPE_CODE                               
	, CLIENT_BRANCH_TYPE_DESC                               
	, CLIENT_NETWORK_CODE                                   
	, CLIENT_NETWORK_DESC                                   
	, CLIENT_STAKOD_CODE                                    
	, CLIENT_STAKOD_DESC                                    
	, CLIENT_STAKOD_L1_CODE                                 
	, CLIENT_STAKOD_L1_DESC                                 
	, CLIENT_STAKOD_L2_CODE                                 
	, CLIENT_STAKOD_L2_DESC                                 
	, CLIENT_STAKOD_L3_CODE                                 
	, CLIENT_STAKOD_L3_DESC                                 
	, CLIENT_STAKOD_L4_CODE                                 
	, CLIENT_STAKOD_L4_DESC                                 
	, CLIENT_STAKOD_PEE_GROUP                               
	, CLIENT_STAKOD_CRC_GROUP                               
	, CLIENT_CL_RATING_CODE                                 
	, CLIENT_CL_RATING_DESC                                 
	, CLIENT_COUNTRY_CODE                                   
	, CLIENT_COUNTRY_NAME                                   
	, CLIENT_COUNTRY_ISO                                    
	, CLIENT_EVA_SEQID                                      
	, CLIENT_SUB_CODE                                       
	, CLIENT_SUB_NAME                                       
    , CLIENT_CL_RM_ID
    , CLIENT_CRM_SEGMENT_ID
    , CLIENT_MONITORING_UNIT_ID
    , CLIENT_CL_GROUP_ID
    , CLIENT_ANNOUNCEMENT_UNIT_ID
    , CLIENT_MIS_UNIT_ID
    , CLIENT_CL_TYPE_ID
    , CLIENT_CL_RATING_ID
    , CLIENT_COUNTRY_ID
    , CLIENT_STAKOD_ID
    , CLIENT_NETWORK_ID
    , CLIENT_BRANCH_ID
    , CLIENT_BRANCH_TYPE_ID
    , CLIENT_CL_CATEGORY_ID
    , PARENT_CLIENT_CODE                                    
	, PARENT_CLIENT_NAME                                    
	, PARENT_CLIENT_COMPANY_NAME                            
	, PARENT_CLIENT_AFM_CODE                                
	, PARENT_CLIENT_REPORTED_CODE                           
	, PARENT_CLIENT_REPORTED_NAME                           
	, PARENT_CLIENT_MONITORING_UNIT_CODE                    
	, PARENT_CLIENT_MONITORING_UNIT_DESC                    
	, PARENT_CLIENT_ANNOUNCEMENT_UNIT_CODE                  
	, PARENT_CLIENT_ANNOUNCEMENT_UNIT_DESC                  
	, PARENT_CLIENT_MIS_UNIT_CODE                           
	, PARENT_CLIENT_MIS_UNIT_DESC                           
	, PARENT_CLIENT_CRM_SEGMENT_CODE                        
	, PARENT_CLIENT_CRM_SEGMENT_DESC                        
	, PARENT_CLIENT_CL_GROUP_CODE                           
	, PARENT_CLIENT_CL_GROUP_DESC                           
	, PARENT_CLIENT_CL_GROUP_RATING_CODE                    
	, PARENT_CLIENT_CL_GROUP_RATING_DESC                    
	, PARENT_CLIENT_CL_GROUP_RTE_TRG_RORAC                  
	, PARENT_CLIENT_CL_TYPE_CODE                            
	, PARENT_CLIENT_CL_TYPE_DESC                            
	, PARENT_CLIENT_CL_CATEGORY_CODE                        
	, PARENT_CLIENT_CL_CATEGORY_DESC                        
	, PARENT_CLIENT_CL_RM_CODE                              
	, PARENT_CLIENT_CL_RM_NAME                              
	, PARENT_CLIENT_BRANCH_CODE                             
	, PARENT_CLIENT_BRANCH_DESC                             
	, PARENT_CLIENT_BRANCH_AREA_CODE                        
	, PARENT_CLIENT_BRANCH_AREA_DESC                        
	, PARENT_CLIENT_BRANCH_TYPE_CODE                        
	, PARENT_CLIENT_BRANCH_TYPE_DESC                        
	, PARENT_CLIENT_NETWORK_CODE                            
	, PARENT_CLIENT_NETWORK_DESC                            
	, PARENT_CLIENT_STAKOD_CODE                             
	, PARENT_CLIENT_STAKOD_DESC                             
	, PARENT_CLIENT_STAKOD_L1_CODE                          
	, PARENT_CLIENT_STAKOD_L1_DESC                          
	, PARENT_CLIENT_STAKOD_L2_CODE                          
	, PARENT_CLIENT_STAKOD_L2_DESC                          
	, PARENT_CLIENT_STAKOD_L3_CODE                          
	, PARENT_CLIENT_STAKOD_L3_DESC                          
	, PARENT_CLIENT_STAKOD_L4_CODE                          
	, PARENT_CLIENT_STAKOD_L4_DESC                          
	, PARENT_CLIENT_STAKOD_PEE_GROUP                        
	, PARENT_CLIENT_STAKOD_CRC_GROUP                        
	, PARENT_CLIENT_CL_RATING_CODE                          
	, PARENT_CLIENT_CL_RATING_DESC                          
	, PARENT_CLIENT_COUNTRY_CODE                            
	, PARENT_CLIENT_COUNTRY_NAME                            
	, PARENT_CLIENT_COUNTRY_ISO                             
	, PARENT_CLIENT_EVA_SEQID                               
	, PARENT_CLIENT_SUB_CODE                                
	, PARENT_CLIENT_SUB_NAME                                
)		           
SELECT 											                                                                                                                
	  a.DIM_CLIENT_ID										                                                                     
	, a.DIM_PERIOD_ID										                                                                             
	, a.ENTITY_CODE										                                                                       
	, a.CLIENT_CODE										                                                                       
	, a.CLIENT_NAME										                                                                       
	, a.CLIENT_COMPANY_NAME										                                                               
	, a.CLIENT_AFM_CODE										                                                                   
	, a.CLIENT_REPORTED_CODE										                                                             
	, a.CLIENT_REPORTED_NAME										                                                             
	, a.CLIENT_MONITORING_UNIT_CODE										                                                       
	, a.CLIENT_MONITORING_UNIT_DESC										                                                       
	, a.CLIENT_ANNOUNCEMENT_UNIT_CODE										                                                     
	, a.CLIENT_ANNOUNCEMENT_UNIT_DESC										                                                     
	, a.CLIENT_MIS_UNIT_CODE										                                                             
	, a.CLIENT_MIS_UNIT_DESC										                                                             
	, a.CLIENT_CRM_SEGMENT_CODE										                                                           
	, a.CLIENT_CRM_SEGMENT_DESC										                                                           
	, a.CLIENT_CL_GROUP_CODE										                                                             
	, a.CLIENT_CL_GROUP_DESC										                                                             
	, a.CLIENT_CL_GROUP_RATING_CODE										                                                       
	, a.CLIENT_CL_GROUP_RATING_DESC										                                                       
	, a.CLIENT_CL_GROUP_RTE_TRG_RORAC										                                                     
	, a.CLIENT_CL_TYPE_CODE										                                                               
	, a.CLIENT_CL_TYPE_DESC										                                                               
	, a.CLIENT_CL_CATEGORY_CODE										                                                           
	, a.CLIENT_CL_CATEGORY_DESC										                                                           
	, a.CLIENT_CL_RM_CODE										                                                                 
	, a.CLIENT_CL_RM_NAME										                                                                 
	, a.CLIENT_BRANCH_CODE										                                                               
	, a.CLIENT_BRANCH_DESC										                                                               
	, a.CLIENT_BRANCH_AREA_CODE										                                                           
	, a.CLIENT_BRANCH_AREA_DESC										                                                           
	, a.CLIENT_BRANCH_TYPE_CODE										                                                           
	, a.CLIENT_BRANCH_TYPE_DESC										                                                           
	, a.CLIENT_NETWORK_CODE										                                                               
	, a.CLIENT_NETWORK_DESC										                                                               
	, a.CLIENT_STAKOD_CODE										                                                               
	, a.CLIENT_STAKOD_DESC										                                                               
	, a.CLIENT_STAKOD_L1_CODE										                                                             
	, a.CLIENT_STAKOD_L1_DESC										                                                             
	, a.CLIENT_STAKOD_L2_CODE										                                                             
	, a.CLIENT_STAKOD_L2_DESC										                                                             
	, a.CLIENT_STAKOD_L3_CODE										                                                             
	, a.CLIENT_STAKOD_L3_DESC										                                                             
	, a.CLIENT_STAKOD_L4_CODE										                                                             
	, a.CLIENT_STAKOD_L4_DESC										                                                             
	, a.CLIENT_STAKOD_PEE_GROUP										                                                           
	, a.CLIENT_STAKOD_CRC_GROUP										                                                           
	, a.CLIENT_CL_RATING_CODE										                                                             
	, a.CLIENT_CL_RATING_DESC										                                                             
	, a.CLIENT_COUNTRY_CODE										                                                               
	, a.CLIENT_COUNTRY_NAME										                                                               
	, a.CLIENT_COUNTRY_ISO										                                                               
	, a.CLIENT_EVA_SEQID										                                                                 
	, a.CLIENT_SUB_CODE										                                                                   
	, a.CLIENT_SUB_NAME										                                                                   
    , a.CLIENT_CL_RM_ID
    , a.CLIENT_CRM_SEGMENT_ID
    , a.CLIENT_MONITORING_UNIT_ID
    , a.CLIENT_CL_GROUP_ID
    , a.CLIENT_ANNOUNCEMENT_UNIT_ID
    , a.CLIENT_MIS_UNIT_ID
    , a.CLIENT_CL_TYPE_ID
    , a.CLIENT_CL_RATING_ID
    , a.CLIENT_COUNTRY_ID
    , a.CLIENT_STAKOD_ID
    , a.CLIENT_NETWORK_ID
    , a.CLIENT_BRANCH_ID
    , a.CLIENT_BRANCH_TYPE_ID
    , a.CLIENT_CL_CATEGORY_ID
    , a.CLIENT_CODE						
    , a.CLIENT_NAME						
    , a.CLIENT_COMPANY_NAME				
    , a.CLIENT_AFM_CODE					
    , a.CLIENT_REPORTED_CODE				
    , a.CLIENT_REPORTED_NAME				
    , a.CLIENT_MONITORING_UNIT_CODE		
    , a.CLIENT_MONITORING_UNIT_DESC		
    , a.CLIENT_ANNOUNCEMENT_UNIT_CODE		
    , a.CLIENT_ANNOUNCEMENT_UNIT_DESC		
    , a.CLIENT_MIS_UNIT_CODE				
    , a.CLIENT_MIS_UNIT_DESC				
    , a.CLIENT_CRM_SEGMENT_CODE			
    , a.CLIENT_CRM_SEGMENT_DESC			
    , a.CLIENT_CL_GROUP_CODE				
    , a.CLIENT_CL_GROUP_DESC				
    , a.CLIENT_CL_GROUP_RATING_CODE		
    , a.CLIENT_CL_GROUP_RATING_DESC		
    , a.CLIENT_CL_GROUP_RTE_TRG_RORAC		
    , a.CLIENT_CL_TYPE_CODE				
    , a.CLIENT_CL_TYPE_DESC				
    , a.CLIENT_CL_CATEGORY_CODE			
    , a.CLIENT_CL_CATEGORY_DESC			
    , a.CLIENT_CL_RM_CODE					
    , a.CLIENT_CL_RM_NAME					
    , a.CLIENT_BRANCH_CODE				
    , a.CLIENT_BRANCH_DESC				
    , a.CLIENT_BRANCH_AREA_CODE			
    , a.CLIENT_BRANCH_AREA_DESC			
    , a.CLIENT_BRANCH_TYPE_CODE			
    , a.CLIENT_BRANCH_TYPE_DESC			
    , a.CLIENT_NETWORK_CODE				
    , a.CLIENT_NETWORK_DESC				
    , a.CLIENT_STAKOD_CODE				
    , a.CLIENT_STAKOD_DESC				
    , a.CLIENT_STAKOD_L1_CODE				
    , a.CLIENT_STAKOD_L1_DESC				
    , a.CLIENT_STAKOD_L2_CODE				
    , a.CLIENT_STAKOD_L2_DESC				
    , a.CLIENT_STAKOD_L3_CODE				
    , a.CLIENT_STAKOD_L3_DESC				
    , a.CLIENT_STAKOD_L4_CODE				
    , a.CLIENT_STAKOD_L4_DESC				
    , a.CLIENT_STAKOD_PEE_GROUP			
    , a.CLIENT_STAKOD_CRC_GROUP			
    , a.CLIENT_CL_RATING_CODE				
    , a.CLIENT_CL_RATING_DESC				
    , a.CLIENT_COUNTRY_CODE				
    , a.CLIENT_COUNTRY_NAME				
    , a.CLIENT_COUNTRY_ISO				
    , a.CLIENT_EVA_SEQID					
    , a.CLIENT_SUB_CODE					
    , a.CLIENT_SUB_NAME					
FROM REP.DIM_CLIENT a											                                                               
WHERE a.PARENT_CLIENT_CODE IS NULL OR a.PARENT_CLIENT_CODE = '0' OR a.PARENT_CLIENT_CODE = a.CLIENT_CODE	

	
TRUNCATE TABLE REP.DIM_CLIENT_SO;
ALTER TABLE REP.DIM_CLIENT SWITCH TO REP.DIM_CLIENT_SO;
ALTER TABLE REP.DIM_CLIENT_T SWITCH TO REP.DIM_CLIENT;
	   	