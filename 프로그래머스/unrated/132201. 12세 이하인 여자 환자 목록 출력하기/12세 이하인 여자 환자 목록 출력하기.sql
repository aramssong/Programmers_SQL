-- 12세 이하 여자환자 (이름, 번호, 코드, 나이, 전화번호)
-- 전화번호 없음 -> NONE 출력
-- 나이 기준 내림차순
-- 나이가 같다면 이름 기준 오름차순

SELECT PT_NAME
     , PT_NO
     , GEND_CD
     , AGE
     , CASE WHEN TLNO is NULL THEN "NONE" ELSE TLNO END
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC