-- 서울에 위치한 식당
-- 식당 ID, 이름, 음식 종류, 즐겨찾기 수, 주소, 리뷰 평균 점수
-- 리뷰 평균 점수 : 소수점 세번째 자리에서 반올림
-- 평균 점수를 기준으로 내림차순
-- 즐겨찾기 수를 기준으로 내림차순

SELECT i.REST_ID
     , i.REST_NAME
     , i.FOOD_TYPE
     , i.FAVORITES
     , i.ADDRESS
     , ROUND(AVG(r.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO AS i
    INNER JOIN REST_REVIEW AS r
        ON i.REST_ID = r.REST_ID
WHERE i.ADDRESS LIKE '서울%'
GROUP BY i.REST_ID
ORDER BY SCORE DESC, FAVORITES DESC