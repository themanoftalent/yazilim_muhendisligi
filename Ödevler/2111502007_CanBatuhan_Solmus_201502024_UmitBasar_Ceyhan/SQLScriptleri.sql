-- PROJE ADI: ARAÇ OTO SATIŞ KİRALAMA SİSTEMİ


CREATE TABLE Brands (
    brand_id NUMBER(10) PRIMARY KEY,
    brand_name VARCHAR2(50)
);

CREATE TABLE Cars (
    car_id INT PRIMARY KEY,
    brand_id NUMBER(10),
    model VARCHAR2(50),
    year INT,
    color VARCHAR2(20),
    plate_number VARCHAR2(15),
    price NUMBER(10, 2),
    FOREIGN KEY (brand_id) REFERENCES Brands(brand_id)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    phone_number VARCHAR2(20),
    email VARCHAR2(50),
    address VARCHAR2(100)
);

CREATE TABLE Rentals (
    rental_id INT PRIMARY KEY,
    car_id INT,
    customer_id INT,
    rental_date DATE,
    return_date DATE,
    amount NUMBER(10, 2),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Brands tablosuna veri ekleme
INSERT INTO Brands (brand_id, brand_name)
VALUES (1, 'Toyota');

INSERT INTO Brands (brand_id, brand_name)
VALUES (2, 'Ford');

INSERT INTO Brands (brand_id, brand_name)
VALUES (3, 'BMW');

INSERT INTO Brands (brand_id, brand_name)
VALUES (4, 'Mercedes-Benz');

INSERT INTO Brands (brand_id, brand_name)
VALUES (5, 'Honda');

INSERT INTO Brands (brand_id, brand_name)
VALUES (6, 'Volkswagen');

INSERT INTO Brands (brand_id, brand_name)
VALUES (7, 'Audi');

INSERT INTO Brands (brand_id, brand_name)
VALUES (8, 'Tesla');

INSERT INTO Brands (brand_id, brand_name)
VALUES (9, 'Nissan');

INSERT INTO Brands (brand_id, brand_name)
VALUES (10, 'Chevrolet');



-- Cars tablosuna veri ekleme
INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (1, 1, 'Corolla', 2021, 'White', '34 ABC 123', 150000.00);

INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (3, 3, 'X5', 2023, 'Black', '35 DEF 456', 250000.00);

INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (4, 4, 'C-Class', 2021, 'Silver', '45 GHI 789', 180000.00);

INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (5, 5, 'Civic', 2022, 'Red', '78 JKL 321', 120000.00);

INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (6, 6, 'Golf', 2021, 'Gray', '09 MNO 567', 90000.00);

INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (7, 7, 'A4', 2022, 'White', '67 PQR 890', 160000.00);

INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (8, 8, 'Model S', 2023, 'Blue', '12 STU 345', 300000.00);

INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (9, 9, 'Altima', 2021, 'Black', '23 VWX 678', 110000.00);

INSERT INTO Cars (car_id, brand_id, model, year, color, plate_number, price)
VALUES (10, 10, 'Camaro', 2022, 'Yellow', '56 YZA 901', 220000.00);

-- Customers tablosuna veri ekleme
INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (1, 'John', 'Doe', '555-1234567', 'john@example.com', '123 Main St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (2, 'Jane', 'Smith', '555-9876543', 'jane@example.com', '456 Elm St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (3, 'Michael', 'Johnson', '555-4567890', 'michael@example.com', '789 Oak St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (4, 'Emily', 'Davis', '555-2345678', 'emily@example.com', '321 Pine St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (5, 'William', 'Anderson', '555-8765432', 'william@example.com', '987 Maple St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (6, 'Olivia', 'Martinez', '555-3456789', 'olivia@example.com', '654 Cedar St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (7, 'James', 'Wilson', '555-7654321', 'james@example.com', '258 Birch St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (8, 'Sophia', 'Taylor', '555-6789012', 'sophia@example.com', '753 Walnut St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (9, 'Benjamin', 'Thomas', '555-5432109', 'benjamin@example.com', '159 Spruce St');

INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address)
VALUES (10, 'Ava', 'Hernandez', '555-9012345', 'ava@example.com', '456 Pineapple St');

-- Rentals tablosuna veri ekleme
INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (1, 1, 1, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-06-10', 'YYYY-MM-DD'), 150.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (2, 2, 2, TO_DATE('2023-06-03', 'YYYY-MM-DD'), TO_DATE('2023-06-08', 'YYYY-MM-DD'), 300.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (3, 3, 3, TO_DATE('2023-06-02', 'YYYY-MM-DD'), TO_DATE('2023-06-09', 'YYYY-MM-DD'), 250.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (4, 4, 4, TO_DATE('2023-06-05', 'YYYY-MM-DD'), TO_DATE('2023-06-12', 'YYYY-MM-DD'), 200.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (5, 5, 5, TO_DATE('2023-06-04', 'YYYY-MM-DD'), TO_DATE('2023-06-07', 'YYYY-MM-DD'), 180.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (6, 6, 6, TO_DATE('2023-06-06', 'YYYY-MM-DD'), TO_DATE('2023-06-11', 'YYYY-MM-DD'), 220.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (7, 7, 7, TO_DATE('2023-06-02', 'YYYY-MM-DD'), TO_DATE('2023-06-05', 'YYYY-MM-DD'), 150.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (8, 8, 8, TO_DATE('2023-06-08', 'YYYY-MM-DD'), TO_DATE('2023-06-15', 'YYYY-MM-DD'), 350.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (9, 9, 9, TO_DATE('2023-06-07', 'YYYY-MM-DD'), TO_DATE('2023-06-10', 'YYYY-MM-DD'), 120.00);

INSERT INTO Rentals (rental_id, car_id, customer_id, rental_date, return_date, amount)
VALUES (10, 10, 10, TO_DATE('2023-06-09', 'YYYY-MM-DD'), TO_DATE('2023-06-14', 'YYYY-MM-DD'), 280.00);

-- SORGULAR

-- Tüm araba markalarını listeleyen sorgu:
SELECT * FROM Brands; 

-- Tüm müşterileri listeleyen sorgu:
SELECT * FROM Customers; 

-- Tüm müşterileri listeleyen sorgu:
SELECT * FROM Rentals; 

-- Belirli bir araba markasının tüm arabalarını listeleyen sorgu (Örneğin, Toyota markası):
SELECT * FROM Cars WHERE brand_id = 1; 

-- Belirli bir müşterinin kiraladığı arabaları listeleyen sorgu (Örneğin, John Doe):
SELECT * FROM Cars WHERE car_id IN (SELECT car_id FROM Rentals WHERE customer_id = 1); 

-- Belirli bir tarihte kiralanan arabaları listeleyen sorgu (Örneğin, 2023-06-02):
SELECT * FROM Cars WHERE car_id IN (SELECT car_id FROM Rentals WHERE rental_date = TO_DATE('2023-06-02', 'YYYY-MM-DD')); 

-- Belirli bir fiyat aralığındaki arabaları listeleyen sorgu (Örneğin, 100.000 TL ile 200.000 TL arası):
SELECT * FROM Cars WHERE price BETWEEN 100000.00 AND 200000.00; 

-- Belirli bir renkteki arabaları listeleyen sorgu (Örneğin, White):
SELECT * FROM Cars WHERE color = 'White'; 

-- Belirli bir model yılındaki arabaları listeleyen sorgu (Örneğin, 2022):
SELECT * FROM Cars WHERE year = 2022; 

-- Belirli bir müşterinin kiraladığı arabaların sayısını listeleyen sorgu (Örneğin, John Doe):
SELECT COUNT(*) FROM Rentals WHERE customer_id = 1; 

-- Belirli bir araba markasının toplam kiralama tutarını listeleyen sorgu (Örneğin, Toyota):
SELECT SUM(amount) FROM Rentals INNER JOIN Cars ON Rentals.car_id = Cars.car_id WHERE Cars.brand_id = 1; 

 -- En yüksek kiralama tutarını listeleyen sorgu:
SELECT MAX(amount) FROM Rentals;

-- En düşük kiralama tutarını listeleyen sorgu:
SELECT MIN(amount) FROM Rentals; 

-- Ortalama kiralama tutarını listeleyen sorgu:
SELECT AVG(amount) FROM Rentals; 

-- Belirli bir müşterinin adı, soyadı ve telefon numarasını listeleyen sorgu (Örneğin, Jane Smith):
SELECT first_name, last_name, phone_number FROM Customers WHERE customer_id = 2; 

-- Belirli bir tarihte kiralanan arabaların toplam kiralama tutarını listeleyen sorgu (Örneğin, 2023-06-04):
SELECT SUM(amount) FROM Rentals WHERE rental_date = TO_DATE('2023-06-04', 'YYYY-MM-DD'); 

-- Belirli bir fiyat aralığındaki arabaların sayısını listeleyen sorgu (Örneğin, 150.000 TL ile 200.000 TL arası):
SELECT COUNT(*) FROM Cars WHERE price BETWEEN 150000.00 AND 200000.00; 

-- En yeni model yılına sahip arabanın marka adını ve modelini listeleyen sorgu:
SELECT brand_name, model FROM Brands INNER JOIN Cars ON Brands.brand_id = Cars.brand_id WHERE year = (SELECT MAX(year) FROM Cars); 

-- En çok kiralanan arabanın marka adını, modelini ve kiralama sayısını listeleyen sorgu:
SELECT brand_name, model, COUNT(*) AS rental_count FROM Brands INNER JOIN Cars ON Brands.brand_id = Cars.brand_id INNER JOIN Rentals ON Cars.car_id = Rentals.car_id GROUP BY brand_name, model ORDER BY rental_count DESC LIMIT 1; 

-- Belirli bir müşterinin kiraladığı arabaların toplam kiralama tutarını listeleyen sorgu (Örneğin, John Doe):
SELECT SUM(amount) FROM Rentals WHERE customer_id = 1; 

-- En uzun süreli kiralama bilgisini listeleyen sorgu:
SELECT rental_id, rental_date, return_date, DATEDIFF(return_date, rental_date) AS rental_duration FROM Rentals ORDER BY rental_duration DESC LIMIT 1; 

-- Kiralama tarihine göre sıralanmış ilk 5 kiralama bilgisini listeleyen sorgu:
SELECT * FROM Rentals ORDER BY rental_date ASC LIMIT 5; 

-- Belirli bir müşterinin adı, soyadı ve kiraladığı arabaların sayısını listeleyen sorgu (Örneğin, John Doe):
SELECT first_name, last_name, COUNT(*) AS car_count FROM Customers INNER JOIN Rentals ON Customers.customer_id = Rentals.customer_id WHERE Customers.customer_id = 1;  

-- Belirli bir müşterinin kiraladığı arabaların toplam fiyatını listeleyen sorgu (Örneğin, John Doe):
SELECT SUM(price) FROM Cars WHERE car_id IN (SELECT car_id FROM Rentals WHERE customer_id = 1); 

-- Belirli bir renkteki arabaların sayısını listeleyen sorgu (Örneğin, Black):
SELECT color, COUNT(*) AS car_count FROM Cars WHERE color = 'Black' GROUP BY color; 

-- Belirli bir araba markasına ait arabaların toplam kiralama tutarını listeleyen sorgu (Örneğin, Toyota):
SELECT brand_name, SUM(amount) FROM Brands INNER JOIN Cars ON Brands.brand_id = Cars.brand_id INNER JOIN Rentals ON Cars.car_id = Rentals.car_id WHERE Brands.brand_name = 'Toyota' GROUP BY brand_name; 

-- En fazla kiralama yapan müşterinin adını, soyadını ve kiralama sayısını listeleyen sorgu:
SELECT Customers.first_name, Customers.last_name, COUNT(*) AS rental_count FROM Customers INNER JOIN Rentals ON Customers.customer_id = Rentals.customer_id GROUP BY Customers.first_name, Customers.last_name ORDER BY rental_count DESC LIMIT 1; 

-- Belirli bir araba markasına ait arabaların ortalama fiyatını listeleyen sorgu (Örneğin, BMW):
SELECT brand_name, AVG(price) FROM Brands INNER JOIN Cars ON Brands.brand_id = Cars.brand_id WHERE brand_name = 'BMW' GROUP BY brand_name; 

 -- Belirli bir fiyat aralığındaki arabaların toplam kiralama tutarını listeleyen sorgu (Örneğin, 100.000 TL ile 150.000 TL arası):
SELECT SUM(amount) FROM Cars INNER JOIN Rentals ON Cars.car_id = Rentals.car_id WHERE price BETWEEN 100000.00 AND 150000.00;



COMMIT;