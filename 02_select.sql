---------------------------------------
-- 테이블 구조 확인
DESC customer;
DESCRIBE customer;

SHOW COLUMNS FROM customer;
SHOW FULL COLUMNS FROM customer;

SHOW CREATE TABLE customer;
---------------------------------------
-- 모든 열 조회
SELECT * FROM customer;
---------------------------------------
-- 특정 컬럼 조회
SELECT name, age FROM customer;
---------------------------------------
-- 조건에 맞는 데이터 조회
SELECT * FROM customer WHERE age=36;
---------------------------------------
-- 산술 연산자
SELECT 23.5 + 7, 23.5 - 7, 23.5 / 2, 23.5 DIV 2, 23.5 % 2, 23.5 MOD 2, 23.5 * 2;
---------------------------------------
-- 논리 연산자 & 비교연산자
SELECT * FROM customer WHERE age>=20 AND gender='M';
SELECT * FROM customer WHERE email<=>NULL;
---------------------------------------
-- IN
SELECT * FROM beverage WHERE price IN (3500, 5000);

SELECT * FROM beverage WHERE price=3500 OR price=5000;
---------------------------------------
-- BETWEEN
SELECT * FROM beverage WHERE price BETWEEN 3500 AND 5000;

SELECT * FROM beverage WHERE price>=3500 AND price<=5000;
---------------------------------------
-- LIKE
SELECT * FROM beverage WHERE category LIKE 'Hot%';
---------------------------------------
-- IS NULL / IS NOT NULL
SELECT * FROM customer WHERE nickname IS NULL;

SELECT * FROM customer WHERE nickname=NULL;
SELECT length(nickname) FROM customer WHERE nickname IS NULL;
---------------------------------------
-- alias
SELECT date_format(date_ordered, '%Y-%m-%d') FROM orders;
SELECT date_format(date_ordered, '%Y-%m-%d') AS '주문날짜' FROM orders;

SELECT c.* FROM (SELECT * FROM customer) c; 
---------------------------------------
-- order by
SELECT * FROM customer ORDER BY name;
SELECT * FROM customer ORDER BY name ASC;
SELECT * FROM customer ORDER BY name DESC;

SELECT * FROM customer ORDER BY 2 DESC;
SELECT * FROM customer ORDER BY 2 ASC, 4 DESC;
---------------------------------------
-- distinct
SELECT category FROM beverage ORDER BY 1;
SELECT DISTINCT category FROM beverage;
SELECT UNIQUE category FROM beverage;
---------------------------------------
-- limit
SELECT * FROM beverage ORDER BY price DESC;
SELECT * FROM beverage ORDER BY price DESC LIMIT 5;

SELECT * FROM beverage ORDER BY price DESC LIMIT 6, 5;

SELECT b.*, RANK() OVER (ORDER BY price DESC) AS 'rank' FROM beverage b;
---------------------------------------