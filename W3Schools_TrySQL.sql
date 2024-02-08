-- 1. CustomerID 33초과이면서, EmployeeID 5 미만 출력
SELECT * FROM Orders WHERE CustomerID > 33 AND EmployeeID < 5;


-- 2. OrderID 10,000 미만 또는 ShipperID 5 미만 출력
SELECT * FROM Orders WHERE OrderID < 10000 OR ShipperID < 5;


-- 3. OrderDetails의 ProductID가 14보다 큰 모든 필드 출력
SELECT * FROM OrderDetails WHERE ProductID > 14;


-- 4. CustomerName, city 필드 출력 10 < CustomerID <= 50 레코드출력 (Customers에 데이터 존재)
SELECT CustomerName, city FROM Customers WHERE 10 < CustomerID AND CustomerID <= 50;


-- 5. Orders에 CustomerId 가 30번대만 출력 (모든 필드 출력, and 사용)
SELECT * FROM Orders WHERE 30 <= CustomerID AND CustomerID <= 39;


-- 6. ProductID가 짝수이면서, SupplierId 홀수인 ProductName과 ProductID 출력 (Products)
SELECT ProductName, ProductID FROM Products WHERE ProductID % 2 = 0 AND SupplierID % 2 = 1;


-- 7. Customers에 Address를 “주소”, city를 “도시”, PostalCode를 “우편번호” 로 출력, 우편번호 내림차순으로 정렬
SELECT Address AS "주소", city AS "도시", PostalCode AS "우편번호" FROM Customers ORDER BY PostalCode DESC;


-- 8. OrderDetails에 OrderDetailID를 기준으로 내림차순으로 정렬하고, 5개만 출력하기 (모든 컬럼)
SELECT * FROM OrderDetails ORDER BY OrderDetailID DESC LIMIT 5;


-- 9. Orders에 모든 컬럼을 OrderId를 기준으로 내림차순 정렬후, 3개를 건너띄고 7개만큼 출력하기
SELECT * FROM Orders ORDER BY OrderID DESC LIMIT 3, 7;


/* 
10. OrderDetail 에서 다음 alias 지정
    OrderDetailID => 상세주문번호
    OrderID => 주문번호 
    ProductID => 상품번호
    Quantity => 수량
    OrderID 10,000 이하 또는 ProductID 50 이상을 출력하되, 
    OrderDetailID 기준 내림차순 정렬하며,
    8개만 출력
*/
SELECT OrderDetailID AS "상세주문번호", OrderID AS "주문번호", ProductID AS "상품번호", Quantity AS "수량" FROM OrderDetails WHERE OrderID <= 10000 OR ProductID >= 50 ORDER BY OrderDetailID DESC LIMIT 8;


-- 11. OrderDetails 의 모든 컬럼을 출력하되, ProductID 가 1 로 시작하는 모든 레코드 출력
SELECT * FROM OrderDetails WHERE ProductID LIKE "1%";


-- 12. OrderDetails 의 모든 컬럼을 출력하되, ProductID 의 십의자리가 1인 모든 레코드 출력
SELECT * FROM OrderDetails WHERE ProductID LIKE "1_";