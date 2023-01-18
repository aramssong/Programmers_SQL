-- 진료과 : 흉부외과(CS), 일반외과(GS)
-- 이름, 의사ID, 진료과, 고용일자
-- 고용일자 기준 내림차순
-- 이름 기준 오름차순

SELECT DR_NAME
     , DR_ID
     , MCDP_CD
     , DATE_FORMAT(HIRE_YMD, "%Y-%m-%d") AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD IN ('CS', 'GS')
ORDER BY HIRE_YMD DESC, DR_NAME ASC