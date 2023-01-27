-- 생일이 3월인 여성회원
-- ID, 이름, 성별, 생년월일
-- 전화번호가 NULL -> 출력 대상 제외
-- 회원 ID 기준 오름차순 정렬

SELECT MEMBER_ID
     , MEMBER_NAME
     , GENDER
     , DATE_FORMAT(DATE_OF_BIRTH, "%Y-%m-%d") AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE MONTH(DATE_OF_BIRTH) = '03' AND GENDER = 'W'
    AND TLNO IS NOT NULL
ORDER BY MEMBER_ID