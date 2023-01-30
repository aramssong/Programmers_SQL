-- 가격이 가장 비싼 식품
-- 식품 ID, 식품 이름, 식품 코드, 식품 분류, 식품 가격 조회
SELECT PRODUCT_ID
     , PRODUCT_NAME
     , PRODUCT_CD
     , CATEGORY
     , PRICE
FROM FOOD_PRODUCT
WHERE PRICE = (SELECT MAX(PRICE)
              FROM FOOD_PRODUCT)