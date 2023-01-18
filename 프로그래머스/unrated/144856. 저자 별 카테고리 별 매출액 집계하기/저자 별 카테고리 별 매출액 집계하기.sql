-- 2022년 1월의 도서 판매 데이터 기준
-- 저자 별, 카테고리 별 매출액 (TOTAL_SALES = 판매량 * 판매가)
-- AUTHOR_ID, AUTHOR_NAME, CATEGORY, SALES 출력
-- 저자 ID 기준 오름차순, 카테고리 기준 내림차순

-- 2022년 1월의 도서 판매 데이터 기준
-- 저자 별, 카테고리 별 매출액 (TOTAL_SALES = 판매량 * 판매가)
-- AUTHOR_ID, AUTHOR_NAME, CATEGORY, SALES 출력
-- 저자 ID 기준 오름차순, 카테고리 기준 내림차순

WITH SUB_TABLE AS (
    SELECT B.AUTHOR_ID
         , B.CATEGORY
         , SUM(B.PRICE * SALES) AS TOTAL_SALES
    FROM BOOK_SALES AS S
        INNER JOIN BOOK AS B
            ON S.BOOK_ID = B.BOOK_ID
    WHERE DATE_FORMAT(SALES_DATE, '%Y-%m') = '2022-01'
    GROUP BY B.AUTHOR_ID, B.CATEGORY
    ORDER BY B.AUTHOR_ID, B.CATEGORY DESC
    )

SELECT S.AUTHOR_ID
     , A.AUTHOR_NAME
     , S.CATEGORY
     , S.TOTAL_SALES
FROM SUB_TABLE AS S
    INNER JOIN AUTHOR AS A
        ON S.AUTHOR_ID = A.AUTHOR_ID