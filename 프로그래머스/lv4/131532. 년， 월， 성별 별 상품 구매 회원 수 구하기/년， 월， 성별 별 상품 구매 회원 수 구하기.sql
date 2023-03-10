-- 년, 월, 성별 별로 상품을 구매한 회원수를 집계
-- 년, 월, 성별을 기준으로 오름차순 정렬
-- 성별 정보가 없는 경우 결과에서 제외

SELECT YEAR(O.SALES_DATE) AS YEAR
     , MONTH(O.SALES_DATE) AS MONTH
     , U.GENDER
     , COUNT(DISTINCT U.USER_ID) AS USERS
FROM USER_INFO AS U
    INNER JOIN ONLINE_SALE AS O
        ON U.USER_ID = O.USER_ID
WHERE U.GENDER IS NOT NULL
GROUP BY YEAR(O.SALES_DATE), MONTH(O.SALES_DATE), U.GENDER
ORDER BY YEAR(O.SALES_DATE), MONTH(O.SALES_DATE), U.GENDER