-- 아이스크림 총주문량(Total_order) 3000 이상
-- 주성분(Ingrdient_type)이 과일 (fruit_based)
-- 총 주문량이 큰 순서대로 조회

SELECT f.FLAVOR
FROM FIRST_HALF AS f
    INNER JOIN ICECREAM_INFO AS i
        ON f.FLAVOR = i.FLAVOR
WHERE TOTAL_ORDER >= 3000
    AND INGREDIENT_TYPE = 'fruit_based'
ORDER BY TOTAL_ORDER DESC