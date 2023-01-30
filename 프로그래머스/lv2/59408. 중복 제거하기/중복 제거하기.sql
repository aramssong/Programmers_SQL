-- 동물의 이름이 몇 개인지 조회
-- NULL인 경우 집계 x
-- 중복 제거

SELECT COUNT(DISTINCT NAME) AS count
FROM ANIMAL_INS
WHERE NAME IS NOT NULL