
CREATE TABLE Hotels (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR2(100),
    location VARCHAR2(100),
    rating NUMBER(2, 1)
);
CREATE TABLE Rooms (
    room_id INT PRIMARY KEY,
    hotel_id INT,
    room_number VARCHAR2(10),
    type VARCHAR2(50),
    price_per_night NUMBER(10, 2),
    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    phone_number VARCHAR2(20),
    email VARCHAR2(100),
    address VARCHAR2(100)
);


CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    customer_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    total_price NUMBER(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);


CREATE TABLE Services (
    service_id INT PRIMARY KEY,
    service_name VARCHAR2(50),
    price NUMBER(10, 2)
);


CREATE TABLE BookingServices (
    booking_id INT,
    service_id INT,
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id),
    PRIMARY KEY (booking_id, service_id)
);


INSERT INTO Hotels (hotel_id, hotel_name, location, rating) VALUES (1, 'Grand Hotel', 'Istanbul', 9.0);
INSERT INTO Rooms (room_id, hotel_id, room_number, type, price_per_night) VALUES (1, 1, '101', 'Deluxe', 200.00);
INSERT INTO Customers (customer_id, first_name, last_name, phone_number, email, address) VALUES (1, 'John', 'Doe', '555-1234567', 'john@example.com', '123 Main St');
INSERT INTO Bookings (booking_id, customer_id, room_id, check_in_date, check_out_date, total_price) VALUES (1, 1, 1, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-06-05', 'YYYY-MM-DD'), 800.00);
INSERT INTO Services (service_id, service_name, price) VALUES (1, 'Spa', 50.00);
INSERT INTO BookingServices (booking_id, service_id) VALUES (1, 1);

COMMIT;