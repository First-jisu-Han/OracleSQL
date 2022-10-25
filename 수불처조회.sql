-- 수불처 대구점 20221025일 발주확정 상태코드를 가진 미삭제 리스트들---
-- ( 조인할때 pk가 겹치는 것들은 모두 INNER JOIN on 조건으로 넣어야 한다. dlt_ysno : 삭제여부 같은 경우에도 INNER JOIN 시 테이블 마다 조건을 모두 넣도록 한다. EX) T1.dlt_ysno = 'N' AND T2.dlt_ysno='N' 등등 *

SELECT t3. *
FROM TM_PLOR t1 INNER
JOIN TD_PLOR_DTL t2
ON t1.plor_rdp_code = t2.plor_rdp_code
AND t1.plor_date=t2.plor_date
AND t1.plor_num=t2.plor_num INNER
JOIN TD_PLOR_DTL_PRGS_CDTN t3
ON t2.plor_rdp_code = t3.plor_rdp_code
AND t2.plor_rdp_code=t3.plor_rdp_code
AND t2.plor_date=t3.plor_date
AND t2.plor_num=t3.plor_num
AND t2.plor_srmb=t3.plor_srmb
WHERE t3.plor_rdp_code = '570'
AND t3.plor_date = '20221025'
AND t3.plor_prgs_cdtn_code = '502'
AND t3.dlt_ysno = 'N'
AND t1.dlt_ysno= 'N'
AND t2.dlt_ysno= 'N'



*-- 수불처 : 잠실점 , 20221029일에서 7 일전 반품건 리스트 조회 *


SELECT * FROM TM_RTGD_LIST tm1 INNER JOIN
TD_RTGD_LIST_DTL td2
ON tm1.rtgd_rgst_rdp_code=td2.rtgd_rgst_rdp_code
AND tm1.rtgd_rgst_date=td2.rtgd_rgst_date
AND tm1.rtgd_rgst_num=td2.rtgd_rgst_num
WHERE tm1.rtgd_rgst_rdp_code='521'
AND td2.rtgd_rgst_date BETWEEN '20221019' AND '20221025'
AND td2.dlt_ysno='N' AND tm1.dlt_ysno='N'