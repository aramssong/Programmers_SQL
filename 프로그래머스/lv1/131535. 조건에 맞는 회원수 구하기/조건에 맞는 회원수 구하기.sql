-- 2021년에 가입한 회원
-- 나이 20세 이상 29세 이하

SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE YEAR(JOINED) = 2021
    AND AGE BETWEEN 20 AND 29