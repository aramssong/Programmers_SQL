-- 강원도 위치한 식품공장
-- 공장 ID, 공장 이름, 주소
-- 공장 ID 기준 오름차순

SELECT FACTORY_ID
     , FACTORY_NAME
     , ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '강원도%'
ORDER BY FACTORY_ID