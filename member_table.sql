1. 모든 필드 출력 + member_id가 3, 5번 레코드만 출력하기
    
SELECT * FROM member WHERE member_id=3 OR member_id=5;
+-----------+--------+-----+
| member_id | name   | age |
+-----------+--------+-----+
|         3 | 가현   |  30 |
|         5 | 현철   |  18 |
+-----------+--------+-----+
    
2. name, age 필드 출력하고, 2 <= member_id <= 5번 레코드만 출력하기 (조건에 AND 사용)
    
SELECT name, age FROM member WHERE member_id>=2 AND member_id<=5;
+--------+-----+
| name   | age |
+--------+-----+
| 영호   |  28 |
| 가현   |  30 |
| 민수   |  35 |
| 현철   |  18 |
+--------+-----+
    
3. 나이가 20대인 친구들만 출력 (모든 필드 출력)
    
SELECT * FROM member WHERE age>=20 AND age<30;
+-----------+--------+-----+
| member_id | name   | age |
+-----------+--------+-----+
|         1 | 민철   |  20 |
|         2 | 영호   |  28 |
|         6 | 장현   |  29 |
+-----------+--------+-----+

    
4. member_id가 짝수이면서, age는 홀수인 친구들만 출력 (사람 이름만 출력)
    
SELECT name FROM member WHERE member_id%2=0 AND age%2=1;
+--------+
| name   |
+--------+
| 민수   |
| 장현   |
+--------+
    
5. member_id를 “번호”, name을 “성함”, age를 “나이” 로 출력 + 나이 오름차순으로 정렬
    
SELECT member_id AS '번호', name AS '성함', age AS '나이' FROM member ORDER BY age;
+--------+-----------+--------+
| 번호   | 성함      | 나이   |
+--------+-----------+--------+
|      5 | 현철      |     18 |
|      1 | 민철      |     20 |
|      2 | 영호      |     28 |
|      6 | 장현      |     29 |
|      3 | 가현      |     30 |
|      4 | 민수      |     35 |
|      8 | 박중박    |     50 |
+--------+-----------+--------+

    
6. 이름 사전 순서대로(오름차순) 나이, 이름만 출력하기
    
SELECT age,name FROM member ORDER BY name;
+-----+-----------+
| age | name      |
+-----+-----------+
|  30 | 가현      |
|  35 | 민수      |
|  20 | 민철      |
|  50 | 박중박    |
|  28 | 영호      |
|  29 | 장현      |
|  18 | 현철      |
+-----+-----------+
    
7. member_id 2 번과 4 번 레코드의 나이를 모두 15로 수정
    
mysql> UPDATE member SET age=15 WHERE member_id=2 OR member_id=4;
Query OK, 2 rows affected (0.00 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM member;
+-----------+-----------+-----+
| member_id | name      | age |
+-----------+-----------+-----+
|         1 | 민철      |  20 |
|         2 | 영호      |  15 |
|         3 | 가현      |  30 |
|         4 | 민수      |  15 |
|         5 | 현철      |  18 |
|         6 | 장현      |  29 |
|         8 | 박중박    |  50 |
+-----------+-----------+-----+

    
8. 1 번 레코드 삭제

mysql> DELETE FROM member WHERE member_id=1;
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM member;
+-----------+-----------+-----+
| member_id | name      | age |
+-----------+-----------+-----+
|         2 | 영호      |  15 |
|         3 | 가현      |  30 |
|         4 | 민수      |  15 |
|         5 | 현철      |  18 |
|         6 | 장현      |  29 |
|         8 | 박중박    |  50 |
+-----------+-----------+-----+
    
9. 레코드 추가 (촉촉, 100)

INSERT INTO member (`name`, `age`) VALUES ('촉촉', 100);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM member;
+-----------+-----------+-----+
| member_id | name      | age |
+-----------+-----------+-----+
|         2 | 영호      |  15 |
|         3 | 가현      |  30 |
|         4 | 민수      |  15 |
|         5 | 현철      |  18 |
|         6 | 장현      |  29 |
|         8 | 박중박    |  50 |
|        10 | 촉촉      | 100 |
+-----------+-----------+-----+