-- 담당자 수정 요청 로그에 elft outer join으로 3개연관되어있지만 erd 상 하나만 업데이트하면 됨 
   SELECT rtrim(t1.user_id)    userId
             , t1.rppr_task_cntt    rpprTaskCntt
             , t2.user_name         userName
             , t2.tlnm              tlnm
             , t2.eml_adrs          emlAdrs
             , t3.dprt_name         dprtName
             , t4.rdp_tlnm          rdpTlnm
             , dbo.UF_GET_CODE_NAME('5331', t1.rppr_dvsn_code)  rpprDvsnName
             , dbo.UF_GET_CODE_NAME('5101', t2.pstn_code)       pstnName
          FROM TD_USER_RPPR t1
          LEFT JOIN TM_USER t2 ON t1.user_id = t2.user_id AND t2.dlt_ysno = 'N'
          LEFT JOIN TM_UNFY_DTRB_DPRT t3 ON t2.dprt_code = t3.dprt_code AND t3.dlt_ysno = 'N'
          LEFT JOIN TM_RDP t4 ON t1.rdp_code = t4.rdp_code AND t4.dlt_ysno = 'N'
         WHERE t1.rppr_dvsn_code = '501'
           AND t1.dlt_ysno = 'N'
         ORDER BY t4.code_rnkn, t1.prrt_rnkn, t3.dprt_code;



UPDATE dbo.TD_USER_RPPR
  SET  amnr_id = '11405'
     , amnd_dttm =  getdate()
     , dlt_ysno = 'Y'
 WHERE rdp_code = '502'
   AND user_id  = '11340'
   AND rppr_dvsn_code = '501';





SELECT * FROM TD_USER_RPPR t1 LEFT JOIN TM_USER t2 ON t1.user_id = t2.user_id AND t2.dlt_ysno = 'N'
          LEFT JOIN TM_UNFY_DTRB_DPRT t3 ON t2.dprt_code = t3.dprt_code AND t3.dlt_ysno = 'N';

SELECT * FROM TD_USER_RPPR
WHERE rdp_code = '502'
   AND user_id  = '11409'
   AND rppr_dvsn_code = '501';

UPDATE dbo.TD_USER_RPPR
  SET  amnr_id = '11405'
     , amnd_dttm =  getdate()
     , rppr_task_cntt='담당내용--------'
 WHERE rdp_code = '502'
   AND user_id  = '11364'
   AND rppr_dvsn_code = '501';
   

SELECT * FROM TM_USER
WHERE user_name='김**';

UPDATE dbo.TD_USER_RPPR
  SET  amnr_id = '11405'
     , amnd_dttm =  getdate()
     , dlt_ysno = 'Y'
 WHERE rdp_code = '502'
   AND user_id  = '80712'
   AND rppr_dvsn_code = '501';



 INSERT INTO dbo.TD_USER_RPPR
 (
 rdp_code
 , user_id
 ,  rppr_dvsn_code
 , rppr_task_cntt
 , prrt_rnkn
 , crtr_id
 ,  cret_dttm
 , amnr_id
 , amnd_dttm
 ,  dlt_ysno
 )
VALUES
 (
 '502'
 , '11409'
 , '501'
 ,  '담당내용------'
 , 19
 , '11186'
 , getdate()
 , '11405'
 ,  getdate()
 , 'N'
 );