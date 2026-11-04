
INSERT INTO REP.DIM_ACCRUAL_BASIS          (ENTITY_CODE, ACCRUAL_BASIS_CODE             ) SELECT src.ENTITY_CODE, src.ACCOUNT_ACCRUAL_BASIS_CODE                        FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_ACCRUAL_BASIS_CODE     , '0') ACCOUNT_ACCRUAL_BASIS_CODE                                                          FROM STG.T_ACCOUNT WHERE ACCOUNT_ACCRUAL_BASIS_CODE         <> '' AND ACCOUNT_ACCRUAL_BASIS_CODE         IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_ACCRUAL_BASIS_CODE     , '0')                                       ) src LEFT JOIN REP.DIM_ACCRUAL_BASIS        min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_ACCRUAL_BASIS_CODE      = min_Dim_Tbl.ACCRUAL_BASIS_CODE                                                          WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.ACCRUAL_BASIS_CODE      IS NULL 
INSERT INTO REP.DIM_BRANCH                 (ENTITY_CODE, BRANCH_CODE, BRANCH_TYPE_CODE  ) SELECT src.ENTITY_CODE, src.ACCOUNT_BRANCH_CODE, 'OTH'                        FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_BRANCH_CODE            , '0') ACCOUNT_BRANCH_CODE                                                                 FROM STG.T_ACCOUNT WHERE ACCOUNT_BRANCH_CODE                <> '' AND ACCOUNT_BRANCH_CODE                IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_BRANCH_CODE            , '0')                                       ) src LEFT JOIN REP.DIM_BRANCH               min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_BRANCH_CODE             = min_Dim_Tbl.BRANCH_CODE                                                                 WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.BRANCH_CODE             IS NULL 
INSERT INTO REP.DIM_CRE_FLAG               (ENTITY_CODE, CRE_FLAG_CODE                  ) SELECT src.ENTITY_CODE, src.ACCOUNT_CRE_FLAG_CODE                             FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_CRE_FLAG_CODE          , '0') ACCOUNT_CRE_FLAG_CODE                                                               FROM STG.T_ACCOUNT WHERE ACCOUNT_CRE_FLAG_CODE              <> '' AND ACCOUNT_CRE_FLAG_CODE              IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_CRE_FLAG_CODE          , '0')                                       ) src LEFT JOIN REP.DIM_CRE_FLAG             min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_CRE_FLAG_CODE           = min_Dim_Tbl.CRE_FLAG_CODE                                                               WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.CRE_FLAG_CODE           IS NULL 
INSERT INTO REP.DIM_DENOUNCED_FLAG         (ENTITY_CODE, DENOUNCED_FLAG_CODE            ) SELECT src.ENTITY_CODE, src.ACCOUNT_DENOUNCED_FLAG_CODE                       FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_DENOUNCED_FLAG_CODE    , '0') ACCOUNT_DENOUNCED_FLAG_CODE                                                         FROM STG.T_ACCOUNT WHERE ACCOUNT_DENOUNCED_FLAG_CODE        <> '' AND ACCOUNT_DENOUNCED_FLAG_CODE        IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_DENOUNCED_FLAG_CODE    , '0')                                       ) src LEFT JOIN REP.DIM_DENOUNCED_FLAG       min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_DENOUNCED_FLAG_CODE     = min_Dim_Tbl.DENOUNCED_FLAG_CODE                                                         WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.DENOUNCED_FLAG_CODE     IS NULL 
INSERT INTO REP.DIM_DWH_PRODUCT            (ENTITY_CODE, DWH_PRODUCT_CODE               ) SELECT src.ENTITY_CODE, src.ACCOUNT_DWH_PRODUCT_CODE                          FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_DWH_PRODUCT_CODE       , '0') ACCOUNT_DWH_PRODUCT_CODE                                                            FROM STG.T_ACCOUNT WHERE ACCOUNT_DWH_PRODUCT_CODE           <> '' AND ACCOUNT_DWH_PRODUCT_CODE           IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_DWH_PRODUCT_CODE       , '0')                                       ) src LEFT JOIN REP.DIM_DWH_PRODUCT          min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_DWH_PRODUCT_CODE        = min_Dim_Tbl.DWH_PRODUCT_CODE                                                            WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.DWH_PRODUCT_CODE        IS NULL 
INSERT INTO REP.DIM_EBA_FLAG               (ENTITY_CODE, EBA_FLAG_CODE                  ) SELECT src.ENTITY_CODE, src.ACCOUNT_EBA_FLAG_CODE                             FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_EBA_FLAG_CODE          , '0') ACCOUNT_EBA_FLAG_CODE                                                               FROM STG.T_ACCOUNT WHERE ACCOUNT_EBA_FLAG_CODE              <> '' AND ACCOUNT_EBA_FLAG_CODE              IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_EBA_FLAG_CODE          , '0')                                       ) src LEFT JOIN REP.DIM_EBA_FLAG             min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_EBA_FLAG_CODE           = min_Dim_Tbl.EBA_FLAG_CODE                                                               WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.EBA_FLAG_CODE           IS NULL 
INSERT INTO REP.DIM_ECA_CLASS              (ENTITY_CODE, ECA_CLASS_CODE                 ) SELECT src.ENTITY_CODE, src.ACCOUNT_ECA_CLASS_CODE                            FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_ECA_CLASS_CODE         , '0') ACCOUNT_ECA_CLASS_CODE                                                              FROM STG.T_ACCOUNT WHERE ACCOUNT_ECA_CLASS_CODE             <> '' AND ACCOUNT_ECA_CLASS_CODE             IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_ECA_CLASS_CODE         , '0')                                       ) src LEFT JOIN REP.DIM_ECA_CLASS            min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_ECA_CLASS_CODE          = min_Dim_Tbl.ECA_CLASS_CODE                                                              WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.ECA_CLASS_CODE          IS NULL 
INSERT INTO REP.DIM_FINREP_CLASS           (ENTITY_CODE, FINREP_CLASS_CODE              ) SELECT src.ENTITY_CODE, src.ACCOUNT_FINREP_CLASS_CODE                         FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_FINREP_CLASS_CODE      , '0') ACCOUNT_FINREP_CLASS_CODE                                                           FROM STG.T_ACCOUNT WHERE ACCOUNT_FINREP_CLASS_CODE          <> '' AND ACCOUNT_FINREP_CLASS_CODE          IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_FINREP_CLASS_CODE      , '0')                                       ) src LEFT JOIN REP.DIM_FINREP_CLASS         min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_FINREP_CLASS_CODE       = min_Dim_Tbl.FINREP_CLASS_CODE                                                           WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.FINREP_CLASS_CODE       IS NULL 
INSERT INTO REP.DIM_FINREP_SUB_CLASS       (ENTITY_CODE, FINREP_SUB_CLASS_CODE          ) SELECT src.ENTITY_CODE, src.ACCOUNT_FINREP_SUB_CLASS_CODE                     FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_FINREP_SUB_CLASS_CODE  , '0') ACCOUNT_FINREP_SUB_CLASS_CODE                                                       FROM STG.T_ACCOUNT WHERE ACCOUNT_FINREP_SUB_CLASS_CODE      <> '' AND ACCOUNT_FINREP_SUB_CLASS_CODE      IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_FINREP_SUB_CLASS_CODE  , '0')                                       ) src LEFT JOIN REP.DIM_FINREP_SUB_CLASS     min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_FINREP_SUB_CLASS_CODE   = min_Dim_Tbl.FINREP_SUB_CLASS_CODE                                                       WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.FINREP_SUB_CLASS_CODE   IS NULL 
INSERT INTO REP.DIM_FORBEARANCE_TYPE       (ENTITY_CODE, FORBEARANCE_TYPE_CODE          ) SELECT src.ENTITY_CODE, src.ACCOUNT_FORBEARANCE_TYPE_CODE                     FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_FORBEARANCE_TYPE_CODE  , '0') ACCOUNT_FORBEARANCE_TYPE_CODE                                                       FROM STG.T_ACCOUNT WHERE ACCOUNT_FORBEARANCE_TYPE_CODE      <> '' AND ACCOUNT_FORBEARANCE_TYPE_CODE      IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_FORBEARANCE_TYPE_CODE  , '0')                                       ) src LEFT JOIN REP.DIM_FORBEARANCE_TYPE     min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_FORBEARANCE_TYPE_CODE   = min_Dim_Tbl.FORBEARANCE_TYPE_CODE                                                       WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.FORBEARANCE_TYPE_CODE   IS NULL 
INSERT INTO REP.DIM_FPL_UNDER_PRB_FLAG     (ENTITY_CODE, FPL_UNDER_PRB_FLAG_CODE        ) SELECT src.ENTITY_CODE, src.ACCOUNT_FPL_UNDER_PRB_FLAG_CODE                   FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_FPL_UNDER_PRB_FLAG_CODE, '0') ACCOUNT_FPL_UNDER_PRB_FLAG_CODE                                                     FROM STG.T_ACCOUNT WHERE ACCOUNT_FPL_UNDER_PRB_FLAG_CODE    <> '' AND ACCOUNT_FPL_UNDER_PRB_FLAG_CODE    IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_FPL_UNDER_PRB_FLAG_CODE, '0')                                       ) src LEFT JOIN REP.DIM_FPL_UNDER_PRB_FLAG   min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_FPL_UNDER_PRB_FLAG_CODE = min_Dim_Tbl.FPL_UNDER_PRB_FLAG_CODE                                                     WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.FPL_UNDER_PRB_FLAG_CODE IS NULL 
INSERT INTO REP.DIM_FUNDING                (ENTITY_CODE, FUNDING_CODE                   ) SELECT src.ENTITY_CODE, src.ACCOUNT_FUNDING_CODE                              FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_FUNDING_CODE           , '0') ACCOUNT_FUNDING_CODE                                                                FROM STG.T_ACCOUNT WHERE ACCOUNT_FUNDING_CODE               <> '' AND ACCOUNT_FUNDING_CODE               IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_FUNDING_CODE           , '0')                                       ) src LEFT JOIN REP.DIM_FUNDING              min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_FUNDING_CODE            = min_Dim_Tbl.FUNDING_CODE                                                                WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.FUNDING_CODE            IS NULL 
INSERT INTO REP.DIM_HFS                    (ENTITY_CODE, HFS_CODE                       ) SELECT src.ENTITY_CODE, src.ACCOUNT_HFS_CODE                                  FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_HFS_CODE               , '0') ACCOUNT_HFS_CODE                                                                    FROM STG.T_ACCOUNT WHERE ACCOUNT_HFS_CODE                   <> '' AND ACCOUNT_HFS_CODE                   IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_HFS_CODE               , '0')                                       ) src LEFT JOIN REP.DIM_HFS                  min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_HFS_CODE                = min_Dim_Tbl.HFS_CODE                                                                    WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.HFS_CODE                IS NULL 
INSERT INTO REP.DIM_IFRS_CLASS             (ENTITY_CODE, IFRS_CLASS_CODE                ) SELECT src.ENTITY_CODE, src.ACCOUNT_IFRS_CLASS_CODE                           FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_IFRS_CLASS_CODE        , '0') ACCOUNT_IFRS_CLASS_CODE                                                             FROM STG.T_ACCOUNT WHERE ACCOUNT_IFRS_CLASS_CODE            <> '' AND ACCOUNT_IFRS_CLASS_CODE            IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_IFRS_CLASS_CODE        , '0')                                       ) src LEFT JOIN REP.DIM_IFRS_CLASS           min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_IFRS_CLASS_CODE         = min_Dim_Tbl.IFRS_CLASS_CODE                                                             WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.IFRS_CLASS_CODE         IS NULL 
INSERT INTO REP.DIM_IFRS_NPL_FLAG          (ENTITY_CODE, IFRS_NPL_FLAG_CODE             ) SELECT src.ENTITY_CODE, src.ACCOUNT_IFRS_NPL_FLAG_CODE                        FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_IFRS_NPL_FLAG_CODE     , '0') ACCOUNT_IFRS_NPL_FLAG_CODE                                                          FROM STG.T_ACCOUNT WHERE ACCOUNT_IFRS_NPL_FLAG_CODE         <> '' AND ACCOUNT_IFRS_NPL_FLAG_CODE         IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_IFRS_NPL_FLAG_CODE     , '0')                                       ) src LEFT JOIN REP.DIM_IFRS_NPL_FLAG        min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_IFRS_NPL_FLAG_CODE      = min_Dim_Tbl.IFRS_NPL_FLAG_CODE                                                          WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.IFRS_NPL_FLAG_CODE      IS NULL 
INSERT INTO REP.DIM_IMPAIRMENT_TYPE        (ENTITY_CODE, IMPAIRMENT_TYPE_CODE           ) SELECT src.ENTITY_CODE, src.ACCOUNT_IMPAIRMENT_TYPE_CODE                      FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_IMPAIRMENT_TYPE_CODE   , '0') ACCOUNT_IMPAIRMENT_TYPE_CODE                                                        FROM STG.T_ACCOUNT WHERE ACCOUNT_IMPAIRMENT_TYPE_CODE       <> '' AND ACCOUNT_IMPAIRMENT_TYPE_CODE       IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_IMPAIRMENT_TYPE_CODE   , '0')                                       ) src LEFT JOIN REP.DIM_IMPAIRMENT_TYPE      min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_IMPAIRMENT_TYPE_CODE    = min_Dim_Tbl.IMPAIRMENT_TYPE_CODE                                                        WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.IMPAIRMENT_TYPE_CODE    IS NULL 
INSERT INTO REP.DIM_LOAN_BUCKET            (ENTITY_CODE, LOAN_BUCKET_CODE               ) SELECT src.ENTITY_CODE, src.ACCOUNT_LOAN_BUCKET_CODE                          FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_LOAN_BUCKET_CODE       , '0') ACCOUNT_LOAN_BUCKET_CODE                                                            FROM STG.T_ACCOUNT WHERE ACCOUNT_LOAN_BUCKET_CODE           <> '' AND ACCOUNT_LOAN_BUCKET_CODE           IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_LOAN_BUCKET_CODE       , '0')                                       ) src LEFT JOIN REP.DIM_LOAN_BUCKET          min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_LOAN_BUCKET_CODE        = min_Dim_Tbl.LOAN_BUCKET_CODE                                                            WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.LOAN_BUCKET_CODE        IS NULL 
INSERT INTO REP.DIM_LOAN_CLASS             (ENTITY_CODE, LOAN_CLASS_CODE                ) SELECT src.ENTITY_CODE, src.ACCOUNT_LOAN_CLASS_CODE                           FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_LOAN_CLASS_CODE        , '0') ACCOUNT_LOAN_CLASS_CODE                                                             FROM STG.T_ACCOUNT WHERE ACCOUNT_LOAN_CLASS_CODE            <> '' AND ACCOUNT_LOAN_CLASS_CODE            IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_LOAN_CLASS_CODE        , '0')                                       ) src LEFT JOIN REP.DIM_LOAN_CLASS           min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_LOAN_CLASS_CODE         = min_Dim_Tbl.LOAN_CLASS_CODE                                                             WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.LOAN_CLASS_CODE         IS NULL 
INSERT INTO REP.DIM_LOAN_GUARANTEE         (ENTITY_CODE, LOAN_GUARANTEE_CODE            ) SELECT src.ENTITY_CODE, src.ACCOUNT_LOAN_GUARANTEE_CODE                       FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_LOAN_GUARANTEE_CODE    , '0') ACCOUNT_LOAN_GUARANTEE_CODE                                                         FROM STG.T_ACCOUNT WHERE ACCOUNT_LOAN_GUARANTEE_CODE        <> '' AND ACCOUNT_LOAN_GUARANTEE_CODE        IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_LOAN_GUARANTEE_CODE    , '0')                                       ) src LEFT JOIN REP.DIM_LOAN_GUARANTEE       min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_LOAN_GUARANTEE_CODE     = min_Dim_Tbl.LOAN_GUARANTEE_CODE                                                         WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.LOAN_GUARANTEE_CODE     IS NULL 
INSERT INTO REP.DIM_LOAN_SERVICE_TYPE      (ENTITY_CODE, LOAN_SERVICE_TYPE_CODE         ) SELECT src.ENTITY_CODE, src.ACCOUNT_LOAN_SERVICE_TYPE_CODE                    FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_LOAN_SERVICE_TYPE_CODE , '0') ACCOUNT_LOAN_SERVICE_TYPE_CODE                                                      FROM STG.T_ACCOUNT WHERE ACCOUNT_LOAN_SERVICE_TYPE_CODE     <> '' AND ACCOUNT_LOAN_SERVICE_TYPE_CODE     IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_LOAN_SERVICE_TYPE_CODE , '0')                                       ) src LEFT JOIN REP.DIM_LOAN_SERVICE_TYPE    min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_LOAN_SERVICE_TYPE_CODE  = min_Dim_Tbl.LOAN_SERVICE_TYPE_CODE                                                      WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.LOAN_SERVICE_TYPE_CODE  IS NULL 
INSERT INTO REP.DIM_LOAN_STAGE             (ENTITY_CODE, LOAN_STAGE_CODE                ) SELECT src.ENTITY_CODE, src.ACCOUNT_LOAN_STAGE_CODE                           FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_LOAN_STAGE_CODE        , '0') ACCOUNT_LOAN_STAGE_CODE                                                             FROM STG.T_ACCOUNT WHERE ACCOUNT_LOAN_STAGE_CODE            <> '' AND ACCOUNT_LOAN_STAGE_CODE            IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_LOAN_STAGE_CODE        , '0')                                       ) src LEFT JOIN REP.DIM_LOAN_STAGE           min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_LOAN_STAGE_CODE         = min_Dim_Tbl.LOAN_STAGE_CODE                                                             WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.LOAN_STAGE_CODE         IS NULL 
INSERT INTO REP.DIM_MIS_PRODUCT            (ENTITY_CODE, MIS_PRODUCT_CODE               ) SELECT src.ENTITY_CODE, src.ACCOUNT_MIS_PRODUCT_CODE                          FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_MIS_PRODUCT_CODE       , '0') ACCOUNT_MIS_PRODUCT_CODE                                                            FROM STG.T_ACCOUNT WHERE ACCOUNT_MIS_PRODUCT_CODE           <> '' AND ACCOUNT_MIS_PRODUCT_CODE           IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_MIS_PRODUCT_CODE       , '0')                                       ) src LEFT JOIN REP.DIM_MIS_PRODUCT          min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_MIS_PRODUCT_CODE        = min_Dim_Tbl.MIS_PRODUCT_CODE                                                            WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.MIS_PRODUCT_CODE        IS NULL 
INSERT INTO REP.DIM_MODIFICATION_TYPE      (ENTITY_CODE, MODIFICATION_TYPE_CODE         ) SELECT src.ENTITY_CODE, src.ACCOUNT_MODIFICATION_TYPE_CODE                    FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_MODIFICATION_TYPE_CODE , '0') ACCOUNT_MODIFICATION_TYPE_CODE                                                      FROM STG.T_ACCOUNT WHERE ACCOUNT_MODIFICATION_TYPE_CODE     <> '' AND ACCOUNT_MODIFICATION_TYPE_CODE     IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_MODIFICATION_TYPE_CODE , '0')                                       ) src LEFT JOIN REP.DIM_MODIFICATION_TYPE    min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_MODIFICATION_TYPE_CODE  = min_Dim_Tbl.MODIFICATION_TYPE_CODE                                                      WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.MODIFICATION_TYPE_CODE  IS NULL 
INSERT INTO REP.DIM_NETWORK                (ENTITY_CODE, NETWORK_CODE                   ) SELECT src.ENTITY_CODE, src.ACCOUNT_NETWORK_CODE                              FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_NETWORK_CODE           , '0') ACCOUNT_NETWORK_CODE                                                                FROM STG.T_ACCOUNT WHERE ACCOUNT_NETWORK_CODE               <> '' AND ACCOUNT_NETWORK_CODE               IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_NETWORK_CODE           , '0')                                       ) src LEFT JOIN REP.DIM_NETWORK              min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_NETWORK_CODE            = min_Dim_Tbl.NETWORK_CODE                                                                WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.NETWORK_CODE            IS NULL 
INSERT INTO REP.DIM_PAYMENT_TYPE           (ENTITY_CODE, PAYMENT_TYPE_CODE              ) SELECT src.ENTITY_CODE, src.ACCOUNT_PAYMENT_TYPE_CODE                         FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_PAYMENT_TYPE_CODE      , '0') ACCOUNT_PAYMENT_TYPE_CODE                                                           FROM STG.T_ACCOUNT WHERE ACCOUNT_PAYMENT_TYPE_CODE          <> '' AND ACCOUNT_PAYMENT_TYPE_CODE          IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_PAYMENT_TYPE_CODE      , '0')                                       ) src LEFT JOIN REP.DIM_PAYMENT_TYPE         min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_PAYMENT_TYPE_CODE       = min_Dim_Tbl.PAYMENT_TYPE_CODE                                                           WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.PAYMENT_TYPE_CODE       IS NULL 
INSERT INTO REP.DIM_POCI_FLAG              (ENTITY_CODE, POCI_FLAG_CODE                 ) SELECT src.ENTITY_CODE, src.ACCOUNT_POCI_FLAG_CODE                            FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_POCI_FLAG_CODE         , '0') ACCOUNT_POCI_FLAG_CODE                                                              FROM STG.T_ACCOUNT WHERE ACCOUNT_POCI_FLAG_CODE             <> '' AND ACCOUNT_POCI_FLAG_CODE             IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_POCI_FLAG_CODE         , '0')                                       ) src LEFT JOIN REP.DIM_POCI_FLAG            min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_POCI_FLAG_CODE          = min_Dim_Tbl.POCI_FLAG_CODE                                                              WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.POCI_FLAG_CODE          IS NULL 
INSERT INTO REP.DIM_PRODUCT                (ENTITY_CODE, PRODUCT_CODE,  PRODUCT_SOURCE  ) SELECT src.ENTITY_CODE, src.ACCOUNT_PRODUCT_CODE, src.ACCOUNT_PRODUCT_SOURCE  FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_PRODUCT_CODE           , '0') ACCOUNT_PRODUCT_CODE, ISNULL(ACCOUNT_PRODUCT_SOURCE, '0') ACCOUNT_PRODUCT_SOURCE    FROM STG.T_ACCOUNT WHERE ACCOUNT_PRODUCT_CODE               <> '' AND ACCOUNT_PRODUCT_CODE               IS NOT NULL  AND ACCOUNT_PRODUCT_SOURCE <> '' AND ACCOUNT_PRODUCT_SOURCE IS NOT NULL GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_PRODUCT_CODE           , '0') , ISNULL(ACCOUNT_PRODUCT_SOURCE, '0') ) src LEFT JOIN REP.DIM_PRODUCT              min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_PRODUCT_CODE            = min_Dim_Tbl.PRODUCT_CODE AND src.ACCOUNT_PRODUCT_SOURCE = min_Dim_Tbl.PRODUCT_SOURCE    WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.PRODUCT_CODE            IS NULL AND min_Dim_Tbl.PRODUCT_SOURCE IS NULL
INSERT INTO REP.DIM_RATE_TYPE              (ENTITY_CODE, RATE_TYPE_CODE                 ) SELECT src.ENTITY_CODE, src.ACCOUNT_RATE_TYPE_CODE                            FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_RATE_TYPE_CODE         , '0') ACCOUNT_RATE_TYPE_CODE                                                              FROM STG.T_ACCOUNT WHERE ACCOUNT_RATE_TYPE_CODE             <> '' AND ACCOUNT_RATE_TYPE_CODE             IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_RATE_TYPE_CODE         , '0')                                       ) src LEFT JOIN REP.DIM_RATE_TYPE            min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_RATE_TYPE_CODE          = min_Dim_Tbl.RATE_TYPE_CODE                                                              WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.RATE_TYPE_CODE          IS NULL 
INSERT INTO REP.DIM_REPRICE_INDEX          (ENTITY_CODE, REPRICE_INDEX_CODE             ) SELECT src.ENTITY_CODE, src.ACCOUNT_REPRICE_INDEX_CODE                        FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_REPRICE_INDEX_CODE     , '0') ACCOUNT_REPRICE_INDEX_CODE                                                          FROM STG.T_ACCOUNT WHERE ACCOUNT_REPRICE_INDEX_CODE         <> '' AND ACCOUNT_REPRICE_INDEX_CODE         IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_REPRICE_INDEX_CODE     , '0')                                       ) src LEFT JOIN REP.DIM_REPRICE_INDEX        min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_REPRICE_INDEX_CODE      = min_Dim_Tbl.REPRICE_INDEX_CODE                                                          WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.REPRICE_INDEX_CODE      IS NULL 
INSERT INTO REP.DIM_RISK_PRODUCT           (ENTITY_CODE, RISK_PRODUCT_CODE              ) SELECT src.ENTITY_CODE, src.ACCOUNT_RISK_PRODUCT_CODE                         FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_RISK_PRODUCT_CODE      , '0') ACCOUNT_RISK_PRODUCT_CODE                                                           FROM STG.T_ACCOUNT WHERE ACCOUNT_RISK_PRODUCT_CODE          <> '' AND ACCOUNT_RISK_PRODUCT_CODE          IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_RISK_PRODUCT_CODE      , '0')                                       ) src LEFT JOIN REP.DIM_RISK_PRODUCT         min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_RISK_PRODUCT_CODE       = min_Dim_Tbl.RISK_PRODUCT_CODE                                                           WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.RISK_PRODUCT_CODE       IS NULL 
INSERT INTO REP.DIM_STATUS                 (ENTITY_CODE, STATUS_CODE                    ) SELECT src.ENTITY_CODE, src.ACCOUNT_STATUS_CODE                               FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_STATUS_CODE            , '0') ACCOUNT_STATUS_CODE                                                                 FROM STG.T_ACCOUNT WHERE ACCOUNT_STATUS_CODE                <> '' AND ACCOUNT_STATUS_CODE                IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_STATUS_CODE            , '0')                                       ) src LEFT JOIN REP.DIM_STATUS               min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_STATUS_CODE             = min_Dim_Tbl.STATUS_CODE                                                                 WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.STATUS_CODE             IS NULL 
INSERT INTO REP.DIM_TD_DURATION            (ENTITY_CODE, TD_DURATION_CODE               ) SELECT src.ENTITY_CODE, src.ACCOUNT_TD_DURATION_CODE                          FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_TD_DURATION_CODE       , '0') ACCOUNT_TD_DURATION_CODE                                                            FROM STG.T_ACCOUNT WHERE ACCOUNT_TD_DURATION_CODE           <> '' AND ACCOUNT_TD_DURATION_CODE           IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_TD_DURATION_CODE       , '0')                                       ) src LEFT JOIN REP.DIM_TD_DURATION          min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_TD_DURATION_CODE        = min_Dim_Tbl.TD_DURATION_CODE                                                            WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.TD_DURATION_CODE        IS NULL 
INSERT INTO REP.DIM_UNSECURED_FLAG         (ENTITY_CODE, UNSECURED_FLAG_CODE            ) SELECT src.ENTITY_CODE, src.ACCOUNT_UNSECURED_FLAG_CODE                       FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_UNSECURED_FLAG_CODE    , '0') ACCOUNT_UNSECURED_FLAG_CODE                                                         FROM STG.T_ACCOUNT WHERE ACCOUNT_UNSECURED_FLAG_CODE        <> '' AND ACCOUNT_UNSECURED_FLAG_CODE        IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_UNSECURED_FLAG_CODE    , '0')                                       ) src LEFT JOIN REP.DIM_UNSECURED_FLAG       min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_UNSECURED_FLAG_CODE     = min_Dim_Tbl.UNSECURED_FLAG_CODE                                                         WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.UNSECURED_FLAG_CODE     IS NULL 
INSERT INTO REP.DIM_IFRS9_CLASS            (ENTITY_CODE, IFRS9_CLASS_CODE               ) SELECT src.ENTITY_CODE, src.ACCOUNT_IFRS9_CLASS_CODE                          FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_IFRS9_CLASS_CODE       , '0') ACCOUNT_IFRS9_CLASS_CODE                                                            FROM STG.T_ACCOUNT WHERE ACCOUNT_IFRS9_CLASS_CODE           <> '' AND ACCOUNT_IFRS9_CLASS_CODE           IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_IFRS9_CLASS_CODE       , '0')                                       ) src LEFT JOIN REP.DIM_IFRS9_CLASS          min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_IFRS9_CLASS_CODE        = min_Dim_Tbl.IFRS9_CLASS_CODE                                                            WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.IFRS9_CLASS_CODE        IS NULL 
INSERT INTO REP.DIM_ECA_INDUSTRY           (ENTITY_CODE, ECA_INDUSTRY_CODE              ) SELECT src.ENTITY_CODE, src.ACCOUNT_ECA_INDUSTRY_CODE                         FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_ECA_INDUSTRY_CODE      , '0') ACCOUNT_ECA_INDUSTRY_CODE                                                           FROM STG.T_ACCOUNT WHERE ACCOUNT_ECA_INDUSTRY_CODE          <> '' AND ACCOUNT_ECA_INDUSTRY_CODE          IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_ECA_INDUSTRY_CODE      , '0')                                       ) src LEFT JOIN REP.DIM_ECA_INDUSTRY         min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_ECA_INDUSTRY_CODE       = min_Dim_Tbl.ECA_INDUSTRY_CODE                                                           WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.ECA_INDUSTRY_CODE       IS NULL 
INSERT INTO REP.DIM_FINREP_INDUSTRY        (ENTITY_CODE, FINREP_INDUSTRY_CODE           ) SELECT src.ENTITY_CODE, src.ACCOUNT_FINREP_INDUSTRY_CODE                      FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_FINREP_INDUSTRY_CODE   , '0') ACCOUNT_FINREP_INDUSTRY_CODE                                                        FROM STG.T_ACCOUNT WHERE ACCOUNT_FINREP_INDUSTRY_CODE       <> '' AND ACCOUNT_FINREP_INDUSTRY_CODE       IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_FINREP_INDUSTRY_CODE   , '0')                                       ) src LEFT JOIN REP.DIM_FINREP_INDUSTRY      min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_FINREP_INDUSTRY_CODE    = min_Dim_Tbl.FINREP_INDUSTRY_CODE                                                        WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.FINREP_INDUSTRY_CODE    IS NULL 
INSERT INTO REP.DIM_IFRS_INDUSTRY          (ENTITY_CODE, IFRS_INDUSTRY_CODE             ) SELECT src.ENTITY_CODE, src.ACCOUNT_IFRS_INDUSTRY_CODE                        FROM (SELECT ISNULL(ENTITY_CODE, '0') ENTITY_CODE, ISNULL(ACCOUNT_IFRS_INDUSTRY_CODE     , '0') ACCOUNT_IFRS_INDUSTRY_CODE                                                          FROM STG.T_ACCOUNT WHERE ACCOUNT_IFRS_INDUSTRY_CODE         <> '' AND ACCOUNT_IFRS_INDUSTRY_CODE         IS NOT NULL                                                                          GROUP BY ISNULL(ENTITY_CODE, '0'), ISNULL(ACCOUNT_IFRS_INDUSTRY_CODE     , '0')                                       ) src LEFT JOIN REP.DIM_IFRS_INDUSTRY        min_Dim_Tbl ON src.ENTITY_CODE = min_Dim_Tbl.ENTITY_CODE AND src.ACCOUNT_IFRS_INDUSTRY_CODE      = min_Dim_Tbl.IFRS_INDUSTRY_CODE                                                          WHERE min_Dim_Tbl.ENTITY_CODE IS NULL AND min_Dim_Tbl.IFRS_INDUSTRY_CODE      IS NULL 



INSERT INTO REP.DIM_ACCOUNT ( 
	   DIM_PERIOD_ID
	 , ACCOUNT_CODE
	 , ENTITY_CODE
	 , ACCOUNT_GL_ACCOUNT_TYPE_CODE
)
SELECT
	   DIM_REF_PERIOD.DIM_PERIOD_ID
	 , src.ACCOUNT_CODE
	 , src.ENTITY_CODE
	 , src.ACCOUNT_GL_ACCOUNT_TYPE_CODE 
FROM REP.FACT_CLIENT_REF_DATE DIM_REF_PERIOD, STG.T_ACCOUNT src
	 LEFT JOIN REP.DIM_ACCOUNT trg ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.ACCOUNT_CODE = trg.ACCOUNT_CODE AND src.ACCOUNT_GL_ACCOUNT_TYPE_CODE = trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE
WHERE 
	  trg.ACCOUNT_CODE IS NULL


TRUNCATE TABLE REP.DIM_ACCOUNT_T
INSERT INTO REP.DIM_ACCOUNT_T (	
	  DIM_ACCOUNT_ID
	, DIM_PERIOD_ID
	, ACCOUNT_CODE
	, ENTITY_CODE
	, ACCOUNT_GL_ACCOUNT_TYPE_CODE
	, ACCOUNT_GL_ACCOUNT_GROUP
	, ACCOUNT_CLIENT_CODE
	, ACCOUNT_CURRENCY_ISO
	, ACCOUNT_ACCRUAL_BASIS_CODE
	, ACCOUNT_ACCRUAL_BASIS_DESC
	, ACCOUNT_BRANCH_CODE
	, ACCOUNT_BRANCH_DESC
	, ACCOUNT_BRANCH_TYPE_CODE
	, ACCOUNT_BRANCH_TYPE_DESC
	, ACCOUNT_BRANCH_AREA_CODE
	, ACCOUNT_BRANCH_AREA_DESC
	, ACCOUNT_MIS_PRODUCT_CODE
	, ACCOUNT_MIS_PRODUCT_DESC
	, ACCOUNT_DWH_PRODUCT_CODE
	, ACCOUNT_DWH_PRODUCT_DESC
	, ACCOUNT_DWH_PRODUCT_LVL_1_CODE
	, ACCOUNT_DWH_PRODUCT_LVL_1_DESC
	, ACCOUNT_DWH_PRODUCT_LVL_2_CODE
	, ACCOUNT_DWH_PRODUCT_LVL_2_DESC
	, ACCOUNT_DWH_PRODUCT_LVL_3_CODE
	, ACCOUNT_DWH_PRODUCT_LVL_3_DESC
	, ACCOUNT_EBA_FLAG_CODE
	, ACCOUNT_EBA_FLAG_DESC
	, ACCOUNT_ECA_CLASS_CODE
	, ACCOUNT_ECA_CLASS_DESC
	, ACCOUNT_ECA_CLASS_GROUP
	, ACCOUNT_CRE_FLAG_CODE
	, ACCOUNT_CRE_FLAG_DESC
	, ACCOUNT_DENOUNCED_FLAG_CODE
	, ACCOUNT_DENOUNCED_FLAG_DESC
	, ACCOUNT_FINREP_CLASS_CODE
	, ACCOUNT_FINREP_CLASS_DESC
	, ACCOUNT_FINREP_SUB_CLASS_CODE
	, ACCOUNT_FINREP_SUB_CLASS_DESC
	, ACCOUNT_FORBEARANCE_TYPE_CODE
	, ACCOUNT_FORBEARANCE_TYPE_DESC
	, ACCOUNT_FPL_UNDER_PRB_FLAG_CODE
	, ACCOUNT_FPL_UNDER_PRB_FLAG_DESC
	, ACCOUNT_FUNDING_CODE
	, ACCOUNT_FUNDING_DESC
	, ACCOUNT_HFS_CODE
	, ACCOUNT_HFS_DESC
	, ACCOUNT_LOAN_BUCKET_CODE
	, ACCOUNT_LOAN_BUCKET_DESC
	, ACCOUNT_LOAN_CLASS_CODE
	, ACCOUNT_LOAN_CLASS_DESC
	, ACCOUNT_LOAN_GUARANTEE_CODE
	, ACCOUNT_LOAN_GUARANTEE_DESC
	, ACCOUNT_LOAN_SERVICE_TYPE_CODE
	, ACCOUNT_LOAN_SERVICE_TYPE_DESC
	, ACCOUNT_LOAN_STAGE_CODE
	, ACCOUNT_LOAN_STAGE_DESC
	, ACCOUNT_IFRS_CLASS_CODE
	, ACCOUNT_IFRS_CLASS_DESC
	, ACCOUNT_IFRS_NPL_FLAG_CODE
	, ACCOUNT_IFRS_NPL_FLAG_DESC
	, ACCOUNT_IMPAIRMENT_TYPE_CODE
	, ACCOUNT_IMPAIRMENT_TYPE_DESC
	, ACCOUNT_STATUS_CODE
	, ACCOUNT_STATUS_DESC
	, ACCOUNT_MODIFICATION_TYPE_CODE
	, ACCOUNT_MODIFICATION_TYPE_DESC
	, ACCOUNT_MODIFICATION_FLAG
	, ACCOUNT_NETWORK_CODE
	, ACCOUNT_NETWORK_DESC
	, ACCOUNT_PAYMENT_TYPE_CODE
	, ACCOUNT_PAYMENT_TYPE_DESC
	, ACCOUNT_POCI_FLAG_CODE
	, ACCOUNT_POCI_FLAG_DESC
	, ACCOUNT_RISK_PRODUCT_CODE
	, ACCOUNT_RISK_PRODUCT_DESC
	, ACCOUNT_TD_DURATION_CODE
	, ACCOUNT_TD_DURATION_DESC
	, ACCOUNT_TD_DURATION_GROUP
	, ACCOUNT_UNSECURED_FLAG_CODE
	, ACCOUNT_UNSECURED_FLAG_DESC
	, ACCOUNT_IFRS9_CLASS_CODE
	, ACCOUNT_IFRS9_CLASS_DESC
    , ACCOUNT_ECA_INDUSTRY_CODE     
    , ACCOUNT_ECA_INDUSTRY_DESC     
    , ACCOUNT_FINREP_INDUSTRY_CODE  
    , ACCOUNT_FINREP_INDUSTRY_DESC  
    , ACCOUNT_IFRS_INDUSTRY_CODE    
    , ACCOUNT_IFRS_INDUSTRY_DESC    
	, ACCOUNT_PRODUCT_CODE
	, ACCOUNT_PRODUCT_SOURCE
	, ACCOUNT_PRODUCT_DESC
	, ACCOUNT_REPRICE_INDEX_CODE
	, ACCOUNT_REPRICE_INDEX_DESC
	, ACCOUNT_RATE_TYPE_CODE
	, ACCOUNT_RATE_TYPE_DESC
	, ACCOUNT_RATE_TYPE_GROUP
	, ACCOUNT_IS_STAFF
	, ACCOUNT_WITHOUT_MLT
	, ACCOUNT_ORIGINATION_DATE
	, ACCOUNT_MATURITY_DATE
	, ACCOUNT_PREVIOUS_REPRICE_DATE
	, ACCOUNT_NEXT_REPRICE_DATE
	, ACCOUNT_ORIGINAL_BALANCE_EUR
	, ACCOUNT_ORIGINAL_BALANCE_FX
	, ACCOUNT_ORIGINAL_DURATION
	, ACCOUNT_REAL_CLOSE_DATE
	, ACCOUNT_MODIFICATION_DATE
	, ACCOUNT_FTP_START_DATE
	, ACCOUNT_FTP_END_DATE
	, ACCOUNT_FTP_DURATION
	, ACCOUNT_FTP_ORIGINATION_DATE
	, ACCOUNT_FTP_MATURITY_DATE
	, ACCOUNT_FTP_PREVIOUS_REPRICE_DATE
	, ACCOUNT_FTP_NEXT_REPRICE_DATE
	, ACCOUNT_FTP_BASE_RATE_CODE
	, ACCOUNT_FTP_D_BASE_RATE_CODE
	, ACCOUNT_FTP_AMOUNT_BUCKET_CODE
	, ACCOUNT_FTP_AMOUNT_BUCKET_DESC
	, ACCOUNT_FTP_AMOUNT_BUCKET_FROM
	, ACCOUNT_FTP_AMOUNT_BUCKET_TO
	, ACCOUNT_FTP_MATURITY_BUCKET_CODE
	, ACCOUNT_FTP_MATURITY_BUCKET_DESC
	, ACCOUNT_FTP_MATURITY_BUCKET_FROM
	, ACCOUNT_FTP_MATURITY_BUCKET_TO
	, ACCOUNT_RTE_ECL
	, ACCOUNT_RTE_NII_NOMINAL
	, ACCOUNT_RTE_NII_EIR
	, ACCOUNT_RTE_NII_LAW128
	, ACCOUNT_RTE_NII_RR
	, ACCOUNT_RTE_NII_BASE
	, ACCOUNT_RTE_NII_D_BASE
	, ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD
	, ACCOUNT_RTE_NII_MATURITY_SPREAD
	, ACCOUNT_RTE_NII_AMOUNT_SPREAD
	, ACCOUNT_RTE_NII_FINANCING_COST_SPREAD
	, ACCOUNT_RTE_NII_TREASURY_SPREAD
	, ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE
	, ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER
	, ACCOUNT_RTE_NII_COST_OF_RESERVES
	, ACCOUNT_RTE_NII_CFR
	, ACCOUNT_RTE_NII_MFR
	, ACCOUNT_RTE_NII_ABR
	, ACCOUNT_GL_ACCOUNT_TYPE_ID
	, ACCOUNT_FINREP_INDUSTRY_ID
	, ACCOUNT_IFRS_INDUSTRY_ID
	, ACCOUNT_ECA_INDUSTRY_ID
	, ACCOUNT_IFRS9_CLASS_ID
	, ACCOUNT_TD_DURATION_ID
	, ACCOUNT_IFRS_CLASS_ID
	, ACCOUNT_FINREP_SUB_CLASS_ID
	, ACCOUNT_IMPAIRMENT_TYPE_ID
	, ACCOUNT_STATUS_ID
	, ACCOUNT_ECA_CLASS_ID
	, ACCOUNT_CRE_FLAG_ID
	, ACCOUNT_UNSECURED_FLAG_ID
	, ACCOUNT_RATE_TYPE_ID
	, ACCOUNT_PAYMENT_TYPE_ID
	, ACCOUNT_LOAN_STAGE_ID
	, ACCOUNT_FPL_UNDER_PRB_FLAG_ID
	, ACCOUNT_IFRS_NPL_FLAG_ID
	, ACCOUNT_POCI_FLAG_ID
	, ACCOUNT_DENOUNCED_FLAG_ID
	, ACCOUNT_LOAN_BUCKET_ID
	, ACCOUNT_LOAN_CLASS_ID
	, ACCOUNT_HFS_ID
	, ACCOUNT_FINREP_CLASS_ID
	, ACCOUNT_MODIFICATION_TYPE_ID
	, ACCOUNT_REPRICE_INDEX_ID
	, ACCOUNT_ACCRUAL_BASIS_ID
	, ACCOUNT_EBA_FLAG_ID
	, ACCOUNT_FUNDING_ID
	, ACCOUNT_LOAN_GUARANTEE_ID
	, ACCOUNT_FTP_AMOUNT_BUCKET_ID
	, ACCOUNT_LOAN_SERVICE_TYPE_ID
	, ACCOUNT_FTP_MATURITY_BUCKET_ID
	, ACCOUNT_FORBEARANCE_TYPE_ID
	, ACCOUNT_MIS_PRODUCT_ID
	, ACCOUNT_RISK_PRODUCT_ID
	, ACCOUNT_DWH_PRODUCT_ID
	, ACCOUNT_PRODUCT_ID
	, ACCOUNT_NETWORK_ID
	, ACCOUNT_BRANCH_ID
	, ACCOUNT_BRANCH_TYPE_ID
	, ACCOUNT_RTE_RWA
	, ACCOUNT_ORIGINAL_CODE
	, ACCOUNT_INITIAL_RECOGNITION_DATE
	, ACCOUNT_RTE_NII_SPREAD
	, ACCOUNT_RTE_NII_ECB_MRO
    , ACCOUNT_RTE_NII_ECB_PL
    , ACCOUNT_RTE_NII_ECB_DISC
	, ACCOUNT_FTP_AVG_LIFE
	, ACCOUNT_FTP_PRICING_DURATION
	, ACCOUNT_FTP_MATURITY_DURATION

)	
SELECT											
	  trg.DIM_ACCOUNT_ID										
	, DIM_REF_PERIOD.DIM_PERIOD_ID										
	, trg.ACCOUNT_CODE										
	, trg.ENTITY_CODE										
	, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE										
	, '' GL_ACCOUNT_GROUP										
	, ISNULL(src.ACCOUNT_CLIENT_CODE                             , trg.ACCOUNT_CLIENT_CODE              ) ACCOUNT_CLIENT_CODE                        
    , ISNULL(src.ACCOUNT_CURRENCY_ISO                            , trg.ACCOUNT_CURRENCY_ISO                   ) ACCOUNT_CURRENCY_ISO                       
    , ISNULL(src.ACCOUNT_ACCRUAL_BASIS_CODE                      , trg.ACCOUNT_ACCRUAL_BASIS_CODE              ) ACCOUNT_ACCRUAL_BASIS_CODE                 
	, '' ACCRUAL_BASIS_DESC										
    , ISNULL(src.ACCOUNT_BRANCH_CODE                             , trg.ACCOUNT_BRANCH_CODE                   ) ACCOUNT_BRANCH_CODE                        
	, '' BRANCH_DESC										
	, '' BRANCH_TYPE_CODE										
	, '' BRANCH_TYPE_DESC										
	, '' BRANCH_AREA_CODE										
	, '' BRANCH_AREA_DESC										
    , ISNULL(src.ACCOUNT_MIS_PRODUCT_CODE                        , trg.ACCOUNT_MIS_PRODUCT_CODE                ) ACCOUNT_MIS_PRODUCT_CODE                   
	, '' MIS_PRODUCT_DESC										
    , ISNULL(src.ACCOUNT_DWH_PRODUCT_CODE                        , trg.ACCOUNT_DWH_PRODUCT_CODE              ) ACCOUNT_DWH_PRODUCT_CODE                   
	, '' DWH_PRODUCT_DESC										
	, '' DWH_PRODUCT_LVL_1_CODE										
	, '' DWH_PRODUCT_LVL_1_DESC										
	, '' DWH_PRODUCT_LVL_2_CODE										
	, '' DWH_PRODUCT_LVL_2_DESC										
	, '' DWH_PRODUCT_LVL_3_CODE										
	, '' DWH_PRODUCT_LVL_3_DESC										
    , ISNULL(src.ACCOUNT_EBA_FLAG_CODE                           , trg.ACCOUNT_EBA_FLAG_CODE               ) ACCOUNT_EBA_FLAG_CODE                      
	, '' EBA_FLAG_DESC										
    , ISNULL(src.ACCOUNT_ECA_CLASS_CODE                          , trg.ACCOUNT_ECA_CLASS_CODE               ) ACCOUNT_ECA_CLASS_CODE                     
	, '' ECA_CLASS_DESC										
	, '' ECA_CLASS_GROUP										
    , ISNULL(src.ACCOUNT_CRE_FLAG_CODE                           , trg.ACCOUNT_CRE_FLAG_CODE                ) ACCOUNT_CRE_FLAG_CODE                      
	, '' CRE_FLAG_DESC										
    , ISNULL(src.ACCOUNT_DENOUNCED_FLAG_CODE                     , trg.ACCOUNT_DENOUNCED_FLAG_CODE          ) ACCOUNT_DENOUNCED_FLAG_CODE                
	, '' DENOUNCED_FLAG_DESC										
    , ISNULL(src.ACCOUNT_FINREP_CLASS_CODE                       , trg.ACCOUNT_FINREP_CLASS_CODE             ) ACCOUNT_FINREP_CLASS_CODE                  
	, '' FINREP_CLASS_DESC										
    , ISNULL(src.ACCOUNT_FINREP_SUB_CLASS_CODE                   , trg.ACCOUNT_FINREP_SUB_CLASS_CODE            ) ACCOUNT_FINREP_SUB_CLASS_CODE              
	, '' FINREP_SUB_CLASS_DESC										
    , ISNULL(src.ACCOUNT_FORBEARANCE_TYPE_CODE                   , trg.ACCOUNT_FORBEARANCE_TYPE_CODE          ) ACCOUNT_FORBEARANCE_TYPE_CODE              
	, '' FORBEARANCE_TYPE_DESC										
    , ISNULL(src.ACCOUNT_FPL_UNDER_PRB_FLAG_CODE                 , trg.ACCOUNT_FPL_UNDER_PRB_FLAG_CODE          ) ACCOUNT_FPL_UNDER_PRB_FLAG_CODE            
	, '' FPL_UNDER_PRB_FLAG_DESC									
    , ISNULL(src.ACCOUNT_FUNDING_CODE                            , trg.ACCOUNT_FUNDING_CODE                    ) ACCOUNT_FUNDING_CODE                       
	, '' FUNDING_DESC										
    , ISNULL(src.ACCOUNT_HFS_CODE                                , trg.ACCOUNT_HFS_CODE                       ) ACCOUNT_HFS_CODE                           
	, '' HFS_DESC										
    , ISNULL(src.ACCOUNT_LOAN_BUCKET_CODE                        , trg.ACCOUNT_LOAN_BUCKET_CODE                ) ACCOUNT_LOAN_BUCKET_CODE                   
	, '' LOAN_BUCKET_DESC										
    , ISNULL(src.ACCOUNT_LOAN_CLASS_CODE                         , trg.ACCOUNT_LOAN_CLASS_CODE               ) ACCOUNT_LOAN_CLASS_CODE                    
	, '' LOAN_CLASS_DESC										
    , ISNULL(src.ACCOUNT_LOAN_GUARANTEE_CODE                     , trg.ACCOUNT_LOAN_GUARANTEE_CODE             ) ACCOUNT_LOAN_GUARANTEE_CODE                
	, '' LOAN_GUARANTEE_DESC										
    , ISNULL(src.ACCOUNT_LOAN_SERVICE_TYPE_CODE                  , trg.ACCOUNT_LOAN_SERVICE_TYPE_CODE          ) ACCOUNT_LOAN_SERVICE_TYPE_CODE             
	, '' LOAN_SERVICE_TYPE_DESC										
    , ISNULL(src.ACCOUNT_LOAN_STAGE_CODE                         , trg.ACCOUNT_LOAN_STAGE_CODE                 ) ACCOUNT_LOAN_STAGE_CODE                    
	, '' LOAN_STAGE_DESC										
    , ISNULL(src.ACCOUNT_IFRS_CLASS_CODE                         , trg.ACCOUNT_IFRS_CLASS_CODE             ) ACCOUNT_IFRS_CLASS_CODE                    
	, '' IFRS_CLASS_DESC										
    , ISNULL(src.ACCOUNT_IFRS_NPL_FLAG_CODE                      , trg.ACCOUNT_IFRS_NPL_FLAG_CODE             ) ACCOUNT_IFRS_NPL_FLAG_CODE                 
	, '' IFRS_NPL_FLAG_DESC										
    , ISNULL(src.ACCOUNT_IMPAIRMENT_TYPE_CODE                    , trg.ACCOUNT_IMPAIRMENT_TYPE_CODE           ) ACCOUNT_IMPAIRMENT_TYPE_CODE               
	, '' IMPAIRMENT_TYPE_DESC										
    , ISNULL(src.ACCOUNT_STATUS_CODE                             , trg.ACCOUNT_STATUS_CODE                     ) ACCOUNT_STATUS_CODE                        
	, '' STATUS_DESC										
    , ISNULL(src.ACCOUNT_MODIFICATION_TYPE_CODE                  , trg.ACCOUNT_MODIFICATION_TYPE_CODE       ) ACCOUNT_MODIFICATION_TYPE_CODE             
	, '' MODIFICATION_TYPE_DESC										
	, '' MODIFICATION_FLAG										
    , ISNULL(src.ACCOUNT_NETWORK_CODE                            , trg.ACCOUNT_NETWORK_CODE                   ) ACCOUNT_NETWORK_CODE                       
	, '' NETWORK_DESC										
    , ISNULL(src.ACCOUNT_PAYMENT_TYPE_CODE                       , trg.ACCOUNT_PAYMENT_TYPE_CODE             ) ACCOUNT_PAYMENT_TYPE_CODE                  
	, '' PAYMENT_TYPE_DESC										
    , ISNULL(src.ACCOUNT_POCI_FLAG_CODE                          , trg.ACCOUNT_POCI_FLAG_CODE                ) ACCOUNT_POCI_FLAG_CODE                     
	, '' POCI_FLAG_DESC										
    , ISNULL(src.ACCOUNT_RISK_PRODUCT_CODE                       , trg.ACCOUNT_RISK_PRODUCT_CODE             ) ACCOUNT_RISK_PRODUCT_CODE                  
	, '' RISK_PRODUCT_DESC										
    , ISNULL(src.ACCOUNT_TD_DURATION_CODE                        , trg.ACCOUNT_TD_DURATION_CODE               ) ACCOUNT_TD_DURATION_CODE                   
	, '' TD_DURATION_DESC										
	, '' TD_DURATION_GROUP										
    , ISNULL(src.ACCOUNT_UNSECURED_FLAG_CODE                     , trg.ACCOUNT_UNSECURED_FLAG_CODE            ) ACCOUNT_UNSECURED_FLAG_CODE                
	, '' UNSECURED_FLAG_DESC										
    , ISNULL(src.ACCOUNT_IFRS9_CLASS_CODE                        , trg.ACCOUNT_IFRS9_CLASS_CODE              ) ACCOUNT_IFRS9_CLASS_CODE                   
	, '' IFRS9_CLASS_DESC										
    , ISNULL(src.ACCOUNT_ECA_INDUSTRY_CODE                       , trg.ACCOUNT_ECA_INDUSTRY_CODE               ) ACCOUNT_ECA_INDUSTRY_CODE                  
	, '' ECA_INDUSTRY_DESC										                                                                                                                                          
    , ISNULL(src.ACCOUNT_FINREP_INDUSTRY_CODE                    , trg.ACCOUNT_FINREP_INDUSTRY_CODE           ) ACCOUNT_FINREP_INDUSTRY_CODE               
	, '' FINREP_INDUSTRY_DESC										                                                                                                                                     
    , ISNULL(src.ACCOUNT_IFRS_INDUSTRY_CODE                      , trg.ACCOUNT_IFRS_INDUSTRY_CODE            ) ACCOUNT_IFRS_INDUSTRY_CODE                 
	, '' IFRS_INDUSTRY_DESC										                                                                                                                                        
    , ISNULL(src.ACCOUNT_PRODUCT_CODE                            , trg.ACCOUNT_PRODUCT_CODE                   ) ACCOUNT_PRODUCT_CODE                       
	, ISNULL(src.ACCOUNT_PRODUCT_SOURCE                          , trg.ACCOUNT_PRODUCT_SOURCE                 ) ACCOUNT_PRODUCT_SOURCE                     
	, '' PRODUCT_DESC										
    , ISNULL(src.ACCOUNT_REPRICE_INDEX_CODE                      , trg.ACCOUNT_REPRICE_INDEX_CODE            ) ACCOUNT_REPRICE_INDEX_CODE                 
	, '' REPRICE_INDEX_DESC										
    , ISNULL(src.ACCOUNT_RATE_TYPE_CODE                          , trg.ACCOUNT_RATE_TYPE_CODE                  ) ACCOUNT_RATE_TYPE_CODE                     
	, '' RATE_TYPE_DESC										
	, '' RATE_TYPE_GROUP										
    , ISNULL(src.ACCOUNT_IS_STAFF                                , trg.ACCOUNT_IS_STAFF                         ) ACCOUNT_IS_STAFF                           
	, ISNULL(src.ACCOUNT_WITHOUT_MLT                             , trg.ACCOUNT_WITHOUT_MLT                      ) ACCOUNT_WITHOUT_MLT                        
    , ISNULL(src.ACCOUNT_ORIGINATION_DATE                        , trg.ACCOUNT_ORIGINATION_DATE                 ) ACCOUNT_ORIGINATION_DATE                   
	, ISNULL(src.ACCOUNT_MATURITY_DATE                           , trg.ACCOUNT_MATURITY_DATE                    ) ACCOUNT_MATURITY_DATE                      
	, ISNULL(src.ACCOUNT_PREVIOUS_REPRICE_DATE                   , trg.ACCOUNT_PREVIOUS_REPRICE_DATE            ) ACCOUNT_PREVIOUS_REPRICE_DATE              
	, ISNULL(src.ACCOUNT_NEXT_REPRICE_DATE                       , trg.ACCOUNT_NEXT_REPRICE_DATE                ) ACCOUNT_NEXT_REPRICE_DATE                  
    , ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR                    , trg.ACCOUNT_ORIGINAL_BALANCE_EUR             ) ACCOUNT_ORIGINAL_BALANCE_EUR               
    , ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_FX                     , trg.ACCOUNT_ORIGINAL_BALANCE_FX              ) ACCOUNT_ORIGINAL_BALANCE_FX                
    , ISNULL(src.ACCOUNT_ORIGINAL_DURATION                       , trg.ACCOUNT_ORIGINAL_DURATION                ) ACCOUNT_ORIGINAL_DURATION                  
	, ISNULL(src.ACCOUNT_REAL_CLOSE_DATE                         , trg.ACCOUNT_REAL_CLOSE_DATE                  ) ACCOUNT_REAL_CLOSE_DATE                    
	, ISNULL(src.ACCOUNT_MODIFICATION_DATE                       , trg.ACCOUNT_MODIFICATION_DATE                ) ACCOUNT_MODIFICATION_DATE                  


    , CASE 
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5)     IN ('L_AL_') and isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01') <> '9999-01-01'
           THEN isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01') 
           WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5)     IN ('L_PNR') and isnull(isnull(src.ACCOUNT_PREVIOUS_REPRICE_DATE,trg.ACCOUNT_PREVIOUS_REPRICE_DATE),'9999-01-01') <> '9999-01-01'
           THEN isnull(isnull(src.ACCOUNT_PREVIOUS_REPRICE_DATE,trg.ACCOUNT_PREVIOUS_REPRICE_DATE),'9999-01-01')
           WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5)     IN ('L_TM_') and isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01') <> '9999-01-01'
           THEN isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01')
	       WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') and isnull(isnull(src.ACCOUNT_PREVIOUS_REPRICE_DATE,trg.ACCOUNT_PREVIOUS_REPRICE_DATE),'9999-01-01')  <> '9999-01-01' 
		   THEN isnull(isnull(src.ACCOUNT_PREVIOUS_REPRICE_DATE,trg.ACCOUNT_PREVIOUS_REPRICE_DATE),'9999-01-01')                                                                                                                                                                                            
           WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') and isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01')            <> '9999-01-01' 
		   THEN isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01')                                                                                                                                                                                             
           WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4')                                                                                                                       
		   THEN eomonth(dateadd(month, -1, DIM_REF_PERIOD.HMNIA))                                                                                                                                                                                             
           ELSE null 
	  END ACCOUNT_FTP_START_DATE                                                                                                                                                                                       

    , CASE 
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5)     IN ('L_AL_') and DATEADD(DAY,ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE),isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01')) <> '9999-01-01'
           THEN DATEADD(DAY,ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE),isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01'))
           WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5)     IN ('L_PNR') and isnull(isnull(src.ACCOUNT_NEXT_REPRICE_DATE,trg.ACCOUNT_NEXT_REPRICE_DATE),'9999-01-01') <> '9999-01-01'
           THEN isnull(isnull(src.ACCOUNT_NEXT_REPRICE_DATE,trg.ACCOUNT_NEXT_REPRICE_DATE),'9999-01-01')
           WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5)     IN ('L_TM_') and isnull(isnull(src.ACCOUNT_MATURITY_DATE,trg.ACCOUNT_MATURITY_DATE),'9999-01-01') <> '9999-01-01'
           THEN isnull(isnull(src.ACCOUNT_MATURITY_DATE,trg.ACCOUNT_MATURITY_DATE),'9999-01-01')
	       WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') and isnull(isnull(src.ACCOUNT_NEXT_REPRICE_DATE,trg.ACCOUNT_NEXT_REPRICE_DATE),'9999-01-01')          <> '9999-01-01' 
		   THEN isnull(isnull(src.ACCOUNT_NEXT_REPRICE_DATE,trg.ACCOUNT_NEXT_REPRICE_DATE),'9999-01-01')                                                                                                                                                                                            
           WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') and isnull(isnull(src.ACCOUNT_REAL_CLOSE_DATE,trg.ACCOUNT_REAL_CLOSE_DATE),'9999-01-01')              <> '9999-01-01' 
		   THEN isnull(isnull(src.ACCOUNT_REAL_CLOSE_DATE,trg.ACCOUNT_REAL_CLOSE_DATE),'9999-01-01')                                                                                                                                                                                            
           WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') and isnull(isnull(src.ACCOUNT_MATURITY_DATE,trg.ACCOUNT_MATURITY_DATE),'9999-01-01')                  <> '9999-01-01' 
		   THEN isnull(isnull(src.ACCOUNT_MATURITY_DATE,trg.ACCOUNT_MATURITY_DATE),'9999-01-01')                                                                                                                                                                                            
           WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4')                                                                                                                       
		   THEN DIM_REF_PERIOD.HMNIA                                                                                                                                                                                            
           ELSE null 
	  END ACCOUNT_FTP_END_DATE                                                                                                                                                                                       

    , CASE 
	       WHEN ((trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_PNR')) or 
                (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_')))  
           THEN  ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION)
           WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_')) 
           THEN  ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)
	       WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') 
	       THEN DATEDIFF(day 
                 , CASE WHEN isnull(isnull(src.ACCOUNT_PREVIOUS_REPRICE_DATE,trg.ACCOUNT_PREVIOUS_REPRICE_DATE),'9999-01-01')  <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_PREVIOUS_REPRICE_DATE,trg.ACCOUNT_PREVIOUS_REPRICE_DATE),'9999-01-01')                                                                                                                                                                                            
                        WHEN isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01')            <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01')                                                                                                                                                                                            
                        ELSE eomonth(dateadd(month, -1, DIM_REF_PERIOD.HMNIA))                                                                                                                                                                                             
                   END                                                                                                                                                                                        
                
                 , CASE WHEN isnull(isnull(src.ACCOUNT_NEXT_REPRICE_DATE,trg.ACCOUNT_NEXT_REPRICE_DATE),'9999-01-01')          <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_NEXT_REPRICE_DATE,trg.ACCOUNT_NEXT_REPRICE_DATE),'9999-01-01')                                                                                                                                                                                                   
                        WHEN isnull(isnull(src.ACCOUNT_REAL_CLOSE_DATE,trg.ACCOUNT_REAL_CLOSE_DATE),'9999-01-01')              <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_REAL_CLOSE_DATE,trg.ACCOUNT_REAL_CLOSE_DATE),'9999-01-01')                                                                                                                                                                                                   
                        WHEN isnull(isnull(src.ACCOUNT_MATURITY_DATE,trg.ACCOUNT_MATURITY_DATE),'9999-01-01')                  <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_MATURITY_DATE,trg.ACCOUNT_MATURITY_DATE),'9999-01-01')                                                                                                                                                                                                   
                        ELSE DIM_REF_PERIOD.HMNIA                                                                                                                                                                                            
	               END  
						 )                                                                                                                                                                                 
	  END ACCOUNT_FTP_DURATION

    , CASE WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') THEN eomonth(isnull(isnull(src.ACCOUNT_ORIGINATION_DATE,trg.ACCOUNT_ORIGINATION_DATE),'9999-01-01'))                                                                                                                                                                                             
	  END ACCOUNT_FTP_ORIGINATION_DATE                                                                                                                                                                                       
	                                                                                                                                                                                     
    , CASE WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') and isnull(isnull(src.ACCOUNT_REAL_CLOSE_DATE,trg.ACCOUNT_REAL_CLOSE_DATE),'9999-01-01') <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_REAL_CLOSE_DATE,trg.ACCOUNT_REAL_CLOSE_DATE),'9999-01-01')                                                                                                                                                                                           
	       WHEN ISNULL(src.ACCOUNT_GL_ACCOUNT_TYPE_CODE, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE) IN ('1', '2', '3', '4') and isnull(isnull(src.ACCOUNT_MATURITY_DATE,trg.ACCOUNT_MATURITY_DATE),'9999-01-01')     <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_MATURITY_DATE,trg.ACCOUNT_MATURITY_DATE),'9999-01-01')  
	  END ACCOUNT_FTP_MATURITY_DATE                                                                                                                                                                                       

    , CASE WHEN isnull(isnull(src.ACCOUNT_PREVIOUS_REPRICE_DATE,trg.ACCOUNT_PREVIOUS_REPRICE_DATE),'9999-01-01')  <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_PREVIOUS_REPRICE_DATE,trg.ACCOUNT_PREVIOUS_REPRICE_DATE),'9999-01-01')                                                                                                                                                                                            
      END ACCOUNT_FTP_PREVIOUS_REPRICE_DATE                                                                                                                                                                         
    
    , CASE WHEN isnull(isnull(src.ACCOUNT_NEXT_REPRICE_DATE,trg.ACCOUNT_NEXT_REPRICE_DATE),'9999-01-01')          <> '9999-01-01' THEN isnull(isnull(src.ACCOUNT_NEXT_REPRICE_DATE,trg.ACCOUNT_NEXT_REPRICE_DATE),'9999-01-01')                                                                                                                                                                                                   
	  END ACCOUNT_FTP_NEXT_REPRICE_DATE

    , ISNULL(src.ACCOUNT_FTP_BASE_RATE_CODE                      , trg.ACCOUNT_FTP_BASE_RATE_CODE              ) ACCOUNT_FTP_BASE_RATE_CODE                 
	, ISNULL(src.ACCOUNT_FTP_D_BASE_RATE_CODE                    , trg.ACCOUNT_FTP_D_BASE_RATE_CODE            ) ACCOUNT_FTP_D_BASE_RATE_CODE               
	, CASE WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=      5000
	       THEN 'DAB-001'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=     10000
	       THEN 'DAB-002'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=     20000
	       THEN 'DAB-003'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=     50000
	       THEN 'DAB-004'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <     100000
	       THEN 'DAB-005'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=    250000
	       THEN 'DAB-006'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=    300000
	       THEN 'DAB-007'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=    500000
	       THEN 'DAB-008'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=   1000000
	       THEN 'DAB-009'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=   5000000
	       THEN 'DAB-010'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) <=  10000000
	       THEN 'DAB-011'                                                                                                                                                                                        
	       WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),1) IN ('F', 'A') AND ISNULL(src.ACCOUNT_ORIGINAL_BALANCE_EUR, ISNULL(trg.ACCOUNT_ORIGINAL_BALANCE_EUR,0)) >   10000000
	       THEN 'DAB-012' ELSE '0' END ACCOUNT_FTP_AMOUNT_BUCKET_CODE
	, '' FTP_AMOUNT_BUCKET_DESC				
	, '' FTP_AMOUNT_BUCKET_FROM				
	, '' FTP_AMOUNT_BUCKET_TO					
    , CASE 
	     
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE) <= 7  ) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION) <= 7 )    
		 THEN 'DMB-001'  				                                                                                                                                                                             
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE) <=15 ) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION) <= 15)    
		 THEN 'DMB-002'                                                                                                                                                                             
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE) <=30 ) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION) <=30)  
         THEN 'DMB-003'                                                                                                                                                                             
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)<=60) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION)<=60)    
         THEN 'DMB-004'                                                                                                                                                                             
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)<=90) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION)<=90)    
         THEN 'DMB-005'                                                                                                                                                                             
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)<= 93) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION)<= 93)    
         THEN 'DMB-006'                                                                                                                                                                            
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)<=180) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION)<=180)    
         THEN 'DMB-007'                                                                                                                                                                            
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)<=186) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION)<=186)  
         THEN 'DMB-008'                                                                                                                                                                            
         WHEN (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)> 186) OR
		      (trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_') AND ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION)> 186)     
         THEN 'DMB-009'
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)    <=        366 
		 THEN 'LMB-001'
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND LEFT(src.ACCOUNT_UNSECURED_FLAG_CODE,4)='OPN-'      
		 THEN 'LMB-001'
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)    <=        731
         THEN 'LMB-002' 
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)     <=       1096 
         THEN 'LMB-003' 
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)      <=      1827
         THEN 'LMB-004'  
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)      <=      2557 
		 THEN 'LMB-005a'
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)      <=      3653	                                                                                                                                                                
		 THEN 'LMB-005b'
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)      <=      5479 	
		 THEN 'LMB-006'
		 WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') AND ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE)      >       5479  	
		 THEN 'LMB-007'
		 	     
	     WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')
              AND cast(DATEDIFF(day 
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))    as float)              <=         7                                                                                                                                                                                                
         THEN 'DMB-001'                                                                                                                                                                             
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')                                                                                                                                               
              AND cast(DATEDIFF(day                                                                                                                                                                     
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))    as float)              <=         15
         THEN 'DMB-002'                                                                                                                                                                             
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')                                                                                                                                               
              AND cast(DATEDIFF(day                                                                                                                                                                     
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))    as float)              <=         30
         THEN 'DMB-003'                                                                                                                                                                             
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')                                                                                                                                               
              AND cast(DATEDIFF(day                                                                                                                                                                     
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=         60
         THEN 'DMB-004'                                                                                                                                                                             
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')                                                                                                                                               
              AND cast(DATEDIFF(day                                                                                                                                                                     
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=         90
         THEN 'DMB-005'                                                                                                                                                                             
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')                                                                                                                                               
              AND cast(DATEDIFF(day                                                                                                                                                                     
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=         93
         THEN 'DMB-006'                                                                                                                                                                            
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')                                                                                                                                               
              AND cast(DATEDIFF(day                                                                                                                                                                    
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))    as float)              <=        180
         THEN 'DMB-007'                                                                                                                                                                            
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')                                                                                                                                               
              AND cast(DATEDIFF(day                                                                                                                                                                    
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=        186
         THEN 'DMB-008'                                                                                                                                                                            
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2', '4') AND ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE) IN ('F', 'A')                                                                                                                                               
              AND cast(DATEDIFF(day                                                                                                                                                                    
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)                 >       186
         THEN 'DMB-009'
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3') 
              AND (ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE) = '9999-01-01'  OR                                                                                                                                                                                                   
				   ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END) = '9999-01-01')          
         THEN '0'                                                                                                                                                                                   
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3') 
              AND (cast(DATEDIFF(day                                                                                                                                                                           
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=        366    
                  --or ACCOUNT_DWH_PRODUCT_LVL_3_CODE ='510' 
				  or LEFT(src.ACCOUNT_UNSECURED_FLAG_CODE,4)='OPN-'  or trg.ACCOUNT_MIS_PRODUCT_CODE IN ('FACT','FLEX') ) --added factors for 2026 onwards & replaced prod 510 with Moodys Open Loans
		 THEN 'LMB-001'                                                                                                                                                                                   
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3')  
              AND cast(DATEDIFF(day                                                                                                                                                                           
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=        731    
         THEN 'LMB-002'                                                                                                                                                                                   
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3') 
              AND cast(DATEDIFF(day                                                                                                                                                                           
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=       1096    
         THEN 'LMB-003'                                                                                                                                                                                   
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3') 
              AND cast(DATEDIFF(day                                                                                                                                                                           
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=       1827   
         THEN 'LMB-004'                                                                                                                                                                                   

		 --new added for Jan25 
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3') 
              AND cast(DATEDIFF(day                                                                                                                                                                           
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=       2557    
         THEN 'LMB-005a'
		 --new added for Jan25 
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3') 
			 AND cast(DATEDIFF(day                                                                                                                                                                           
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               <=       3653	
         THEN 'LMB-005b'                                                                                                                                                                               
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3') 
              AND cast(DATEDIFF(day                                                                                                                                                                           
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))    as float)              <=       5479   
	     THEN 'LMB-006'                                                                                                                                                                                   
         WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1', '3') 
              AND cast(DATEDIFF(day                                                                                                                                                                           
				, ISNULL(src.ACCOUNT_ORIGINATION_DATE, trg.ACCOUNT_ORIGINATION_DATE)                                                                                                                                                                                                      
				, ISNULL(CASE WHEN src.ACCOUNT_MATURITY_DATE = '9999-01-01' THEN src.ACCOUNT_REAL_CLOSE_DATE ELSE src.ACCOUNT_MATURITY_DATE END, CASE WHEN trg.ACCOUNT_MATURITY_DATE = '9999-01-01'   THEN trg.ACCOUNT_REAL_CLOSE_DATE ELSE trg.ACCOUNT_MATURITY_DATE END))   as float)               >        5479    
	     THEN 'LMB-007' ELSE '0' END  ACCOUNT_FTP_MATURITY_BUCKET_CODE                                                                                                                                                                      
	, '' FTP_MATURITY_BUCKET_DESC										
	, '' FTP_MATURITY_BUCKET_FROM										
	, '' FTP_MATURITY_BUCKET_TO										
    , ISNULL(src.ACCOUNT_RTE_ECL                                 , trg.ACCOUNT_RTE_ECL                          ) ACCOUNT_RTE_ECL                            
    , ISNULL(src.ACCOUNT_RTE_NII_NOMINAL                         , trg.ACCOUNT_RTE_NII_NOMINAL                  ) ACCOUNT_RTE_NII_NOMINAL                    
    , ISNULL(src.ACCOUNT_RTE_NII_EIR                             , trg.ACCOUNT_RTE_NII_EIR                      ) ACCOUNT_RTE_NII_EIR          
    , ISNULL(src.ACCOUNT_RTE_NII_LAW128                          , trg.ACCOUNT_RTE_NII_LAW128                   ) ACCOUNT_RTE_NII_LAW128                     
    , ISNULL(src.ACCOUNT_RTE_NII_RR                              , trg.ACCOUNT_RTE_NII_RR                       ) ACCOUNT_RTE_NII_RR                         
    , ISNULL(src.ACCOUNT_RTE_NII_BASE                            , trg.ACCOUNT_RTE_NII_BASE                     ) ACCOUNT_RTE_NII_BASE                       
    , ISNULL(src.ACCOUNT_RTE_NII_D_BASE                          , trg.ACCOUNT_RTE_NII_D_BASE                   ) ACCOUNT_RTE_NII_D_BASE                     
    , ISNULL(src.ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD             , trg.ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD      ) ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD        
    , ISNULL(src.ACCOUNT_RTE_NII_MATURITY_SPREAD                 , trg.ACCOUNT_RTE_NII_MATURITY_SPREAD          ) ACCOUNT_RTE_NII_MATURITY_SPREAD            
    , ISNULL(src.ACCOUNT_RTE_NII_AMOUNT_SPREAD                   , trg.ACCOUNT_RTE_NII_AMOUNT_SPREAD            ) ACCOUNT_RTE_NII_AMOUNT_SPREAD              
    , ISNULL(src.ACCOUNT_RTE_NII_FINANCING_COST_SPREAD           , trg.ACCOUNT_RTE_NII_FINANCING_COST_SPREAD    ) ACCOUNT_RTE_NII_FINANCING_COST_SPREAD      
    , ISNULL(src.ACCOUNT_RTE_NII_TREASURY_SPREAD                 , trg.ACCOUNT_RTE_NII_TREASURY_SPREAD          ) ACCOUNT_RTE_NII_TREASURY_SPREAD            
    , ISNULL(src.ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE       , trg.ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE) ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE  
    , ISNULL(src.ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER        , trg.ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER ) ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER   
    , ISNULL(src.ACCOUNT_RTE_NII_COST_OF_RESERVES                , trg.ACCOUNT_RTE_NII_COST_OF_RESERVES         ) ACCOUNT_RTE_NII_COST_OF_RESERVES           
    , ISNULL(src.ACCOUNT_RTE_NII_CFR                             , trg.ACCOUNT_RTE_NII_CFR                      ) ACCOUNT_RTE_NII_CFR                        
    , ISNULL(src.ACCOUNT_RTE_NII_MFR                             , trg.ACCOUNT_RTE_NII_MFR                      ) ACCOUNT_RTE_NII_MFR                        
    , ISNULL(src.ACCOUNT_RTE_NII_ABR                             , trg.ACCOUNT_RTE_NII_ABR                      ) ACCOUNT_RTE_NII_ABR                        
	, '' DIM_GL_ACCOUNT_TYPE_ID
	, '' DIM_FINREP_INDUSTRY_ID
	, '' DIM_IFRS_INDUSTRY_ID
	, '' DIM_ECA_INDUSTRY_ID
	, '' DIM_IFRS9_CLASS_ID
	, '' DIM_TD_DURATION_ID
	, '' DIM_IFRS_CLASS_ID
	, '' DIM_FINREP_SUB_CLASS_ID
	, '' DIM_IMPAIRMENT_TYPE_ID
	, '' DIM_STATUS_ID
	, '' DIM_ECA_CLASS_ID
	, '' DIM_CRE_FLAG_ID
	, '' DIM_UNSECURED_FLAG_ID
	, '' DIM_RATE_TYPE_ID
	, '' DIM_PAYMENT_TYPE_ID
	, '' DIM_LOAN_STAGE_ID
	, '' DIM_FPL_UNDER_PRB_FLAG_ID
	, '' DIM_IFRS_NPL_FLAG_ID
	, '' DIM_POCI_FLAG_ID
	, '' DIM_DENOUNCED_FLAG_ID
	, '' DIM_LOAN_BUCKET_ID
	, '' DIM_LOAN_CLASS_ID
	, '' DIM_HFS_ID
	, '' DIM_FINREP_CLASS_ID
	, '' DIM_MODIFICATION_TYPE_ID
	, '' DIM_REPRICE_INDEX_ID
	, '' DIM_ACCRUAL_BASIS_ID
	, '' DIM_EBA_FLAG_ID
	, '' DIM_FUNDING_ID
	, '' DIM_LOAN_GUARANTEE_ID
	, '' DIM_FTP_AMOUNT_BUCKET_ID
	, '' DIM_LOAN_SERVICE_TYPE_ID
	, '' DIM_FTP_MATURITY_BUCKET_ID
	, '' DIM_FORBEARANCE_TYPE_ID
	, '' DIM_MIS_PRODUCT_ID
	, '' DIM_RISK_PRODUCT_ID
	, '' DIM_DWH_PRODUCT_ID
	, '' DIM_PRODUCT_ID
	, '' DIM_NETWORK_ID
	, '' DIM_BRANCH_ID
	, '' DIM_BRANCH_TYPE_ID
    , ISNULL(src.ACCOUNT_RTE_RWA                                 , trg.ACCOUNT_RTE_RWA                          ) ACCOUNT_RTE_RWA     
	, ISNULL(src.ACCOUNT_ORIGINAL_CODE                           , trg.ACCOUNT_ORIGINAL_CODE                    ) ACCOUNT_ORIGINAL_CODE     
    , ISNULL(src.ACCOUNT_INITIAL_RECOGNITION_DATE                , trg.ACCOUNT_INITIAL_RECOGNITION_DATE         ) ACCOUNT_INITIAL_RECOGNITION_DATE   
	, ISNULL(src.ACCOUNT_RTE_NII_SPREAD                          , trg.ACCOUNT_RTE_NII_SPREAD                   ) ACCOUNT_RTE_NII_SPREAD  
	, ISNULL(src.ACCOUNT_RTE_NII_ECB_MRO                         , trg.ACCOUNT_RTE_NII_ECB_MRO                  ) ACCOUNT_RTE_NII_ECB_MRO    
	, ISNULL(src.ACCOUNT_RTE_NII_ECB_PL                          , trg.ACCOUNT_RTE_NII_ECB_PL                   ) ACCOUNT_RTE_NII_ECB_PL      
	, ISNULL(src.ACCOUNT_RTE_NII_ECB_DISC                        , trg.ACCOUNT_RTE_NII_ECB_DISC                 ) ACCOUNT_RTE_NII_ECB_DISC 
	, ISNULL(src.ACCOUNT_FTP_AVG_LIFE                            , trg.ACCOUNT_FTP_AVG_LIFE                     ) ACCOUNT_FTP_AVG_LIFE
	, ISNULL(src.ACCOUNT_FTP_PRICING_DURATION                    , trg.ACCOUNT_FTP_PRICING_DURATION             ) ACCOUNT_FTP_PRICING_DURATION
	, CASE 
	  WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AR_')                 THEN ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE) 
	  WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('2') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_TM_')                 THEN ISNULL(src.ACCOUNT_FTP_PRICING_DURATION, trg.ACCOUNT_FTP_PRICING_DURATION) 
	  WHEN trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE in ('1') AND RIGHT(LEFT(ISNULL(src.ACCOUNT_RATE_TYPE_CODE, trg.ACCOUNT_RATE_TYPE_CODE),7),5) IN ('L_AL_','L_AR_','L_PNR') THEN ISNULL(src.ACCOUNT_FTP_AVG_LIFE, trg.ACCOUNT_FTP_AVG_LIFE) 
	  ELSE 0 END AS ACCOUNT_FTP_MATURITY_DURATION

FROM REP.FACT_CLIENT_REF_DATE DIM_REF_PERIOD,  REP.DIM_ACCOUNT trg
	LEFT JOIN STG.T_ACCOUNT src ON src.ENTITY_CODE = trg.ENTITY_CODE AND src.ACCOUNT_CODE = trg.ACCOUNT_CODE AND src.ACCOUNT_GL_ACCOUNT_TYPE_CODE = trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE


TRUNCATE TABLE REP.DIM_ACCOUNT_SO;
ALTER TABLE REP.DIM_ACCOUNT_T SWITCH TO REP.DIM_ACCOUNT_SO;

TRUNCATE TABLE REP.DIM_ACCOUNT_T
INSERT INTO REP.DIM_ACCOUNT_T (	
	  DIM_ACCOUNT_ID
	, DIM_PERIOD_ID
	, ACCOUNT_CODE
	, ENTITY_CODE
	, ACCOUNT_GL_ACCOUNT_TYPE_CODE
	, ACCOUNT_GL_ACCOUNT_GROUP
	, ACCOUNT_CLIENT_CODE
	, ACCOUNT_CURRENCY_ISO
	, ACCOUNT_ACCRUAL_BASIS_CODE
	, ACCOUNT_ACCRUAL_BASIS_DESC
	, ACCOUNT_BRANCH_CODE
	, ACCOUNT_BRANCH_DESC
	, ACCOUNT_BRANCH_TYPE_CODE
	, ACCOUNT_BRANCH_TYPE_DESC
	, ACCOUNT_BRANCH_AREA_CODE
	, ACCOUNT_BRANCH_AREA_DESC
	, ACCOUNT_MIS_PRODUCT_CODE
	, ACCOUNT_MIS_PRODUCT_DESC
	, ACCOUNT_DWH_PRODUCT_CODE
	, ACCOUNT_DWH_PRODUCT_DESC
	, ACCOUNT_DWH_PRODUCT_LVL_1_CODE
	, ACCOUNT_DWH_PRODUCT_LVL_1_DESC
	, ACCOUNT_DWH_PRODUCT_LVL_2_CODE
	, ACCOUNT_DWH_PRODUCT_LVL_2_DESC
	, ACCOUNT_DWH_PRODUCT_LVL_3_CODE
	, ACCOUNT_DWH_PRODUCT_LVL_3_DESC
	, ACCOUNT_EBA_FLAG_CODE
	, ACCOUNT_EBA_FLAG_DESC
	, ACCOUNT_ECA_CLASS_CODE
	, ACCOUNT_ECA_CLASS_DESC
	, ACCOUNT_ECA_CLASS_GROUP
	, ACCOUNT_CRE_FLAG_CODE
	, ACCOUNT_CRE_FLAG_DESC
	, ACCOUNT_DENOUNCED_FLAG_CODE
	, ACCOUNT_DENOUNCED_FLAG_DESC
	, ACCOUNT_FINREP_CLASS_CODE
	, ACCOUNT_FINREP_CLASS_DESC
	, ACCOUNT_FINREP_SUB_CLASS_CODE
	, ACCOUNT_FINREP_SUB_CLASS_DESC
	, ACCOUNT_FORBEARANCE_TYPE_CODE
	, ACCOUNT_FORBEARANCE_TYPE_DESC
	, ACCOUNT_FPL_UNDER_PRB_FLAG_CODE
	, ACCOUNT_FPL_UNDER_PRB_FLAG_DESC
	, ACCOUNT_FUNDING_CODE
	, ACCOUNT_FUNDING_DESC
	, ACCOUNT_HFS_CODE
	, ACCOUNT_HFS_DESC
	, ACCOUNT_LOAN_BUCKET_CODE
	, ACCOUNT_LOAN_BUCKET_DESC
	, ACCOUNT_LOAN_CLASS_CODE
	, ACCOUNT_LOAN_CLASS_DESC
	, ACCOUNT_LOAN_GUARANTEE_CODE
	, ACCOUNT_LOAN_GUARANTEE_DESC
	, ACCOUNT_LOAN_SERVICE_TYPE_CODE
	, ACCOUNT_LOAN_SERVICE_TYPE_DESC
	, ACCOUNT_LOAN_STAGE_CODE
	, ACCOUNT_LOAN_STAGE_DESC
	, ACCOUNT_IFRS_CLASS_CODE
	, ACCOUNT_IFRS_CLASS_DESC
	, ACCOUNT_IFRS_NPL_FLAG_CODE
	, ACCOUNT_IFRS_NPL_FLAG_DESC
	, ACCOUNT_IMPAIRMENT_TYPE_CODE
	, ACCOUNT_IMPAIRMENT_TYPE_DESC
	, ACCOUNT_STATUS_CODE
	, ACCOUNT_STATUS_DESC
	, ACCOUNT_MODIFICATION_TYPE_CODE
	, ACCOUNT_MODIFICATION_TYPE_DESC
	, ACCOUNT_MODIFICATION_FLAG
	, ACCOUNT_NETWORK_CODE
	, ACCOUNT_NETWORK_DESC
	, ACCOUNT_PAYMENT_TYPE_CODE
	, ACCOUNT_PAYMENT_TYPE_DESC
	, ACCOUNT_POCI_FLAG_CODE
	, ACCOUNT_POCI_FLAG_DESC
	, ACCOUNT_RISK_PRODUCT_CODE
	, ACCOUNT_RISK_PRODUCT_DESC
	, ACCOUNT_TD_DURATION_CODE
	, ACCOUNT_TD_DURATION_DESC
	, ACCOUNT_TD_DURATION_GROUP
	, ACCOUNT_UNSECURED_FLAG_CODE
	, ACCOUNT_UNSECURED_FLAG_DESC
	, ACCOUNT_IFRS9_CLASS_CODE
	, ACCOUNT_IFRS9_CLASS_DESC
    , ACCOUNT_ECA_INDUSTRY_CODE     
    , ACCOUNT_ECA_INDUSTRY_DESC     
    , ACCOUNT_FINREP_INDUSTRY_CODE  
    , ACCOUNT_FINREP_INDUSTRY_DESC  
    , ACCOUNT_IFRS_INDUSTRY_CODE    
    , ACCOUNT_IFRS_INDUSTRY_DESC    
	, ACCOUNT_PRODUCT_CODE
	, ACCOUNT_PRODUCT_SOURCE
	, ACCOUNT_PRODUCT_DESC
	, ACCOUNT_REPRICE_INDEX_CODE
	, ACCOUNT_REPRICE_INDEX_DESC
	, ACCOUNT_RATE_TYPE_CODE
	, ACCOUNT_RATE_TYPE_DESC
	, ACCOUNT_RATE_TYPE_GROUP
	, ACCOUNT_IS_STAFF
	, ACCOUNT_WITHOUT_MLT
	, ACCOUNT_ORIGINATION_DATE
	, ACCOUNT_MATURITY_DATE
	, ACCOUNT_PREVIOUS_REPRICE_DATE
	, ACCOUNT_NEXT_REPRICE_DATE
	, ACCOUNT_ORIGINAL_BALANCE_EUR
	, ACCOUNT_ORIGINAL_BALANCE_FX
	, ACCOUNT_ORIGINAL_DURATION
	, ACCOUNT_REAL_CLOSE_DATE
	, ACCOUNT_MODIFICATION_DATE
	, ACCOUNT_FTP_START_DATE
	, ACCOUNT_FTP_END_DATE
	, ACCOUNT_FTP_DURATION
	, ACCOUNT_FTP_ORIGINATION_DATE
	, ACCOUNT_FTP_MATURITY_DATE
	, ACCOUNT_FTP_PREVIOUS_REPRICE_DATE
	, ACCOUNT_FTP_NEXT_REPRICE_DATE
	, ACCOUNT_FTP_BASE_RATE_CODE
	, ACCOUNT_FTP_D_BASE_RATE_CODE
	, ACCOUNT_FTP_AMOUNT_BUCKET_CODE
	, ACCOUNT_FTP_AMOUNT_BUCKET_DESC
	, ACCOUNT_FTP_AMOUNT_BUCKET_FROM
	, ACCOUNT_FTP_AMOUNT_BUCKET_TO
	, ACCOUNT_FTP_MATURITY_BUCKET_CODE
	, ACCOUNT_FTP_MATURITY_BUCKET_DESC
	, ACCOUNT_FTP_MATURITY_BUCKET_FROM
	, ACCOUNT_FTP_MATURITY_BUCKET_TO
	, ACCOUNT_RTE_ECL
	, ACCOUNT_RTE_NII_NOMINAL
	, ACCOUNT_RTE_NII_EIR
	, ACCOUNT_RTE_NII_LAW128
	, ACCOUNT_RTE_NII_RR
	, ACCOUNT_RTE_NII_BASE
	, ACCOUNT_RTE_NII_D_BASE
	, ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD
	, ACCOUNT_RTE_NII_MATURITY_SPREAD
	, ACCOUNT_RTE_NII_AMOUNT_SPREAD
	, ACCOUNT_RTE_NII_FINANCING_COST_SPREAD
	, ACCOUNT_RTE_NII_TREASURY_SPREAD
	, ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE
	, ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER
	, ACCOUNT_RTE_NII_COST_OF_RESERVES
	, ACCOUNT_RTE_NII_CFR
	, ACCOUNT_RTE_NII_MFR
	, ACCOUNT_RTE_NII_ABR
	, ACCOUNT_GL_ACCOUNT_TYPE_ID
	, ACCOUNT_FINREP_INDUSTRY_ID
	, ACCOUNT_IFRS_INDUSTRY_ID
	, ACCOUNT_ECA_INDUSTRY_ID
	, ACCOUNT_IFRS9_CLASS_ID
	, ACCOUNT_TD_DURATION_ID
	, ACCOUNT_IFRS_CLASS_ID
	, ACCOUNT_FINREP_SUB_CLASS_ID
	, ACCOUNT_IMPAIRMENT_TYPE_ID
	, ACCOUNT_STATUS_ID
	, ACCOUNT_ECA_CLASS_ID
	, ACCOUNT_CRE_FLAG_ID
	, ACCOUNT_UNSECURED_FLAG_ID
	, ACCOUNT_RATE_TYPE_ID
	, ACCOUNT_PAYMENT_TYPE_ID
	, ACCOUNT_LOAN_STAGE_ID
	, ACCOUNT_FPL_UNDER_PRB_FLAG_ID
	, ACCOUNT_IFRS_NPL_FLAG_ID
	, ACCOUNT_POCI_FLAG_ID
	, ACCOUNT_DENOUNCED_FLAG_ID
	, ACCOUNT_LOAN_BUCKET_ID
	, ACCOUNT_LOAN_CLASS_ID
	, ACCOUNT_HFS_ID
	, ACCOUNT_FINREP_CLASS_ID
	, ACCOUNT_MODIFICATION_TYPE_ID
	, ACCOUNT_REPRICE_INDEX_ID
	, ACCOUNT_ACCRUAL_BASIS_ID
	, ACCOUNT_EBA_FLAG_ID
	, ACCOUNT_FUNDING_ID
	, ACCOUNT_LOAN_GUARANTEE_ID
	, ACCOUNT_FTP_AMOUNT_BUCKET_ID
	, ACCOUNT_LOAN_SERVICE_TYPE_ID
	, ACCOUNT_FTP_MATURITY_BUCKET_ID
	, ACCOUNT_FORBEARANCE_TYPE_ID
	, ACCOUNT_MIS_PRODUCT_ID
	, ACCOUNT_RISK_PRODUCT_ID
	, ACCOUNT_DWH_PRODUCT_ID
	, ACCOUNT_PRODUCT_ID
	, ACCOUNT_NETWORK_ID
	, ACCOUNT_BRANCH_ID
	, ACCOUNT_BRANCH_TYPE_ID
	, ACCOUNT_RTE_RWA
	, ACCOUNT_ORIGINAL_CODE
	, ACCOUNT_INITIAL_RECOGNITION_DATE
	, ACCOUNT_RTE_NII_SPREAD
	, ACCOUNT_RTE_NII_ECB_MRO
    , ACCOUNT_RTE_NII_ECB_PL
    , ACCOUNT_RTE_NII_ECB_DISC
	, ACCOUNT_FTP_AVG_LIFE
	, ACCOUNT_FTP_PRICING_DURATION
	, ACCOUNT_FTP_MATURITY_DURATION

)	
SELECT											
	  trg.DIM_ACCOUNT_ID										
	, DIM_REF_PERIOD.DIM_PERIOD_ID										
	, trg.ACCOUNT_CODE										
	, trg.ENTITY_CODE										
	, trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE										
	, DIM_GL_ACCOUNT_TYPE.GL_ACCOUNT_GROUP										
	, trg.ACCOUNT_CLIENT_CODE ACCOUNT_CLIENT_CODE                        
    , trg.ACCOUNT_CURRENCY_ISO ACCOUNT_CURRENCY_ISO                       
    , trg.ACCOUNT_ACCRUAL_BASIS_CODE ACCOUNT_ACCRUAL_BASIS_CODE                 
	, DIM_ACCRUAL_BASIS.ACCRUAL_BASIS_DESC										
    , trg.ACCOUNT_BRANCH_CODE ACCOUNT_BRANCH_CODE                        
	, DIM_BRANCH.BRANCH_DESC										
	, DIM_BRANCH.BRANCH_TYPE_CODE										
	, DIM_BRANCH.BRANCH_TYPE_DESC										
	, DIM_BRANCH.BRANCH_AREA_CODE										
	, DIM_BRANCH.BRANCH_AREA_DESC										
    , trg.ACCOUNT_MIS_PRODUCT_CODE ACCOUNT_MIS_PRODUCT_CODE                   
	, DIM_MIS_PRODUCT.MIS_PRODUCT_DESC										
    , trg.ACCOUNT_DWH_PRODUCT_CODE ACCOUNT_DWH_PRODUCT_CODE                   
	, DIM_DWH_PRODUCT.DWH_PRODUCT_DESC										
	, DIM_DWH_PRODUCT.DWH_PRODUCT_LVL_1_CODE										
	, DIM_DWH_PRODUCT.DWH_PRODUCT_LVL_1_DESC										
	, DIM_DWH_PRODUCT.DWH_PRODUCT_LVL_2_CODE										
	, DIM_DWH_PRODUCT.DWH_PRODUCT_LVL_2_DESC										
	, DIM_DWH_PRODUCT.DWH_PRODUCT_LVL_3_CODE										
	, DIM_DWH_PRODUCT.DWH_PRODUCT_LVL_3_DESC										
    , trg.ACCOUNT_EBA_FLAG_CODE ACCOUNT_EBA_FLAG_CODE                      
	, DIM_EBA_FLAG.EBA_FLAG_DESC										
    , trg.ACCOUNT_ECA_CLASS_CODE ACCOUNT_ECA_CLASS_CODE                     
	, DIM_ECA_CLASS.ECA_CLASS_DESC										
	, DIM_ECA_CLASS.ECA_CLASS_GROUP										
    , trg.ACCOUNT_CRE_FLAG_CODE ACCOUNT_CRE_FLAG_CODE                      
	, DIM_CRE_FLAG.CRE_FLAG_DESC										
    , trg.ACCOUNT_DENOUNCED_FLAG_CODE ACCOUNT_DENOUNCED_FLAG_CODE                
	, DIM_DENOUNCED_FLAG.DENOUNCED_FLAG_DESC										
    , trg.ACCOUNT_FINREP_CLASS_CODE ACCOUNT_FINREP_CLASS_CODE                  
	, DIM_FINREP_CLASS.FINREP_CLASS_DESC										
    , trg.ACCOUNT_FINREP_SUB_CLASS_CODE ACCOUNT_FINREP_SUB_CLASS_CODE              
	, DIM_FINREP_SUB_CLASS.FINREP_SUB_CLASS_DESC										
    , trg.ACCOUNT_FORBEARANCE_TYPE_CODE ACCOUNT_FORBEARANCE_TYPE_CODE              
	, DIM_FORBEARANCE_TYPE.FORBEARANCE_TYPE_DESC										
    , trg.ACCOUNT_FPL_UNDER_PRB_FLAG_CODE ACCOUNT_FPL_UNDER_PRB_FLAG_CODE            
	, DIM_FPL_UNDER_PRB_FLAG.FPL_UNDER_PRB_FLAG_DESC										
    , trg.ACCOUNT_FUNDING_CODE ACCOUNT_FUNDING_CODE                       
	, DIM_FUNDING.FUNDING_DESC										
    , trg.ACCOUNT_HFS_CODE ACCOUNT_HFS_CODE                           
	, DIM_HFS.HFS_DESC										
    , trg.ACCOUNT_LOAN_BUCKET_CODE ACCOUNT_LOAN_BUCKET_CODE                   
	, DIM_LOAN_BUCKET.LOAN_BUCKET_DESC										
    , trg.ACCOUNT_LOAN_CLASS_CODE ACCOUNT_LOAN_CLASS_CODE                    
	, DIM_LOAN_CLASS.LOAN_CLASS_DESC										
    , trg.ACCOUNT_LOAN_GUARANTEE_CODE ACCOUNT_LOAN_GUARANTEE_CODE                
	, DIM_LOAN_GUARANTEE.LOAN_GUARANTEE_DESC										
    , trg.ACCOUNT_LOAN_SERVICE_TYPE_CODE ACCOUNT_LOAN_SERVICE_TYPE_CODE             
	, DIM_LOAN_SERVICE_TYPE.LOAN_SERVICE_TYPE_DESC										
    , trg.ACCOUNT_LOAN_STAGE_CODE ACCOUNT_LOAN_STAGE_CODE                    
	, DIM_LOAN_STAGE.LOAN_STAGE_DESC										
    , trg.ACCOUNT_IFRS_CLASS_CODE ACCOUNT_IFRS_CLASS_CODE                    
	, DIM_IFRS_CLASS.IFRS_CLASS_DESC										
    , trg.ACCOUNT_IFRS_NPL_FLAG_CODE ACCOUNT_IFRS_NPL_FLAG_CODE                 
	, DIM_IFRS_NPL_FLAG.IFRS_NPL_FLAG_DESC										
    , trg.ACCOUNT_IMPAIRMENT_TYPE_CODE ACCOUNT_IMPAIRMENT_TYPE_CODE               
	, DIM_IMPAIRMENT_TYPE.IMPAIRMENT_TYPE_DESC										
    , trg.ACCOUNT_STATUS_CODE ACCOUNT_STATUS_CODE                        
	, DIM_STATUS.STATUS_DESC										
    , trg.ACCOUNT_MODIFICATION_TYPE_CODE ACCOUNT_MODIFICATION_TYPE_CODE             
	, DIM_MODIFICATION_TYPE.MODIFICATION_TYPE_DESC										
	, DIM_MODIFICATION_TYPE.MODIFICATION_FLAG										
    , trg.ACCOUNT_NETWORK_CODE ACCOUNT_NETWORK_CODE                       
	, DIM_NETWORK.NETWORK_DESC										
    , trg.ACCOUNT_PAYMENT_TYPE_CODE ACCOUNT_PAYMENT_TYPE_CODE                  
	, DIM_PAYMENT_TYPE.PAYMENT_TYPE_DESC										
    , trg.ACCOUNT_POCI_FLAG_CODE ACCOUNT_POCI_FLAG_CODE                     
	, DIM_POCI_FLAG.POCI_FLAG_DESC										
    , trg.ACCOUNT_RISK_PRODUCT_CODE ACCOUNT_RISK_PRODUCT_CODE                  
	, DIM_RISK_PRODUCT.RISK_PRODUCT_DESC										
    , trg.ACCOUNT_TD_DURATION_CODE ACCOUNT_TD_DURATION_CODE                   
	, DIM_TD_DURATION.TD_DURATION_DESC										
	, DIM_TD_DURATION.TD_DURATION_GROUP										
    , trg.ACCOUNT_UNSECURED_FLAG_CODE ACCOUNT_UNSECURED_FLAG_CODE                
	, DIM_UNSECURED_FLAG.UNSECURED_FLAG_DESC										
    , trg.ACCOUNT_IFRS9_CLASS_CODE ACCOUNT_IFRS9_CLASS_CODE                   
	, DIM_IFRS9_CLASS.IFRS9_CLASS_DESC										
    , trg.ACCOUNT_ECA_INDUSTRY_CODE ACCOUNT_ECA_INDUSTRY_CODE                  
	, DIM_ECA_INDUSTRY.ECA_INDUSTRY_DESC										                                                                                                                                                 
    , trg.ACCOUNT_FINREP_INDUSTRY_CODE ACCOUNT_FINREP_INDUSTRY_CODE               
	, DIM_FINREP_INDUSTRY.FINREP_INDUSTRY_DESC										                                                                                                                                           
    , trg.ACCOUNT_IFRS_INDUSTRY_CODE ACCOUNT_IFRS_INDUSTRY_CODE                 
	, DIM_IFRS_INDUSTRY.IFRS_INDUSTRY_DESC										                                                                                                                                               
    , trg.ACCOUNT_PRODUCT_CODE ACCOUNT_PRODUCT_CODE                       
	, trg.ACCOUNT_PRODUCT_SOURCE ACCOUNT_PRODUCT_SOURCE                     
	, DIM_PRODUCT.PRODUCT_DESC										
    , trg.ACCOUNT_REPRICE_INDEX_CODE ACCOUNT_REPRICE_INDEX_CODE                 
	, DIM_REPRICE_INDEX.REPRICE_INDEX_DESC										
    , trg.ACCOUNT_RATE_TYPE_CODE ACCOUNT_RATE_TYPE_CODE                     
	, DIM_RATE_TYPE.RATE_TYPE_DESC										
	, DIM_RATE_TYPE.RATE_TYPE_GROUP										
    , trg.ACCOUNT_IS_STAFF  ACCOUNT_IS_STAFF                           
	, trg.ACCOUNT_WITHOUT_MLT ACCOUNT_WITHOUT_MLT                        
    , trg.ACCOUNT_ORIGINATION_DATE ACCOUNT_ORIGINATION_DATE                   
	, trg.ACCOUNT_MATURITY_DATE ACCOUNT_MATURITY_DATE                      
	, trg.ACCOUNT_PREVIOUS_REPRICE_DATE ACCOUNT_PREVIOUS_REPRICE_DATE              
	, trg.ACCOUNT_NEXT_REPRICE_DATE ACCOUNT_NEXT_REPRICE_DATE                  
    , trg.ACCOUNT_ORIGINAL_BALANCE_EUR ACCOUNT_ORIGINAL_BALANCE_EUR               
    , trg.ACCOUNT_ORIGINAL_BALANCE_FX ACCOUNT_ORIGINAL_BALANCE_FX                
    , trg.ACCOUNT_ORIGINAL_DURATION ACCOUNT_ORIGINAL_DURATION                  
	, trg.ACCOUNT_REAL_CLOSE_DATE ACCOUNT_REAL_CLOSE_DATE                    
	, trg.ACCOUNT_MODIFICATION_DATE ACCOUNT_MODIFICATION_DATE                  
    , trg.ACCOUNT_FTP_START_DATE  ACCOUNT_FTP_START_DATE                                                                                                                                                                              
    , trg.ACCOUNT_FTP_END_DATE    ACCOUNT_FTP_END_DATE                                                                                                                                                                       
    , trg.ACCOUNT_FTP_DURATION    ACCOUNT_FTP_DURATION
    , trg.ACCOUNT_FTP_ORIGINATION_DATE ACCOUNT_FTP_ORIGINATION_DATE                   
	, trg.ACCOUNT_FTP_MATURITY_DATE ACCOUNT_FTP_MATURITY_DATE                      
	, trg.ACCOUNT_FTP_PREVIOUS_REPRICE_DATE ACCOUNT_FTP_PREVIOUS_REPRICE_DATE              
	, trg.ACCOUNT_FTP_NEXT_REPRICE_DATE ACCOUNT_FTP_NEXT_REPRICE_DATE                  
    , trg.ACCOUNT_FTP_BASE_RATE_CODE ACCOUNT_FTP_BASE_RATE_CODE                 
	, trg.ACCOUNT_FTP_D_BASE_RATE_CODE ACCOUNT_FTP_D_BASE_RATE_CODE               
	, trg.ACCOUNT_FTP_AMOUNT_BUCKET_CODE
	, DIM_FTP_AMOUNT_BUCKET.FTP_AMOUNT_BUCKET_DESC				
	, DIM_FTP_AMOUNT_BUCKET.FTP_AMOUNT_BUCKET_FROM				
	, DIM_FTP_AMOUNT_BUCKET.FTP_AMOUNT_BUCKET_TO					
    , trg.ACCOUNT_FTP_MATURITY_BUCKET_CODE                                                                                                                                                                      
	, DIM_FTP_MATURITY_BUCKET.FTP_MATURITY_BUCKET_DESC										
	, DIM_FTP_MATURITY_BUCKET.FTP_MATURITY_BUCKET_FROM										
	, DIM_FTP_MATURITY_BUCKET.FTP_MATURITY_BUCKET_TO										
    , trg.ACCOUNT_RTE_ECL ACCOUNT_RTE_ECL                            
    , trg.ACCOUNT_RTE_NII_NOMINAL ACCOUNT_RTE_NII_NOMINAL                    
    , trg.ACCOUNT_RTE_NII_EIR ACCOUNT_RTE_NII_EIR          
    , trg.ACCOUNT_RTE_NII_LAW128 ACCOUNT_RTE_NII_LAW128                     
    , trg.ACCOUNT_RTE_NII_RR ACCOUNT_RTE_NII_RR                         
    , trg.ACCOUNT_RTE_NII_BASE ACCOUNT_RTE_NII_BASE                       
    , trg.ACCOUNT_RTE_NII_D_BASE ACCOUNT_RTE_NII_D_BASE                     
    , trg.ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD ACCOUNT_RTE_NII_FIRST_DEMAND_SPREAD        
    , trg.ACCOUNT_RTE_NII_MATURITY_SPREAD ACCOUNT_RTE_NII_MATURITY_SPREAD            
    , trg.ACCOUNT_RTE_NII_AMOUNT_SPREAD ACCOUNT_RTE_NII_AMOUNT_SPREAD              
    , trg.ACCOUNT_RTE_NII_FINANCING_COST_SPREAD ACCOUNT_RTE_NII_FINANCING_COST_SPREAD      
    , trg.ACCOUNT_RTE_NII_TREASURY_SPREAD ACCOUNT_RTE_NII_TREASURY_SPREAD            
    , trg.ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE ACCOUNT_RTE_NII_COST_OF_DEPOSIT_INSURANCE  
    , trg.ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER  ACCOUNT_RTE_NII_COST_OF_LIQUIDITY_BUFFER   
    , trg.ACCOUNT_RTE_NII_COST_OF_RESERVES ACCOUNT_RTE_NII_COST_OF_RESERVES           
    , trg.ACCOUNT_RTE_NII_CFR  ACCOUNT_RTE_NII_CFR                        
    , trg.ACCOUNT_RTE_NII_MFR ACCOUNT_RTE_NII_MFR                        
    , trg.ACCOUNT_RTE_NII_ABR ACCOUNT_RTE_NII_ABR                        
	, DIM_GL_ACCOUNT_TYPE.DIM_GL_ACCOUNT_TYPE_ID
	, DIM_FINREP_INDUSTRY.DIM_FINREP_INDUSTRY_ID
	, DIM_IFRS_INDUSTRY.DIM_IFRS_INDUSTRY_ID
	, DIM_ECA_INDUSTRY.DIM_ECA_INDUSTRY_ID
	, DIM_IFRS9_CLASS.DIM_IFRS9_CLASS_ID
	, DIM_TD_DURATION.DIM_TD_DURATION_ID
	, DIM_IFRS_CLASS.DIM_IFRS_CLASS_ID
	, DIM_FINREP_SUB_CLASS.DIM_FINREP_SUB_CLASS_ID
	, DIM_IMPAIRMENT_TYPE.DIM_IMPAIRMENT_TYPE_ID
	, DIM_STATUS.DIM_STATUS_ID
	, DIM_ECA_CLASS.DIM_ECA_CLASS_ID
	, DIM_CRE_FLAG.DIM_CRE_FLAG_ID
	, DIM_UNSECURED_FLAG.DIM_UNSECURED_FLAG_ID
	, DIM_RATE_TYPE.DIM_RATE_TYPE_ID
	, DIM_PAYMENT_TYPE.DIM_PAYMENT_TYPE_ID
	, DIM_LOAN_STAGE.DIM_LOAN_STAGE_ID
	, DIM_FPL_UNDER_PRB_FLAG.DIM_FPL_UNDER_PRB_FLAG_ID
	, DIM_IFRS_NPL_FLAG.DIM_IFRS_NPL_FLAG_ID
	, DIM_POCI_FLAG.DIM_POCI_FLAG_ID
	, DIM_DENOUNCED_FLAG.DIM_DENOUNCED_FLAG_ID
	, DIM_LOAN_BUCKET.DIM_LOAN_BUCKET_ID
	, DIM_LOAN_CLASS.DIM_LOAN_CLASS_ID
	, DIM_HFS.DIM_HFS_ID
	, DIM_FINREP_CLASS.DIM_FINREP_CLASS_ID
	, DIM_MODIFICATION_TYPE.DIM_MODIFICATION_TYPE_ID
	, DIM_REPRICE_INDEX.DIM_REPRICE_INDEX_ID
	, DIM_ACCRUAL_BASIS.DIM_ACCRUAL_BASIS_ID
	, DIM_EBA_FLAG.DIM_EBA_FLAG_ID
	, DIM_FUNDING.DIM_FUNDING_ID
	, DIM_LOAN_GUARANTEE.DIM_LOAN_GUARANTEE_ID
	, DIM_FTP_AMOUNT_BUCKET.DIM_FTP_AMOUNT_BUCKET_ID
	, DIM_LOAN_SERVICE_TYPE.DIM_LOAN_SERVICE_TYPE_ID
	, DIM_FTP_MATURITY_BUCKET.DIM_FTP_MATURITY_BUCKET_ID
	, DIM_FORBEARANCE_TYPE.DIM_FORBEARANCE_TYPE_ID
	, DIM_MIS_PRODUCT.DIM_MIS_PRODUCT_ID
	, DIM_RISK_PRODUCT.DIM_RISK_PRODUCT_ID
	, DIM_DWH_PRODUCT.DIM_DWH_PRODUCT_ID
	, DIM_PRODUCT.DIM_PRODUCT_ID
	, DIM_NETWORK.DIM_NETWORK_ID
	, DIM_BRANCH.DIM_BRANCH_ID
	, DIM_BRANCH_TYPE.DIM_BRANCH_TYPE_ID
    , trg.ACCOUNT_RTE_RWA ACCOUNT_RTE_RWA    
	, trg.ACCOUNT_ORIGINAL_CODE
	, trg.ACCOUNT_INITIAL_RECOGNITION_DATE
	, trg.ACCOUNT_RTE_NII_SPREAD 
	, trg.ACCOUNT_RTE_NII_ECB_MRO
    , trg.ACCOUNT_RTE_NII_ECB_PL 
    , trg.ACCOUNT_RTE_NII_ECB_DISC
	, trg.ACCOUNT_FTP_AVG_LIFE
	, trg.ACCOUNT_FTP_PRICING_DURATION
	, trg.ACCOUNT_FTP_MATURITY_DURATION                      
FROM REP.FACT_CLIENT_REF_DATE DIM_REF_PERIOD, REP.DIM_ACCOUNT_SO trg
	LEFT JOIN	REP.DIM_GL_ACCOUNT_TYPE	DIM_GL_ACCOUNT_TYPE	ON	trg.ACCOUNT_GL_ACCOUNT_TYPE_CODE	=	DIM_GL_ACCOUNT_TYPE.GL_ACCOUNT_TYPE_CODE	AND	trg.ENTITY_CODE	=	DIM_GL_ACCOUNT_TYPE.ENTITY_CODE
	LEFT JOIN	REP.DIM_ACCRUAL_BASIS	DIM_ACCRUAL_BASIS	ON	trg.ACCOUNT_ACCRUAL_BASIS_CODE 	=	DIM_ACCRUAL_BASIS.ACCRUAL_BASIS_CODE	AND	trg.ENTITY_CODE	=	DIM_ACCRUAL_BASIS.ENTITY_CODE
	LEFT JOIN	REP.DIM_BRANCH	DIM_BRANCH	ON	trg.ACCOUNT_BRANCH_CODE =	DIM_BRANCH.BRANCH_CODE	AND	trg.ENTITY_CODE	=	DIM_BRANCH.ENTITY_CODE
	LEFT JOIN	REP.DIM_BRANCH_TYPE	DIM_BRANCH_TYPE	ON	DIM_BRANCH.BRANCH_TYPE_CODE	=	DIM_BRANCH_TYPE.BRANCH_TYPE_CODE	AND	DIM_BRANCH.ENTITY_CODE	=	DIM_BRANCH_TYPE.ENTITY_CODE 			   
	LEFT JOIN	REP.DIM_MIS_PRODUCT	DIM_MIS_PRODUCT	ON	trg.ACCOUNT_MIS_PRODUCT_CODE = DIM_MIS_PRODUCT.MIS_PRODUCT_CODE	AND	trg.ENTITY_CODE	=	DIM_MIS_PRODUCT.ENTITY_CODE
	LEFT JOIN	REP.DIM_DWH_PRODUCT	DIM_DWH_PRODUCT	ON	trg.ACCOUNT_DWH_PRODUCT_CODE	=	DIM_DWH_PRODUCT.DWH_PRODUCT_CODE	AND	trg.ENTITY_CODE	=	DIM_DWH_PRODUCT.ENTITY_CODE
	LEFT JOIN	REP.DIM_EBA_FLAG	DIM_EBA_FLAG	ON	trg.ACCOUNT_EBA_FLAG_CODE	=	DIM_EBA_FLAG.EBA_FLAG_CODE	AND	trg.ENTITY_CODE	=	DIM_EBA_FLAG.ENTITY_CODE
	LEFT JOIN	REP.DIM_ECA_CLASS	DIM_ECA_CLASS	ON	trg.ACCOUNT_ECA_CLASS_CODE	=	DIM_ECA_CLASS.ECA_CLASS_CODE	AND	trg.ENTITY_CODE	=	DIM_ECA_CLASS.ENTITY_CODE
	LEFT JOIN	REP.DIM_CRE_FLAG	DIM_CRE_FLAG	ON	trg.ACCOUNT_CRE_FLAG_CODE	=	DIM_CRE_FLAG.CRE_FLAG_CODE	AND	trg.ENTITY_CODE	=	DIM_CRE_FLAG.ENTITY_CODE
	LEFT JOIN	REP.DIM_DENOUNCED_FLAG	DIM_DENOUNCED_FLAG	ON	trg.ACCOUNT_DENOUNCED_FLAG_CODE	=	DIM_DENOUNCED_FLAG.DENOUNCED_FLAG_CODE	AND	trg.ENTITY_CODE	=	DIM_DENOUNCED_FLAG.ENTITY_CODE
	LEFT JOIN	REP.DIM_FINREP_CLASS	DIM_FINREP_CLASS	ON	trg.ACCOUNT_FINREP_CLASS_CODE	=	DIM_FINREP_CLASS.FINREP_CLASS_CODE	AND	trg.ENTITY_CODE	=	DIM_FINREP_CLASS.ENTITY_CODE
	LEFT JOIN	REP.DIM_FINREP_SUB_CLASS	DIM_FINREP_SUB_CLASS	ON	trg.ACCOUNT_FINREP_SUB_CLASS_CODE 	=	DIM_FINREP_SUB_CLASS.FINREP_SUB_CLASS_CODE	AND	trg.ENTITY_CODE	=	DIM_FINREP_SUB_CLASS.ENTITY_CODE
	LEFT JOIN	REP.DIM_FORBEARANCE_TYPE	DIM_FORBEARANCE_TYPE	ON	trg.ACCOUNT_FORBEARANCE_TYPE_CODE 	=	DIM_FORBEARANCE_TYPE.FORBEARANCE_TYPE_CODE	AND	trg.ENTITY_CODE	=	DIM_FORBEARANCE_TYPE.ENTITY_CODE
	LEFT JOIN	REP.DIM_FPL_UNDER_PRB_FLAG	DIM_FPL_UNDER_PRB_FLAG	ON	trg.ACCOUNT_FPL_UNDER_PRB_FLAG_CODE	=	DIM_FPL_UNDER_PRB_FLAG.FPL_UNDER_PRB_FLAG_CODE	AND	trg.ENTITY_CODE	=	DIM_FPL_UNDER_PRB_FLAG.ENTITY_CODE
	LEFT JOIN	REP.DIM_FUNDING	DIM_FUNDING	ON	trg.ACCOUNT_FUNDING_CODE	=	DIM_FUNDING.FUNDING_CODE	AND	trg.ENTITY_CODE	=	DIM_FUNDING.ENTITY_CODE
	LEFT JOIN	REP.DIM_HFS	DIM_HFS	ON	trg.ACCOUNT_HFS_CODE 	=	DIM_HFS.HFS_CODE	AND	trg.ENTITY_CODE	=	DIM_HFS.ENTITY_CODE
	LEFT JOIN	REP.DIM_LOAN_BUCKET	DIM_LOAN_BUCKET	ON	trg.ACCOUNT_LOAN_BUCKET_CODE	=	DIM_LOAN_BUCKET.LOAN_BUCKET_CODE	AND	trg.ENTITY_CODE	=	DIM_LOAN_BUCKET.ENTITY_CODE
	LEFT JOIN	REP.DIM_LOAN_CLASS	DIM_LOAN_CLASS	ON	trg.ACCOUNT_LOAN_CLASS_CODE	=	DIM_LOAN_CLASS.LOAN_CLASS_CODE	AND	trg.ENTITY_CODE	=	DIM_LOAN_CLASS.ENTITY_CODE
	LEFT JOIN	REP.DIM_LOAN_GUARANTEE	DIM_LOAN_GUARANTEE	ON	trg.ACCOUNT_LOAN_GUARANTEE_CODE	=	DIM_LOAN_GUARANTEE.LOAN_GUARANTEE_CODE	AND	trg.ENTITY_CODE	=	DIM_LOAN_GUARANTEE.ENTITY_CODE
	LEFT JOIN	REP.DIM_LOAN_SERVICE_TYPE	DIM_LOAN_SERVICE_TYPE	ON	trg.ACCOUNT_LOAN_SERVICE_TYPE_CODE	=	DIM_LOAN_SERVICE_TYPE.LOAN_SERVICE_TYPE_CODE	AND	trg.ENTITY_CODE	=	DIM_LOAN_SERVICE_TYPE.ENTITY_CODE
	LEFT JOIN	REP.DIM_LOAN_STAGE	DIM_LOAN_STAGE	ON	trg.ACCOUNT_LOAN_STAGE_CODE	=	DIM_LOAN_STAGE.LOAN_STAGE_CODE	AND	trg.ENTITY_CODE	=	DIM_LOAN_STAGE.ENTITY_CODE
	LEFT JOIN	REP.DIM_IFRS_CLASS	DIM_IFRS_CLASS	ON	trg.ACCOUNT_IFRS_CLASS_CODE	=	DIM_IFRS_CLASS.IFRS_CLASS_CODE	AND	trg.ENTITY_CODE	=	DIM_IFRS_CLASS.ENTITY_CODE
	LEFT JOIN	REP.DIM_IFRS_NPL_FLAG	DIM_IFRS_NPL_FLAG	ON	trg.ACCOUNT_IFRS_NPL_FLAG_CODE	=	DIM_IFRS_NPL_FLAG.IFRS_NPL_FLAG_CODE	AND	trg.ENTITY_CODE	=	DIM_IFRS_NPL_FLAG.ENTITY_CODE
	LEFT JOIN	REP.DIM_IMPAIRMENT_TYPE	DIM_IMPAIRMENT_TYPE	ON	trg.ACCOUNT_IMPAIRMENT_TYPE_CODE	=	DIM_IMPAIRMENT_TYPE.IMPAIRMENT_TYPE_CODE	AND	trg.ENTITY_CODE	=	DIM_IMPAIRMENT_TYPE.ENTITY_CODE
	LEFT JOIN	REP.DIM_STATUS	DIM_STATUS	ON	trg.ACCOUNT_STATUS_CODE	=	DIM_STATUS.STATUS_CODE	AND	trg.ENTITY_CODE	=	DIM_STATUS.ENTITY_CODE
	LEFT JOIN	REP.DIM_MODIFICATION_TYPE	DIM_MODIFICATION_TYPE	ON	trg.ACCOUNT_MODIFICATION_TYPE_CODE	=	DIM_MODIFICATION_TYPE.MODIFICATION_TYPE_CODE	AND	trg.ENTITY_CODE	=	DIM_MODIFICATION_TYPE.ENTITY_CODE
	LEFT JOIN	REP.DIM_NETWORK	DIM_NETWORK	ON	trg.ACCOUNT_NETWORK_CODE 	=	DIM_NETWORK.NETWORK_CODE	AND	trg.ENTITY_CODE	=	DIM_NETWORK.ENTITY_CODE
	LEFT JOIN	REP.DIM_PAYMENT_TYPE	DIM_PAYMENT_TYPE	ON	trg.ACCOUNT_PAYMENT_TYPE_CODE	=	DIM_PAYMENT_TYPE.PAYMENT_TYPE_CODE	AND	trg.ENTITY_CODE	=	DIM_PAYMENT_TYPE.ENTITY_CODE
	LEFT JOIN	REP.DIM_POCI_FLAG	DIM_POCI_FLAG	ON	trg.ACCOUNT_POCI_FLAG_CODE	=	DIM_POCI_FLAG.POCI_FLAG_CODE	AND	trg.ENTITY_CODE	=	DIM_POCI_FLAG.ENTITY_CODE
	LEFT JOIN	REP.DIM_RISK_PRODUCT	DIM_RISK_PRODUCT	ON	trg.ACCOUNT_RISK_PRODUCT_CODE	=	DIM_RISK_PRODUCT.RISK_PRODUCT_CODE	AND	trg.ENTITY_CODE	=	DIM_RISK_PRODUCT.ENTITY_CODE
	LEFT JOIN	REP.DIM_TD_DURATION	DIM_TD_DURATION	ON	trg.ACCOUNT_TD_DURATION_CODE	=	DIM_TD_DURATION.TD_DURATION_CODE	AND	trg.ENTITY_CODE	=	DIM_TD_DURATION.ENTITY_CODE
	LEFT JOIN	REP.DIM_UNSECURED_FLAG	DIM_UNSECURED_FLAG	ON	trg.ACCOUNT_UNSECURED_FLAG_CODE 	=	DIM_UNSECURED_FLAG.UNSECURED_FLAG_CODE	AND	trg.ENTITY_CODE	=	DIM_UNSECURED_FLAG.ENTITY_CODE
	LEFT JOIN	REP.DIM_IFRS9_CLASS	DIM_IFRS9_CLASS	ON	trg.ACCOUNT_IFRS9_CLASS_CODE	=	DIM_IFRS9_CLASS.IFRS9_CLASS_CODE	AND	trg.ENTITY_CODE	=	DIM_IFRS9_CLASS.ENTITY_CODE
	LEFT JOIN	REP.DIM_ECA_INDUSTRY	DIM_ECA_INDUSTRY	ON	trg.ACCOUNT_ECA_INDUSTRY_CODE	=	DIM_ECA_INDUSTRY.ECA_INDUSTRY_CODE	AND	trg.ENTITY_CODE	=	DIM_ECA_INDUSTRY.ENTITY_CODE                           
	LEFT JOIN	REP.DIM_FINREP_INDUSTRY	DIM_FINREP_INDUSTRY	ON	trg.ACCOUNT_FINREP_INDUSTRY_CODE 	=	DIM_FINREP_INDUSTRY.FINREP_INDUSTRY_CODE	AND	trg.ENTITY_CODE	=	DIM_FINREP_INDUSTRY.ENTITY_CODE            
	LEFT JOIN	REP.DIM_IFRS_INDUSTRY	DIM_IFRS_INDUSTRY	ON	trg.ACCOUNT_IFRS_INDUSTRY_CODE	=	DIM_IFRS_INDUSTRY.IFRS_INDUSTRY_CODE	AND	trg.ENTITY_CODE	=	DIM_IFRS_INDUSTRY.ENTITY_CODE                        
	LEFT JOIN	REP.DIM_PRODUCT	DIM_PRODUCT	ON	trg.ACCOUNT_PRODUCT_CODE 	=	DIM_PRODUCT.PRODUCT_CODE	AND	trg.ENTITY_CODE	=	DIM_PRODUCT.ENTITY_CODE	AND	trg.ACCOUNT_PRODUCT_SOURCE	=	DIM_PRODUCT.PRODUCT_SOURCE
	LEFT JOIN	REP.DIM_REPRICE_INDEX	DIM_REPRICE_INDEX	ON	trg.ACCOUNT_REPRICE_INDEX_CODE	=	DIM_REPRICE_INDEX.REPRICE_INDEX_CODE	AND	trg.ENTITY_CODE	=	DIM_REPRICE_INDEX.ENTITY_CODE
	LEFT JOIN	REP.DIM_RATE_TYPE	DIM_RATE_TYPE	ON	trg.ACCOUNT_RATE_TYPE_CODE	=	DIM_RATE_TYPE.RATE_TYPE_CODE	AND	trg.ENTITY_CODE	=	DIM_RATE_TYPE.ENTITY_CODE
	LEFT JOIN	REP.DIM_FTP_AMOUNT_BUCKET	DIM_FTP_AMOUNT_BUCKET	ON trg.ACCOUNT_FTP_AMOUNT_BUCKET_CODE =	DIM_FTP_AMOUNT_BUCKET.FTP_AMOUNT_BUCKET_CODE
	LEFT JOIN	REP.DIM_FTP_MATURITY_BUCKET	DIM_FTP_MATURITY_BUCKET	ON	trg.ACCOUNT_FTP_MATURITY_BUCKET_CODE = DIM_FTP_MATURITY_BUCKET.FTP_MATURITY_BUCKET_CODE

TRUNCATE TABLE REP.DIM_ACCOUNT_SO
ALTER TABLE REP.DIM_ACCOUNT SWITCH TO REP.DIM_ACCOUNT_SO;
ALTER TABLE REP.DIM_ACCOUNT_T SWITCH TO REP.DIM_ACCOUNT;

