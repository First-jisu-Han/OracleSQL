SELECT t3.cpcm_id ,*FROM KHCM..TM_VNDR t1, KHCM..TM_CRPN_CSTM_BSC t2 , TM_CPCM t3 , TD_CPCM_MPNG t4

where t1.cstm_num = t2.cstm_num

AND t2.bsnn_rgst_num = t3.bsnn_rgst_num 

AND t4.cpcm_id = t3.cpcm_id

AND t4.cstm_num = t2.cstm_num

AND t2.cstm_num = t1.cstm_num

and t1.vndr_code='0800921'

 

SELECT * FROM KHPL..TM_CPCM_CTRC 

WHERE cpcm_id='0002284'AND ctrc_date='20221017'

 

SELECT * FROM KHPL..TM_RTGD_LIST

      WHERE rtgd_rgst_rdp_code = '502'    

            AND rtgd_rgst_date = '20221017'    

            AND rtgd_rgst_num = '00001'         

 

 

 

UPDATE KHPL..TM_RTGD_LIST

        SET rtgd_prgs_cdtn_code = '508' 

            , vndr_decs_date = CONVERT(varchar(8), GETDATE(), 112)      

            , amnr_id = '11405'               

            , amnd_dttm = GETDATE()

        WHERE rtgd_rgst_rdp_code = '502'    

            AND rtgd_rgst_date = '20221017'    

            AND rtgd_rgst_num = '00001'         

 

 

 

 

UPDATE KHPL..TM_CPCM_CTRC

       SET ctrc_cdtn_code = '504',

            aprv_mngm_num = '',

            aprv_cdtn_code = '501',

            apro_dttm = GETDATE(),

            rjct_dttm = NULL,

            rjct_rsn_cntt = NULL,

            amnr_id = '11405',                  

                  amnd_dttm = GETDATE()

       WHERE cpcm_id ='0002284'             

	   AND rdp_code = '502'

AND ctrc_date='20221017' 