# 테이블 mytable 생성> 자료입력(insert into - values) 
USE mydata;
SHOW DATABASES;
SHOW TABLES;
DESC mytable;
INSERT INTO mytable VALUES(1, 'i7', '7700', 'Kaby Lake');
SELECT * FROM mytable;
INSERT INTO mytable (name, model_num, model_type) VALUES('i7', '7700K', 'Kaby Late');
SELECT * FROM mytable;

ALTER TABLE mytable MODIFY COLUMN model_type VARCHAR(30) NOT NULL;
INSERT INTO mytable (name, model_num, model_type) VALUES('i5', '9600K', 'Coffee Lake refresh');
INSERT INTO mytable (name, model_num, model_type) VALUES('i5', '9400F', 'Coffee Lake refresh');
INSERT INTO mytable (name, model_num, model_type) VALUES('i7', '9700K', 'Coffee Lake refresh');
INSERT INTO mytable (name, model_num, model_type) VALUES('i7', '8700', 'Coffee Lake');
INSERT INTO mytable (name, model_num, model_type) VALUES('i5', '8500', 'Coffee Lake');

# 이름 바꿔 출력 (select 컬럼명 AS 출력명 FROM 테이블명);
SELECT name AS cpu_name, model_num AS cpu_num FROM mytable;
# WHERE 조건문 - ORDER BY - LIMIT // LIKE = 연관검색어 // %, _ 사용법의 차이
SELECT id, name FROM mytable ORDER BY name DESC;
SELECT id, name FROM mytable WHERE id > 3;  
SELECT id, name FROM mytable WHERE id > 3 AND id < 7;  
SELECT id, name FROM mytable WHERE id < 3 OR id > 6;  
SELECT id, name FROM mytable WHERE id < 3 AND name = 'i7';  
SELECT * FROM mytable WHERE model_type LIKE '_____Lake' OR name='i7';

#limit 사용
SELECT id, name FROM mytable LIMIT 2, 2;
SELECT id, name FROM mytable WHERE id < 4 AND name LIKE '%i%' ORDER BY name DESC LIMIT 2;

#model_num = 7700검색
SELECT * FROM mytable WHERE model_num LIKE '7700%';
SELECT * FROM mytable WHERE name = 'i7';
SELECT * FROM mytable WHERE model_type = 'Kaby Lake' LIMIT 1; 

# UPDATE는 where 조건절과 동시 적용해야 적용 원하는 부분만 가능하다.
UPDATE mytable SET name = 'i7';
SELECT * FROM mytable;
UPDATE mytable SET name = 'i3' WHERE id = 3;
UPDATE mytable SET name = 'i5' WHERE id = 4;
UPDATE mytable SET name = 'i5' WHERE id = 7;
UPDATE mytable SET model_num = '5500K' WHERE id = 3;

# 데이터 삭제
DELETE FROM mytable WHERE id = 1;

# 컬럼 추가 예제
ALTER TABLE mytable ADD COLUMN lowest_price INT UNSIGNED;
DESC mytable;
SELECT * FROM mytable;

# 데이터 업데이트
UPDATE mytable SET lowest_price = 176660 WHERE id = 2;
UPDATE mytable SET lowest_price = 468090 WHERE id = 3;
UPDATE mytable SET lowest_price = 357520 WHERE id = 4;
UPDATE mytable SET lowest_price = 252130 WHERE id = 5;
UPDATE mytable SET lowest_price = 369800 WHERE id = 6;

# lowest_price <= 300000 중에서 name과 model_num만 검색하기
SELECT name, model_num from mytable WHERE lowest_price <= 300000;

# lowest_price >= 400000 검색하기
SELECT * from mytable WHERE lowest_price >= 400000;

#ecommerce db 생성
CREATE DATABASE ecommerce;
USE ecommerce;
SHOW DATABASES;
CREATE TABLE product(
  PRODUCT_CODE VARCHAR(20) NOT NULL, 
  TITLE VARCHAR(200) NOT NULL,
  ORI_PRICE INT ,
  DISCOUNT_PRICE INT ,
  DISCOUNT_PERCENT INT ,
  DELIVERY VARCHAR(2) ,
  PRIMARY KEY(PRODUCT_CODE)
  );
DESC product;

CREATE TABLE ranking(
  ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  CATEGORY VARCHAR(50), 
  SUBCATEGORY VARCHAR(50),
  RANKING INT NOT NULL,
  PRODUCT_CODE VARCHAR(20) NOT NULL,
  PRIMARY KEY(ID)
  );
DESC ranking;

INSERT INTO product VALUES(
  '215673140', '여름 신상티', 23000, 6900, 70, 'F');
SELECT * FROM product;







