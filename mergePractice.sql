MERGE INTO EMP_INFO
USING DUAL 
   ON (EMPID=#{empid} 
WHEN MATCHED THEN 
    UPDATE
        SET EMP_STCD = #{emp_stcd}
        ,   GRPID=#{grpid}
        ,   IPAD=#{ipad}
        ,   MNG_BOCD =#{mng_bocd}
        ,   OUTL =#{outl}
        ,   LAST_CHNG_USRID = #{last_chng_usrid}
        ,   LAST_CHNG_TMSP = SYSTIMESTAMP 
WHEN NOT MATCHED THEN 
      INSERT( 
             EMPID
             ,EMP_PWD 
             ,EMP_STCD 
             ,GRPID
      VALUES(
             #{empid}
             #{emp_pwd}
             #{emp_stcd}
             #{grpid}
             )

//  <update> 마이바티스에서 사용 MERGE INTO , WHEN MATCHED THEN , WHEN NOT MATCHED THEN  