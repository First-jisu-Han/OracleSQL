SELECT *
  FROM TM_CMDT_SALE
WHERE sale_date = '20220622'
and cmdt_id =dbo.UF_GET_CMDT_ID('6972189204637');


# 매출-반품 =0 으로 나와야 함- case when then 으로 해결하도록 

SELECT cmdt_code,
      sum(CASE WHEN trnc_dvsn_code  ='501' THEN sale_qntt ELSE -sale_qntt END)
  FROM TM_CMDT_SALE
WHERE sale_date = '20220622'
AND  rdp_code = '570'
and cmdt_id =dbo.UF_GET_CMDT_ID('6972189204637')
GROUP BY cmdt_code;

# 0이 나와야하는 것 . 즉 환불한것이다.