-- 음식종류별 즐겨찾기수가 가장 많은 식당
-- 음식 종류, ID, 식당 이름, 즐겨찾기수 조회
-- 음식 종류를 기준으로 내림차순 정렬

SELECT FOOD_TYPE
     , REST_ID
     , REST_NAME
     , FAVORITES
FROM REST_INFO
WHERE (FOOD_TYPE, FAVORITES) IN (
    SELECT FOOD_TYPE
         , MAX(FAVORITES)
    FROM REST_INFO
    GROUP BY FOOD_TYPE
    )
ORDER BY FOOD_TYPE DESC