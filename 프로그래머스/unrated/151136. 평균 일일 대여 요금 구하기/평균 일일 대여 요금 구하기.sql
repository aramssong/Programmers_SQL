-- 자동차 종류가 'SUV'인 자동차
-- 평균 일일 대여 요금 출력 (소수 첫번째 자리에서 반올림 컬럼명 : AVERAGE_FEE)
SELECT ROUND(AVG(DAILY_FEE), 0) as AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'