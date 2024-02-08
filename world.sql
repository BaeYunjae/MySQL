-- 1. 인구수가 1000명 미만이면서, A로 시작하는 도시 찾기

SELECT * FROM city WHERE Population < 1000 AND NAME LIKE 'A%';
+------+-----------+-------------+----------+------------+
| ID   | Name      | CountryCode | District | Population |
+------+-----------+-------------+----------+------------+
| 2805 | Alofi     | NIU         | –        |        682 |
| 2912 | Adamstown | PCN         | –        |         42 |
+------+-----------+-------------+----------+------------+


-- 2. 일본 (JPN) 에서, 인구수가 100만명 ~ 200만명 인 도시를 찾아 도시 이름과, 국가 코드 (JPN) 필드만 출력하기

SELECT name, countrycode FROM city WHERE countrycode = 'JPN' AND (population BETWEEN 1000000 AND 2000000)
+------------+-------------+
| name       | countrycode |
+------------+-------------+
| Sapporo    | JPN         |
| Kioto      | JPN         |
| Kobe       | JPN         |
| Fukuoka    | JPN         |
| Kawasaki   | JPN         |
| Hiroshima  | JPN         |
| Kitakyushu | JPN         |
+------------+-------------+


-- 3. kim 이라는 글자가 포함된 도시명 찾기

SELECT name FROM city WHERE name LIKE '%kim%';
+-----------+
| name      |
+-----------+
| Kimberley |
| Kimitsu   |
| Kimchaek  |
| Kimhae    |
| Kimchon   |
| Kimje     |
+-----------+


-- 4. world 스키마의 레코드 총 개수 출력

SELECT count(*) AS '레코드수' FROM city;
+--------------+
| 레코드수     |
+--------------+
|         4079 |
+--------------+


-- 5. 하위 5개의 도시 코드, 인구수 출력

SELECT CountryCode AS '도시 코드', Population AS '인구수' FROM city ORDER BY Population LIMIT 5;
+---------------+-----------+
| 도시 코드     | 인구수    |
+---------------+-----------+
| PCN           |        42 |
| CCK           |       167 |
| TKL           |       300 |
| VAT           |       455 |
| CCK           |       503 |
+---------------+-----------+


-- 6. TOP 5개의 국가 코드, 인구수 출력

SELECT CountryCode AS '도시 코드', Population AS '인구수' FROM city ORDER BY Population DESC LIMIT 5;
+---------------+-----------+
| 도시 코드     | 인구수    |
+---------------+-----------+
| IND           |  10500000 |
| KOR           |   9981619 |
| BRA           |   9968485 |
| CHN           |   9696300 |
| IDN           |   9604900 |
+---------------+-----------+