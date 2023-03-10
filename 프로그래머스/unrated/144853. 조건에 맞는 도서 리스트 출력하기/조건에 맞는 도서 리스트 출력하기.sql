-- 출판일 : 2021, 카테고리 : 인문
-- 도서 ID, 출판일 출력
-- 출판일 기준으로 오름차순 정렬

SELECT BOOK_ID
     , DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
WHERE YEAR(PUBLISHED_DATE) = 2021
  AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE