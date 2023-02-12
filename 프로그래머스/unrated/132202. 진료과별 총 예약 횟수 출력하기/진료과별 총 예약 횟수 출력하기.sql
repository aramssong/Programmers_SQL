-- 22년 5월에 예약한 환자 수를 진료과코드 별로 조회
-- 컬럼명 :  '진료과코드', '5월예약건수'
-- 진료과별 예약한 환자 수를 기준으로 오름차순 정렬, 진료과 코드 기준 오름차순

SELECT MCDP_CD AS '진료과코드'
     , COUNT(*) AS '5월예약건수'
FROM APPOINTMENT
WHERE MONTH(APNT_YMD) = '05'
GROUP BY MCDP_CD
ORDER BY COUNT(*), MCDP_CD