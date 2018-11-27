CREATE database if not exists MVCDB;

use MVCDB;


CREATE TABLE IF NOT EXISTS Customers (
	customerId 		INT				PRIMARY KEY 	AUTO_INCREMENT,
	userName 		VARCHAR(20) 	NOT NULL,
	password 		VARCHAR(20) 	NOT NULL,
	firstname 		VARCHAR(20) 	NOT NULL,
	lastname 		VARCHAR(20) 	NOT NULL,
	address 		VARCHAR(50) 	NOT NULL,
	city 			VARCHAR(20) 	NOT NULL,
	postalCode 		VARCHAR(6) 		NOT NULL
);


-- (Customer Service Representative) is CSR
CREATE TABLE IF NOT EXISTS CSR (
	employeeId 		INT				PRIMARY KEY 	AUTO_INCREMENT,
	userName 		VARCHAR(20) 	NOT NULL,
	password 		VARCHAR(20) 	NOT NULL,
	firstname 		VARCHAR(20) 	NOT NULL,
	lastname 		VARCHAR(20) 	NOT NULL
);


CREATE TABLE IF NOT EXISTS Shoes (
	itemId 			INT				PRIMARY KEY 	AUTO_INCREMENT,
	itemName 		VARCHAR(30) 	NOT NULL,
	category 		VARCHAR(20) 	NOT NULL,
	shoeSize 		INT(50) 		NOT NULL,
	price  			DECIMAL(9,2)
);

CREATE TABLE IF NOT EXISTS Orders (
	orderId 		INT				PRIMARY KEY 	AUTO_INCREMENT,
	customerId 		INT 			NOT NULL ,
	itemId 			INT 			NOT NULL ,
	orderDate 		DATE 			NOT NULL,
	quantity 		INT(50)			NOT NULL,
	status 			VARCHAR(50) 	NOT NULL,
	FOREIGN KEY (customerId) 		REFERENCES Customers(customerId),
	FOREIGN KEY (itemId) 			REFERENCES Shoes(itemId)
);
-- insert into customers ( userName,password,firstname,lastname,address,city,postalCode) Values
-- ('userName' ,	'password','firstname','lastname','address','city','DlCode' );
insert into Shoes (itemName, category, shoeSize, price) values ('Native Toddler Charley Sandal','Kid Shoes', 9, 129.00);


Select * from Shoes Where category = 'Woman shoes' AND itemName = 'Chiara, Gold Leopard '; -- itemName = 'Chiara, Gold Leopard'
SELECT itemName, category, price FROM Shoes  Where category = 'Woman shoes' GROUP BY itemName;

select * from Customers;
select * from CSR;
select * from Shoes;
select * from orders;