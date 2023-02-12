-- 0시부터 23시까지, 각 시간대별로 발생한 입양 건수 조회
-- 시간대 순으로 정렬

-- 변수 할당 : SET 사용 / 변수명 앞엔 @ 추가
-- := 연산자 → 왼쪽 피연산자에 오른쪽 피연산자를 대입함

SET @HOUR = -1;
SELECT (@HOUR := @HOUR + 1) AS HOUR
     , (SELECT COUNT(DISTINCT ANIMAL_ID)
        FROM ANIMAL_OUTS
        WHERE HOUR(DATETIME) = @HOUR
       ) AS COUNT
FROM ANIMAL_OUTS
WHERE @HOUR < 23;