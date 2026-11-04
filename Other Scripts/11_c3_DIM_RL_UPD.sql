
-- Update pricing components based on index

UPDATE trg
SET 
	  FTP_RATE_TYPE_RR_ID    = dfrt_rr.DIM_FTP_RATE_TYPE_ID            
	, FTP_RATE_TYPE_RR_CODE  = dfrt_rr.FTP_RATE_TYPE_CODE          
	, FTP_RATE_TYPE_RR_DESC  = dfrt_rr.FTP_RATE_TYPE_DESC          
	, FTP_RATE_TYPE_ABR_ID   = dfrt_abr.DIM_FTP_RATE_TYPE_ID          
	, FTP_RATE_TYPE_ABR_CODE = dfrt_abr.FTP_RATE_TYPE_CODE        
	, FTP_RATE_TYPE_ABR_DESC = dfrt_abr.FTP_RATE_TYPE_DESC        
	, FTP_RATE_TYPE_FDS_ID   = dfrt_fds.DIM_FTP_RATE_TYPE_ID          
	, FTP_RATE_TYPE_FDS_CODE = dfrt_fds.FTP_RATE_TYPE_CODE        
	, FTP_RATE_TYPE_FDS_DESC = dfrt_fds.FTP_RATE_TYPE_DESC        
	, FTP_RATE_TYPE_MS_ID    = dfrt_ms.DIM_FTP_RATE_TYPE_ID            
	, FTP_RATE_TYPE_MS_CODE  = dfrt_ms.FTP_RATE_TYPE_CODE          
	, FTP_RATE_TYPE_MS_DESC  = dfrt_ms.FTP_RATE_TYPE_DESC          
	, FTP_RATE_TYPE_AS_ID    = dfrt_as.DIM_FTP_RATE_TYPE_ID            
	, FTP_RATE_TYPE_AS_CODE  = dfrt_as.FTP_RATE_TYPE_CODE          
	, FTP_RATE_TYPE_AS_DESC  = dfrt_as.FTP_RATE_TYPE_DESC          
	, FTP_RATE_TYPE_FCS_ID   = dfrt_fcs.DIM_FTP_RATE_TYPE_ID          
	, FTP_RATE_TYPE_FCS_CODE = dfrt_fcs.FTP_RATE_TYPE_CODE        
	, FTP_RATE_TYPE_FCS_DESC = dfrt_fcs.FTP_RATE_TYPE_DESC        
	, FTP_RATE_TYPE_TRS_ID   = dfrt_trs.DIM_FTP_RATE_TYPE_ID          
	, FTP_RATE_TYPE_TRS_CODE = dfrt_trs.FTP_RATE_TYPE_CODE        
	, FTP_RATE_TYPE_TRS_DESC = dfrt_trs.FTP_RATE_TYPE_DESC        
	, FTP_RATE_TYPE_CDI_ID   = dfrt_cdi.DIM_FTP_RATE_TYPE_ID          
	, FTP_RATE_TYPE_CDI_CODE = dfrt_cdi.FTP_RATE_TYPE_CODE        
	, FTP_RATE_TYPE_CDI_DESC = dfrt_cdi.FTP_RATE_TYPE_DESC        
	, FTP_RATE_TYPE_CLB_ID   = dfrt_clb.DIM_FTP_RATE_TYPE_ID          
	, FTP_RATE_TYPE_CLB_CODE = dfrt_clb.FTP_RATE_TYPE_CODE        
	, FTP_RATE_TYPE_CLB_DESC = dfrt_clb.FTP_RATE_TYPE_DESC        
	, FTP_RATE_TYPE_COR_ID   = dfrt_cor.DIM_FTP_RATE_TYPE_ID          
	, FTP_RATE_TYPE_COR_CODE = dfrt_cor.FTP_RATE_TYPE_CODE        
	, FTP_RATE_TYPE_COR_DESC = dfrt_cor.FTP_RATE_TYPE_DESC        
	, FTP_BASE_RATE_CODE     = cfbr.FTP_BASE_RATE_CODE             
	, FTP_BASE_RATE_DESC     = cfbr.FTP_BASE_RATE_DESC             
	, FTP_D_BASE_RATE_CODE   = cfdbr.FTP_D_BASE_RATE_CODE          
	, FTP_D_BASE_RATE_DESC   = cfdbr.FTP_D_BASE_RATE_DESC          
FROM REP.DIM_RL_CLIENT_FTP trg
LEFT JOIN CLS.CLS_FTP_RATE_COMPONENTS_MAP cfrcm ON  cfrcm.FTP_RATE_COMPONENTS_MAP_CODE      = trg.FTP_RATE_COMPONENTS_MAP_CODE            
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_rr         ON  cfrcm.FTP_RATE_TYPE_RR_CODE             = dfrt_rr.FTP_RATE_TYPE_CODE 
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_abr        ON  cfrcm.FTP_RATE_TYPE_ABR_CODE            = dfrt_abr.FTP_RATE_TYPE_CODE
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_fds        ON  cfrcm.FTP_RATE_TYPE_FDS_CODE            = dfrt_fds.FTP_RATE_TYPE_CODE
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_ms         ON  cfrcm.FTP_RATE_TYPE_MS_CODE             = dfrt_ms.FTP_RATE_TYPE_CODE
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_as         ON  cfrcm.FTP_RATE_TYPE_AS_CODE             = dfrt_as.FTP_RATE_TYPE_CODE
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_fcs        ON  cfrcm.FTP_RATE_TYPE_FCS_CODE            = dfrt_fcs.FTP_RATE_TYPE_CODE
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_trs        ON  cfrcm.FTP_RATE_TYPE_TRS_CODE            = dfrt_trs.FTP_RATE_TYPE_CODE
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_cdi        ON  cfrcm.FTP_RATE_TYPE_CDI_CODE            = dfrt_cdi.FTP_RATE_TYPE_CODE
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_clb        ON  cfrcm.FTP_RATE_TYPE_CLB_CODE            = dfrt_clb.FTP_RATE_TYPE_CODE
LEFT JOIN REP.DIM_FTP_RATE_TYPE dfrt_cor        ON  cfrcm.FTP_RATE_TYPE_COR_CODE            = dfrt_cor.FTP_RATE_TYPE_CODE
LEFT JOIN CLS.CLS_FTP_BASE_RATE cfbr            ON  cfrcm.FTP_BASE_RATE_CODE                = cfbr.FTP_BASE_RATE_CODE
LEFT JOIN CLS.CLS_FTP_D_BASE_RATE cfdbr         ON  cfrcm.FTP_D_BASE_RATE_CODE              = cfdbr.FTP_D_BASE_RATE_CODE












