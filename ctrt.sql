-- 2022-10-27 오전 9:09:04 KFLOW KHPL
 SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4
 where t1.cstm_num = t2.cstm_num
 AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 
 AND t4.cpcm_id = t3.cpcm_id
 AND t4.cstm_num = t2.cstm_num
 AND t2.cstm_num = t1.cstm_num
 and t1.vndr_code='0810038'     -- 매입처코드
 GO

 -- 2022-10-27 오전 9:11:30 KFLOW KHPL
 AND rtgd_rgst_num = '00002'                                --------확인후  업데이트 ,  업데이트 후 다시 확인
 GO

 -- 2022-10-27 오전 9:11:32 KFLOW KHPL
 SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4
 where t1.cstm_num = t2.cstm_num
 AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 
 AND t4.cpcm_id = t3.cpcm_id
 AND t4.cstm_num = t2.cstm_num
 AND t2.cstm_num = t1.cstm_num
 and t1.vndr_code='0810038'     -- 매입처코드 



 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'                                --------확인후  업데이트 ,  업데이트 후 다시 확인
 GO

 -- 2022-10-27 오전 9:14:04 KFLOW KHPL
 SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4
 where t1.cstm_num = t2.cstm_num
 AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 
 AND t4.cpcm_id = t3.cpcm_id
 AND t4.cstm_num = t2.cstm_num
 AND t2.cstm_num = t1.cstm_num
 and t1.vndr_code='0810038'     -- 매입처코드
 GO

 -- 2022-10-27 오전 9:14:33 KFLOW KHPL
 UPDATE KHPL..TM_RTGD_LIST
         SET rtgd_prgs_cdtn_code = '508'      
             , vndr_decs_date = CONVERT(varchar(8), GETDATE(), 112)    
             , amnr_id = '99999'                               
             , amnd_dttm = GETDATE()
         WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'   
             AND rtgd_rgst_num = '00002'           
 GO

 -- 2022-10-27 오전 9:14:43 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:17:20 KFLOW KHPL
 SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4
 where t1.cstm_num = t2.cstm_num
 AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 
 AND t4.cpcm_id = t3.cpcm_id
 AND t4.cstm_num = t2.cstm_num
 AND t2.cstm_num = t1.cstm_num
 and t1.vndr_code='0810038'     

 -- 2022-10-27 오전 9:17:34 KFLOW KHPL
 UPDATE KHPL..TM_CPCM_CTRC 
        SET ctrc_cdtn_code = '504',     
             aprv_mngm_num = '',
             aprv_cdtn_code = '501',
             apro_dttm = GETDATE(),
             rjct_dttm = NULL,
             rjct_rsn_cntt = NULL,
             amnr_id = '11405',                  
                   amnd_dttm = GETDATE()  
        WHERE cpcm_id ='0004564'       
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '502'            
 AND ctrc_date='20221006'                  
 GO

 -- 2022-10-27 오전 9:19:06 KFLOW KHPL
 SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4
 where t1.cstm_num = t2.cstm_num
 AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 
 AND t4.cpcm_id = t3.cpcm_id
 AND t4.cstm_num = t2.cstm_num
 AND t2.cstm_num = t1.cstm_num
 and t1.vndr_code='0810038'     
 GO

 -- 2022-10-27 오전 9:21:58 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:22:16 KFLOW KHPL
 UPDATE KHPL..TM_CPCM_CTRC 
        SET ctrc_cdtn_code = '504',      
             aprv_mngm_num = '',
             aprv_cdtn_code = '501',
             apro_dttm = GETDATE(),
             rjct_dttm = NULL,
             rjct_rsn_cntt = NULL,
             amnr_id = '99999',                  
                   amnd_dttm = GETDATE()  
        WHERE cpcm_id ='0004564'      
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '502'               
 AND ctrc_date='20221006'
 GO

 -- 2022-10-27 오전 9:23:17 KFLOW KHPL
 SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4
 where t1.cstm_num = t2.cstm_num
 AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 
 AND t4.cpcm_id = t3.cpcm_id
 AND t4.cstm_num = t2.cstm_num
 AND t2.cstm_num = t1.cstm_num
 and t1.vndr_code='0810038'     -- 매입처코드
 GO

 -- 2022-10-27 오전 9:28:43 KFLOW KHPL
 UPDATE KHPL..TM_RTGD_LIST
         SET rtgd_prgs_cdtn_code = '506'     ----매입처 확정 
             , vndr_decs_date = CONVERT(varchar(8), GETDATE(), 112)         /* '20220905'  오늘날짜 자동 */
             , amnr_id = '11405'                                
             , amnd_dttm = GETDATE()
         WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'   
             AND rtgd_rgst_num = '00002'            
 GO

 -- 2022-10-27 오전 9:28:51 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:30:57 KFLOW KHPL
 UPDATE KHPL..TM_RTGD_LIST
         SET rtgd_prgs_cdtn_code = '504'     ----매입처 확정 
             , vndr_decs_date = CONVERT(varchar(8), GETDATE(), 112)         /* '20220905'  오늘날짜 자동 */
             , amnr_id = '11405'                               
             , amnd_dttm = GETDATE()
         WHERE rtgd_rgst_rdp_code = '503'     
             AND rtgd_rgst_date = '20221006'      
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:31:01 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '504'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:31:19 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '506'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:31:25 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '508'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:31:47 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '508'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:31:57 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '504'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:31:58 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '504'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:32:00 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '504'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:32:05 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '506'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:32:12 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '508'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:32:17 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '508'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:32:22 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '508'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:32:46 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
                                             -
 GO

 -- 2022-10-27 오전 9:32:50 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:37:06 KFLOW KHPL
 SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4
 where t1.cstm_num = t2.cstm_num
 AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 
 AND t4.cpcm_id = t3.cpcm_id
 AND t4.cstm_num = t2.cstm_num
 AND t2.cstm_num = t1.cstm_num
 and t1.vndr_code='0810038'     -- 매입처코드
 GO

 -- 2022-10-27 오전 9:38:56 KFLOW KHPL
 SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4
 where t1.cstm_num = t2.cstm_num
 AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 
 AND t4.cpcm_id = t3.cpcm_id
 AND t4.cstm_num = t2.cstm_num
 AND t2.cstm_num = t1.cstm_num
 and t1.vndr_code='0810038'     
 GO

 -- 2022-10-27 오전 9:40:22 KFLOW KHPL
 SELECT * FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'

 GO

 -- 2022-10-27 오전 9:40:40 KFLOW KHPL
 SELECT rtgd_prgs_cdtn_code,* FROM KHPL..TM_RTGD_LIST
       WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 9:44:31 KFLOW KHPL
 SELECT *
        WHERE cpcm_id ='0004564'       ----- 협력사 ID
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '50'                 --------
 AND ctrc_date='20221006'                  -------  계약 일자
 GO

 -- 2022-10-27 오전 9:44:46 KFLOW KHPL
 SELECT *
 FROM TM_CPCM_CTRC
        WHERE cpcm_id ='0004564'       ----- 협력사 ID
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '50'                 --------
 AND ctrc_date='20221006'                  -------  계약 일자
 GO

 -- 2022-10-27 오전 9:47:19 KFLOW KHPL
 UPDATE KHPL..TM_RTGD_LIST   /*11366*/
         SET rtgd_prgs_cdtn_code = '504'     ----매입처 확정 
             , vndr_decs_date = ''         /* '20220905'  오늘날짜 자동 */
             , amnr_id = '11405'                                --- sql  담당자 본인 사번 
             , amnd_dttm = GETDATE()
         WHERE rtgd_rgst_rdp_code = '503'    ---수불처 코드 조회 
             AND rtgd_rgst_date = '20221006'      --- 계약 날짜 
             AND rtgd_rgst_num = '00002'             --- 등록 번호
 GO

 -- 2022-10-27 오전 9:47:37 KFLOW KHPL
 SELECT *
 FROM TM_RTGD_LIST
  WHERE rtgd_rgst_rdp_code = '503'    ---수불처 코드 조회 
             AND rtgd_rgst_date = '20221006'      --- 계약 날짜 
             AND rtgd_rgst_num = '00002'             --- 등록 번호
 GO

 -- 2022-10-27 오전 9:48:46 KFLOW KHPL
 SELECT *
 FROM TM_CPCM_CTRC
        WHERE cpcm_id ='0004564'       ----- 협력사 ID
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '503'                 --------
 AND ctrc_date='20221006'                  -------  계약 일자
 GO

 -- 2022-10-27 오전 9:50:05 KFLOW KHPL
 SELECT *
 FROM TM_CPCM_CTRC
        WHERE cpcm_id ='0004564'       ----- 협력사 ID
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '503'                 --------
 AND ctrc_date='20221006'                  -------  계약 일자
 GO

 -- 2022-10-27 오전 9:50:46 KFLOW KHPL
 SELECT *
 FROM TM_CPCM_CTRC
        WHERE cpcm_id ='0004564'       ----- 협력사 ID
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '503'                 --------
 AND ctrc_date='20221006'                  -------  계약 일자
 GO

 -- 2022-10-27 오전 9:51:09 KFLOW KHPL
 UPDATE KHPL..TM_CPCM_CTRC 
        SET ctrc_cdtn_code = '504',      ----계약 승인
             aprv_mngm_num = '',
             aprv_cdtn_code = '501',
             apro_dttm = GETDATE(),
             rjct_dttm = NULL,
             rjct_rsn_cntt = NULL,
             amnr_id = '11405',                  ------내 사번
                   amnd_dttm = GETDATE()  
        WHERE cpcm_id ='0004564'       
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '503'                 --------
 AND ctrc_date='20221006'                  
 GO

 -- 2022-10-27 오전 9:51:12 KFLOW KHPL
 SELECT *
 FROM TM_CPCM_CTRC
        WHERE cpcm_id ='0004564'     
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '503'                 --------
 AND ctrc_date='20221006'                 
 GO

 -- 2022-10-27 오전 9:56:05 KFLOW KHPL
 SELECT *
 FROM TM_RTGD_LIST
  WHERE rtgd_rgst_rdp_code = '503'    ---수불처 코드 조회 
             AND rtgd_rgst_date = '20221006'    
             AND rtgd_rgst_num = '00002'           
 GO

 -- 2022-10-27 오전 9:56:59 KFLOW KHPL
 UPDATE KHPL..TM_RTGD_LIST   /*11366*/
         SET rtgd_prgs_cdtn_code = '508'     ----매입처 확정 
             , vndr_decs_date =  CONVERT(varchar(8), GETDATE(), 112)         
             , amnr_id = '11405'                              
             , amnd_dttm = GETDATE()
         WHERE rtgd_rgst_rdp_code = '503' 
             AND rtgd_rgst_date = '20221006'  
             AND rtgd_rgst_num = '00002'        
 GO

 -- 2022-10-27 오전 9:57:06 KFLOW KHPL
 SELECT *
 FROM TM_RTGD_LIST
  WHERE rtgd_rgst_rdp_code = '503'    ---수불처 코드 조회 
             AND rtgd_rgst_date = '20221006'      --- 계약 날짜 
             AND rtgd_rgst_num = '00002'
 GO

 -- 2022-10-27 오전 10:28:10 KFLOW KHPL
 SELECT cpcm_ctrc_srmb
 GO

 -- 2022-10-27 오전 10:28:19 KFLOW KHPL
 SELECT cpcm_ctrc_srmb
 FROM TM_CPCM_CTRC
        WHERE cpcm_id ='0004564'      
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '50'                 --------
 AND ctrc_date='20221006'                 
 GO

 -- 2022-10-27 오전 10:28:44 KFLOW KHPL
 SELECT TOP 100 cpcm_ctrc_srmb
 FROM TM_CPCM_CTRC
        WHERE cpcm_id ='0004564'      
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '50'                 --------
 AND ctrc_date='20221006'                  



 SELECT *
 FROM TM_RTGD_LIST
  WHERE rtgd_rgst_rdp_code = '503'    
             AND rtgd_rgst_date = '20221006'     
             AND rtgd_rgst_num = '00002'         
 SELECT *
 FROM TM_CPCM_CTRC
        WHERE cpcm_id ='0004564'      
 --         AND cpcm_ctrc_srmb = 99        /*협력사 계약 순번*/    -- 계약 순번 조회시 여러개 존재할 경우 (계약서 일자 ctrc_date  로 조건 넣어 select 조회)       
 	   AND rdp_code = '503'                
 AND ctrc_date='20221006'                  
 GO