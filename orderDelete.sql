SELECT TOP 100 *
FROM TM_PLOR
WHERE plor_rdp_code = '531'
AND plor_date='20221010'
AND plor_num ='00051'

SELECT TOP 100 *
FROM TD_PLOR_DTL
WHERE plor_rdp_code = '531'
AND plor_date='20221010'
AND plor_num ='00051'

SELECT *
FROM TD_PLOR_DTL_PRGS_CDTN
WHERE plor_rdp_code = '531'
AND plor_date='20221010'
AND plor_num ='00051'

SELECT *
FROM KHCM..TM_VNDR
WHERE vndr_code = '0800403'


발주 마스터 삭제
UPDATE KHPL..TM_PLOR
SET dlt_ysno = 'Y'
, amnr_id = 'master_9999'
, amnd_dttm = getdate()
WHERE plor_rdp_code = '531'
AND plor_date='20221010'
AND plor_num ='00051'


발주상세 삭제
UPDATE KHPL..TD_PLOR_DTL
SET dlt_ysno = 'Y'
, amnr_id = 'master_9999'
, amnd_dttm = getdate()
WHERE plor_rdp_code = '531'
AND plor_date='20221010'
AND plor_num ='00051'


-- 이력 리스트 모두삭제
UPDATE KHPL..TD_PLOR_DTL_PRGS_CDTN
SET dlt_ysno = 'Y'
, amnr_id = 'master_9999'
, amnd_dttm = getdate()
WHERE plor_rdp_code = '531'
AND plor_date='20221010'
AND plor_num ='00051'