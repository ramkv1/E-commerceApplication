DROP TABLE public.customer CASCADE;

DROP TABLE public.orderitem CASCADE;

DROP TABLE public.orders CASCADE;

CREATE TABLE Customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE Orders (
    id SERIAL PRIMARY KEY,
    customerId INT REFERENCES Customer(id) ON DELETE CASCADE,
    orderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    totalAmount DECIMAL(10, 2),
    deliveryDate TIMESTAMP
);


CREATE TABLE OrderItem (
    id SERIAL PRIMARY KEY,
    orderId INT REFERENCES Orders(id) ON DELETE CASCADE,
    productName VARCHAR(255),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2)
);


INSERT INTO Customer (name, email, createdAt) VALUES
('Customer 1', 'customer1@example.com', '2022-01-01'),
('Customer 2', 'customer2@example.com', '2022-02-15'),
('Customer 3', 'customer3@example.com', '2022-03-20'),
('Customer 4', 'customer4@example.com', '2022-04-10'),
('Customer 5', 'customer5@example.com', '2022-05-25'),
('Customer 6', 'customer6@example.com', '2022-06-05'),
('Customer 7', 'customer7@example.com', '2022-07-14'),
('Customer 8', 'customer8@example.com', '2022-08-22'),
('Customer 9', 'customer9@example.com', '2022-09-13'),
('Customer 10', 'customer10@example.com', '2022-10-01'),
('Customer 11', 'customer11@example.com', '2022-11-11'),
('Customer 12', 'customer12@example.com', '2022-12-04'),
('Customer 13', 'customer13@example.com', '2022-01-15'),
('Customer 14', 'customer14@example.com', '2022-02-28'),
('Customer 15', 'customer15@example.com', '2022-03-05'),
('Customer 16', 'customer16@example.com', '2022-04-17'),
('Customer 17', 'customer17@example.com', '2022-05-30'),
('Customer 18', 'customer18@example.com', '2022-06-18'),
('Customer 19', 'customer19@example.com', '2022-07-03'),
('Customer 20', 'customer20@example.com', '2022-08-12'),
('Customer 21', 'customer21@example.com', '2022-09-22'),
('Customer 22', 'customer22@example.com', '2022-10-16'),
('Customer 23', 'customer23@example.com', '2022-11-30'),
('Customer 24', 'customer24@example.com', '2022-12-19'),
('Customer 25', 'customer25@example.com', '2022-01-27'),
('Customer 26', 'customer26@example.com', '2022-02-06'),
('Customer 27', 'customer27@example.com', '2022-03-21'),
('Customer 28', 'customer28@example.com', '2022-04-25'),
('Customer 29', 'customer29@example.com', '2022-05-15'),
('Customer 30', 'customer30@example.com', '2022-06-09'),
('Customer 31', 'customer31@example.com', '2022-07-06'),
('Customer 32', 'customer32@example.com', '2022-08-19'),
('Customer 33', 'customer33@example.com', '2022-09-29'),
('Customer 34', 'customer34@example.com', '2022-10-22'),
('Customer 35', 'customer35@example.com', '2022-11-07'),
('Customer 36', 'customer36@example.com', '2022-12-01'),
('Customer 37', 'customer37@example.com', '2022-01-05'),
('Customer 38', 'customer38@example.com', '2022-02-14'),
('Customer 39', 'customer39@example.com', '2022-03-10'),
('Customer 40', 'customer40@example.com', '2022-04-03'),
('Customer 41', 'customer41@example.com', '2022-05-09'),
('Customer 42', 'customer42@example.com', '2022-06-28'),
('Customer 43', 'customer43@example.com', '2022-07-30'),
('Customer 44', 'customer44@example.com', '2022-08-07'),
('Customer 45', 'customer45@example.com', '2022-09-02'),
('Customer 46', 'customer46@example.com', '2022-10-11'),
('Customer 47', 'customer47@example.com', '2022-11-15'),
('Customer 48', 'customer48@example.com', '2022-12-23'),
('Customer 49', 'customer49@example.com', '2022-01-12'),
('Customer 50', 'customer50@example.com', '2022-02-01'),
('Customer 51', 'customer51@example.com', '2022-03-08'),
('Customer 52', 'customer52@example.com', '2022-04-13'),
('Customer 53', 'customer53@example.com', '2022-05-22'),
('Customer 54', 'customer54@example.com', '2022-06-17'),
('Customer 55', 'customer55@example.com', '2022-07-29'),
('Customer 56', 'customer56@example.com', '2022-08-14'),
('Customer 57', 'customer57@example.com', '2022-09-04'),
('Customer 58', 'customer58@example.com', '2022-10-05'),
('Customer 59', 'customer59@example.com', '2022-11-21'),
('Customer 60', 'customer60@example.com', '2022-12-11'),
('Customer 61', 'customer61@example.com', '2022-01-23'),
('Customer 62', 'customer62@example.com', '2022-02-19'),
('Customer 63', 'customer63@example.com', '2022-03-02'),
('Customer 64', 'customer64@example.com', '2022-04-07'),
('Customer 65', 'customer65@example.com', '2022-05-18'),
('Customer 66', 'customer66@example.com', '2022-06-25'),
('Customer 67', 'customer67@example.com', '2022-07-18'),
('Customer 68', 'customer68@example.com', '2022-08-31'),
('Customer 69', 'customer69@example.com', '2022-09-26'),
('Customer 70', 'customer70@example.com', '2022-10-03'),
('Customer 71', 'customer71@example.com', '2022-11-09'),
('Customer 72', 'customer72@example.com', '2022-12-28'),
('Customer 73', 'customer73@example.com', '2022-01-19'),
('Customer 74', 'customer74@example.com', '2022-02-23'),
('Customer 75', 'customer75@example.com', '2022-03-25'),
('Customer 76', 'customer76@example.com', '2022-04-19'),
('Customer 77', 'customer77@example.com', '2022-05-05'),
('Customer 78', 'customer78@example.com', '2022-06-02'),
('Customer 79', 'customer79@example.com', '2022-07-21'),
('Customer 80', 'customer80@example.com', '2022-08-10'),
('Customer 81', 'customer81@example.com', '2022-09-14'),
('Customer 82', 'customer82@example.com', '2022-10-08'),
('Customer 83', 'customer83@example.com', '2022-11-12'),
('Customer 84', 'customer84@example.com', '2022-12-17'),
('Customer 85', 'customer85@example.com', '2022-01-03'),
('Customer 86', 'customer86@example.com', '2022-02-03'),
('Customer 87', 'customer87@example.com', '2022-03-15'),
('Customer 88', 'customer88@example.com', '2022-04-24'),
('Customer 89', 'customer89@example.com', '2022-05-19'),
('Customer 90', 'customer90@example.com', '2022-06-08'),
('Customer 91', 'customer91@example.com', '2022-07-09'),
('Customer 92', 'customer92@example.com', '2022-08-27'),
('Customer 93', 'customer93@example.com', '2022-09-30'),
('Customer 94', 'customer94@example.com', '2022-10-27'),
('Customer 95', 'customer95@example.com', '2022-11-05'),
('Customer 96', 'customer96@example.com', '2022-12-30'),
('Customer 97', 'customer97@example.com', '2022-01-25'),
('Customer 98', 'customer98@example.com', '2022-02-08'),
('Customer 99', 'customer99@example.com', '2022-03-29'),
('Customer 100', 'customer100@example.com', '2022-04-12');


INSERT INTO Orders (customerId, orderDate, status, totalAmount, deliveryDate)
VALUES
(12, '2023-01-05', 'Shipped', 150.75, '2023-01-10'),
(45, '2023-01-07', 'Pending', 200.50, '2023-01-14'),
(78, '2023-01-10', 'Delivered', 99.99, '2023-01-15'),
(23, '2023-01-12', 'Cancelled', 300.00, '2023-01-18'),
(56, '2023-01-15', 'Shipped', 450.25, '2023-01-20'),
(89, '2023-01-18', 'Pending', 120.00, '2023-01-23'),
(34, '2023-01-20', 'Delivered', 75.50, '2023-01-25'),
(67, '2023-01-22', 'Shipped', 220.00, '2023-01-27'),
(90, '2023-01-25', 'Pending', 180.30, '2023-01-30'),
(21, '2023-01-28', 'Delivered', 95.00, '2023-02-02'),
(43, '2023-02-01', 'Shipped', 500.00, '2023-02-06'),
(76, '2023-02-03', 'Pending', 250.75, '2023-02-08'),
(19, '2023-02-05', 'Delivered', 130.00, '2023-02-10'),
(52, '2023-02-08', 'Shipped', 350.50, '2023-02-13'),
(85, '2023-02-10', 'Pending', 90.00, '2023-02-15'),
(28, '2023-02-12', 'Delivered', 400.00, '2023-02-17'),
(61, '2023-02-15', 'Shipped', 175.25, '2023-02-20'),
(94, '2023-02-18', 'Pending', 300.00, '2023-02-23'),
(37, '2023-02-20', 'Delivered', 125.50, '2023-02-25'),
(70, '2023-02-22', 'Shipped', 450.00, '2023-02-27'),
(13, '2023-02-25', 'Pending', 200.75, '2023-03-02'),
(46, '2023-02-28', 'Delivered', 100.00, '2023-03-05'),
(79, '2023-03-02', 'Shipped', 275.50, '2023-03-07'),
(22, '2023-03-05', 'Pending', 150.00, '2023-03-10'),
(55, '2023-03-08', 'Delivered', 80.00, '2023-03-13'),
(88, '2023-03-10', 'Shipped', 320.00, '2023-03-15'),
(31, '2023-03-12', 'Pending', 225.75, '2023-03-17'),
(64, '2023-03-15', 'Delivered', 110.00, '2023-03-20'),
(97, '2023-03-18', 'Shipped', 500.00, '2023-03-23'),
(40, '2023-03-20', 'Pending', 90.50, '2023-03-25'),
(73, '2023-03-22', 'Delivered', 400.00, '2023-03-27'),
(16, '2023-03-25', 'Shipped', 175.25, '2023-03-30'),
(49, '2023-03-28', 'Pending', 300.00, '2023-04-02'),
(82, '2023-03-30', 'Delivered', 125.50, '2023-04-04'),
(25, '2023-04-01', 'Shipped', 450.00, '2023-04-06'),
(58, '2023-04-03', 'Pending', 200.75, '2023-04-08'),
(91, '2023-04-05', 'Delivered', 100.00, '2023-04-10'),
(34, '2023-04-08', 'Shipped', 275.50, '2023-04-13'),
(67, '2023-04-10', 'Pending', 150.00, '2023-04-15'),
(100, '2023-04-12', 'Delivered', 80.00, '2023-04-17'),
(43, '2023-04-15', 'Shipped', 320.00, '2023-04-20'),
(76, '2023-04-18', 'Pending', 225.75, '2023-04-23'),
(19, '2023-04-20', 'Delivered', 110.00, '2023-04-25'),
(52, '2023-04-22', 'Shipped', 500.00, '2023-04-27'),
(85, '2023-04-25', 'Pending', 90.50, '2023-04-30'),
(28, '2023-04-28', 'Delivered', 400.00, '2023-05-03'),
(61, '2023-04-30', 'Shipped', 175.25, '2023-05-05'),
(94, '2023-05-02', 'Pending', 300.00, '2023-05-07'),
(37, '2023-05-05', 'Delivered', 125.50, '2023-05-10'),
(70, '2023-05-08', 'Shipped', 450.00, '2023-05-13'),
(13, '2023-05-10', 'Pending', 200.75, '2023-05-15'),
(46, '2023-05-12', 'Delivered', 100.00, '2023-05-17'),
(79, '2023-05-15', 'Shipped', 275.50, '2023-05-20'),
(22, '2023-05-18', 'Pending', 150.00, '2023-05-23'),
(55, '2023-05-20', 'Delivered', 80.00, '2023-05-25'),
(88, '2023-05-22', 'Shipped', 320.00, '2023-05-27'),
(31, '2023-05-25', 'Pending', 225.75, '2023-05-30'),
(64, '2023-05-28', 'Delivered', 110.00, '2023-06-02'),
(97, '2023-05-30', 'Shipped', 500.00, '2023-06-05'),
(40, '2023-06-01', 'Pending', 90.50, '2023-06-06'),
(73, '2023-06-03', 'Delivered', 400.00, '2023-06-08'),
(16, '2023-06-05', 'Shipped', 175.25, '2023-06-10'),
(49, '2023-06-08', 'Pending', 300.00, '2023-06-13'),
(82, '2023-06-10', 'Delivered', 125.50, '2023-06-15'),
(25, '2023-06-12', 'Shipped', 450.00, '2023-06-17'),
(58, '2023-06-15', 'Pending', 200.75, '2023-06-20'),
(91, '2023-06-18', 'Delivered', 100.00, '2023-06-23'),
(34, '2023-06-20', 'Shipped', 275.50, '2023-06-25'),
(67, '2023-06-22', 'Pending', 150.00, '2023-06-27'),
(100, '2023-06-25', 'Delivered', 80.00, '2023-06-30');


INSERT INTO Orders (customerId, orderDate, status, totalAmount, deliveryDate) VALUES
(1, '2024-03-01 10:15:00', 'PENDING', 100.50, '2024-03-05 12:00:00'),
(2, '2024-03-02 14:30:00', 'DELIVERED', 250.75, '2024-03-06 15:00:00'),
(3, '2024-03-03 09:45:00', 'PROCESSING', 80.25, NULL),
(4, '2024-03-04 17:20:00', 'PENDING', 300.99, '2024-03-10 10:30:00'),
(5, '2024-03-05 12:10:00', 'DELIVERED', 150.60, '2024-03-07 08:45:00'),
(6, '2024-03-06 11:00:00', 'PROCESSING', 400.75, NULL),
(7, '2024-03-07 15:40:00', 'CANCELLED', 50.99, NULL),
(8, '2024-03-08 08:30:00', 'DELIVERED', 275.30, '2024-03-09 14:20:00'),
(9, '2024-03-09 19:50:00', 'PENDING', 90.40, '2024-03-12 09:15:00'),
(10, '2024-03-10 13:25:00', 'DELIVERED', 500.00, '2024-03-11 16:45:00'),
(11, '2024-03-11 10:30:00', 'PROCESSING', 200.80, NULL),
(12, '2024-03-12 12:50:00', 'PENDING', 150.20, '2024-03-13 10:30:00'),
(13, '2024-03-13 14:15:00', 'DELIVERED', 400.00, '2024-03-14 16:30:00'),
(14, '2024-03-14 09:00:00', 'CANCELLED', 175.65, NULL),
(15, '2024-03-15 14:20:00', 'PENDING', 110.30, '2024-03-20 09:00:00'),
(16, '2024-03-16 17:45:00', 'DELIVERED', 275.50, '2024-03-18 08:00:00'),
(17, '2024-03-17 10:00:00', 'PROCESSING', 220.00, NULL),
(18, '2024-03-18 12:35:00', 'PENDING', 150.40, '2024-03-21 10:00:00'),
(19, '2024-03-19 08:50:00', 'DELIVERED', 380.75, '2024-03-21 14:30:00'),
(20, '2024-03-20 19:10:00', 'CANCELLED', 100.20, NULL),
(21, '2024-03-21 11:55:00', 'PENDING', 150.75, '2024-03-23 12:00:00'),
(22, '2024-03-22 10:15:00', 'PROCESSING', 200.90, NULL),
(23, '2024-03-23 15:30:00', 'DELIVERED', 300.45, '2024-03-25 08:00:00'),
(24, '2024-03-24 09:00:00', 'PENDING', 275.30, '2024-03-28 09:30:00'),
(25, '2024-03-25 14:00:00', 'CANCELLED', 120.00, NULL),
(26, '2024-03-26 18:10:00', 'DELIVERED', 200.60, '2024-03-28 17:00:00'),
(27, '2024-03-27 10:30:00', 'PENDING', 130.40, '2024-03-30 11:30:00'),
(28, '2024-03-28 12:50:00', 'PROCESSING', 220.75, NULL),
(29, '2024-03-29 19:00:00', 'DELIVERED', 350.80, '2024-03-31 14:00:00'),
(30, '2024-03-30 14:30:00', 'PENDING', 100.25, '2024-04-02 10:30:00'),
(31, '2024-03-31 08:15:00', 'CANCELLED', 200.10, NULL),
(32, '2024-04-01 11:50:00', 'DELIVERED', 250.00, '2024-04-02 17:45:00'),
(33, '2024-04-02 14:20:00', 'PROCESSING', 350.30, NULL),
(34, '2024-04-03 12:40:00', 'PENDING', 175.70, '2024-04-05 09:30:00'),
(35, '2024-04-04 08:50:00', 'CANCELLED', 150.90, NULL),
(36, '2024-04-05 13:00:00', 'DELIVERED', 300.00, '2024-04-06 11:30:00'),
(37, '2024-04-06 15:40:00', 'PENDING', 125.50, '2024-04-08 12:15:00'),
(38, '2024-04-07 10:30:00', 'PROCESSING', 225.60, NULL),
(39, '2024-04-08 11:20:00', 'DELIVERED', 275.90, '2024-04-09 14:10:00'),
(40, '2024-04-09 14:10:00', 'PENDING', 140.40, '2024-04-11 15:00:00'),
(41, '2024-04-10 09:00:00', 'CANCELLED', 180.25, NULL),
(42, '2024-04-11 12:30:00', 'DELIVERED', 250.10, '2024-04-13 10:30:00'),
(43, '2024-04-12 14:20:00', 'PROCESSING', 180.00, NULL),
(44, '2024-04-13 15:10:00', 'PENDING', 200.80, '2024-04-14 09:00:00'),
(45, '2024-04-14 09:30:00', 'DELIVERED', 350.75, '2024-04-16 14:00:00'),
(46, '2024-04-15 11:50:00', 'PENDING', 150.25, '2024-04-17 08:00:00'),
(47, '2024-04-16 12:40:00', 'PROCESSING', 220.90, NULL),
(48, '2024-04-17 08:30:00', 'CANCELLED', 200.20, NULL),
(49, '2024-04-18 09:50:00', 'DELIVERED', 310.40, '2024-04-19 16:00:00'),
(50, '2024-04-19 14:00:00', 'PENDING', 120.60, '2024-04-21 10:00:00'),
(51, '2024-04-20 10:30:00', 'PROCESSING', 210.80, NULL),
(52, '2024-04-21 12:00:00', 'DELIVERED', 260.25, '2024-04-22 14:00:00'),
(53, '2024-04-22 08:40:00', 'PENDING', 185.70, '2024-04-24 09:15:00'),
(54, '2024-04-23 11:00:00', 'CANCELLED', 130.50, NULL),
(55, '2024-04-24 10:20:00', 'DELIVERED', 290.80, '2024-04-25 12:00:00'),
(56, '2024-04-25 12:10:00', 'PENDING', 155.90, '2024-04-28 13:00:00'),
(57, '2024-04-26 08:50:00', 'PROCESSING', 190.60, NULL),
(58, '2024-04-27 11:10:00', 'CANCELLED', 170.75, NULL),
(59, '2024-04-28 09:40:00', 'DELIVERED', 210.40, '2024-04-30 14:30:00'),
(60, '2024-04-29 08:20:00', 'PENDING', 130.30, '2024-05-02 10:00:00'),
(61, '2024-04-30 14:10:00', 'PROCESSING', 225.80, NULL),
(62, '2024-05-01 13:30:00', 'DELIVERED', 280.00, '2024-05-02 13:00:00'),
(63, '2024-05-02 09:40:00', 'PENDING', 115.60, '2024-05-04 11:30:00'),
(64, '2024-05-03 11:10:00', 'CANCELLED', 145.80, NULL),
(65, '2024-05-04 10:20:00', 'DELIVERED', 320.50, '2024-05-06 10:00:00'),
(66, '2024-05-05 12:50:00', 'PENDING', 130.20, '2024-05-07 12:00:00'),
(67, '2024-05-06 14:30:00', 'PROCESSING', 185.90, NULL),
(68, '2024-05-07 09:00:00', 'CANCELLED', 160.40, NULL),
(69, '2024-05-08 12:10:00', 'DELIVERED', 275.60, '2024-05-09 13:00:00'),
(70, '2024-05-09 13:30:00', 'PENDING', 135.70, '2024-05-11 09:15:00'),
(71, '2024-05-10 14:20:00', 'PROCESSING', 215.30, NULL),
(72, '2024-05-11 12:00:00', 'DELIVERED', 240.10, '2024-05-12 16:30:00'),
(73, '2024-05-12 11:00:00', 'PENDING', 190.90, '2024-05-14 10:00:00'),
(74, '2024-05-13 09:30:00', 'CANCELLED', 150.20, NULL),
(75, '2024-05-14 13:00:00', 'DELIVERED', 265.80, '2024-05-15 10:45:00'),
(76, '2024-05-15 12:20:00', 'PENDING', 175.40, '2024-05-17 14:00:00'),
(77, '2024-05-16 11:30:00', 'PROCESSING', 210.30, NULL),
(78, '2024-05-17 08:50:00', 'CANCELLED', 120.60, NULL),
(79, '2024-05-18 13:10:00', 'DELIVERED', 350.20, '2024-05-19 12:30:00'),
(80, '2024-05-19 10:40:00', 'PENDING', 125.80, '2024-05-21 11:00:00'),
(81, '2024-05-20 09:30:00', 'PROCESSING', 180.50, NULL),
(82, '2024-05-21 14:50:00', 'DELIVERED', 290.70, '2024-05-23 13:15:00'),
(83, '2024-05-22 10:30:00', 'PENDING', 140.90, '2024-05-24 10:30:00'),
(84, '2024-05-23 12:10:00', 'CANCELLED', 160.75, NULL),
(85, '2024-05-24 14:00:00', 'DELIVERED', 310.20, '2024-05-26 12:45:00'),
(86, '2024-05-25 11:30:00', 'PENDING', 150.40, '2024-05-27 13:00:00'),
(87, '2024-05-26 09:10:00', 'PROCESSING', 210.70, NULL),
(88, '2024-05-27 12:20:00', 'DELIVERED', 320.50, '2024-05-29 15:30:00'),
(89, '2024-05-28 10:00:00', 'PENDING', 135.10, '2024-05-30 14:45:00'),
(90, '2024-05-29 09:40:00', 'CANCELLED', 120.90, NULL),
(91, '2024-05-30 14:30:00', 'DELIVERED', 340.20, '2024-06-01 12:15:00'),
(92, '2024-06-01 11:00:00', 'PENDING', 140.60, '2024-06-03 13:30:00'),
(93, '2024-06-02 10:20:00', 'PROCESSING', 180.40, NULL),
(94, '2024-06-03 12:10:00', 'DELIVERED', 250.75, '2024-06-05 10:00:00'),
(95, '2024-06-04 13:30:00', 'PENDING', 150.90, '2024-06-06 14:30:00'),
(96, '2024-06-05 10:00:00', 'CANCELLED', 100.20, NULL),
(97, '2024-06-06 14:20:00', 'DELIVERED', 280.00, '2024-06-08 12:00:00'),
(98, '2024-06-07 10:30:00', 'PENDING', 180.30, '2024-06-09 15:00:00'),
(99, '2024-06-08 11:10:00', 'PROCESSING', 220.40, NULL),
(100, '2024-06-09 12:00:00', 'DELIVERED', 320.90, '2024-06-11 10:00:00');


INSERT INTO Orders (customerId, orderDate, status, totalAmount, deliveryDate) VALUES
(1, '2024-06-10 14:00:00', 'PENDING', 120.50, '2024-06-12 09:00:00'),
(2, '2024-06-11 11:30:00', 'DELIVERED', 220.75, '2024-06-13 15:30:00'),
(3, '2024-06-12 10:20:00', 'CANCELLED', 150.40, NULL),
(4, '2024-06-13 14:00:00', 'PENDING', 180.90, '2024-06-15 10:00:00'),
(5, '2024-06-14 12:30:00', 'PROCESSING', 200.80, NULL),
(6, '2024-06-15 09:00:00', 'DELIVERED', 250.60, '2024-06-16 11:45:00'),
(7, '2024-06-16 08:10:00', 'PENDING', 140.30, '2024-06-18 14:30:00'),
(8, '2024-06-17 11:40:00', 'PROCESSING', 180.10, NULL),
(9, '2024-06-18 14:00:00', 'DELIVERED', 320.90, '2024-06-20 12:30:00'),
(10, '2024-06-19 10:20:00', 'PENDING', 160.40, '2024-06-21 15:00:00'),
(11, '2024-06-20 14:30:00', 'CANCELLED', 130.20, NULL),
(12, '2024-06-21 13:10:00', 'DELIVERED', 290.60, '2024-06-23 11:00:00'),
(13, '2024-06-22 12:00:00', 'PENDING', 120.10, '2024-06-24 13:30:00'),
(14, '2024-06-23 08:30:00', 'PROCESSING', 250.40, NULL),
(15, '2024-06-24 14:40:00', 'DELIVERED', 340.20, '2024-06-25 16:00:00'),
(16, '2024-06-25 13:00:00', 'PENDING', 180.50, '2024-06-27 10:00:00'),
(17, '2024-06-26 11:20:00', 'PROCESSING', 210.60, NULL),
(18, '2024-06-27 09:00:00', 'CANCELLED', 160.30, NULL),
(19, '2024-06-28 14:50:00', 'DELIVERED', 330.10, '2024-06-30 12:30:00'),
(20, '2024-06-29 11:10:00', 'PENDING', 150.80, '2024-07-01 15:00:00'),
(21, '2024-06-30 13:00:00', 'PROCESSING', 220.30, NULL),
(22, '2024-07-01 10:30:00', 'DELIVERED', 350.00, '2024-07-03 11:00:00'),
(23, '2024-07-02 09:40:00', 'PENDING', 180.90, '2024-07-04 10:30:00'),
(24, '2024-07-03 14:30:00', 'CANCELLED', 120.20, NULL),
(25, '2024-07-04 13:10:00', 'DELIVERED', 290.40, '2024-07-06 14:30:00'),
(26, '2024-07-05 08:50:00', 'PENDING', 130.60, '2024-07-07 10:00:00'),
(27, '2024-07-06 12:40:00', 'PROCESSING', 200.50, NULL),
(28, '2024-07-07 10:10:00', 'DELIVERED', 320.75, '2024-07-09 12:00:00'),
(29, '2024-07-08 11:30:00', 'PENDING', 150.80, '2024-07-10 14:00:00'),
(30, '2024-07-09 13:40:00', 'CANCELLED', 170.50, NULL),
(31, '2024-07-10 08:20:00', 'DELIVERED', 240.60, '2024-07-12 15:30:00'),
(32, '2024-07-11 14:50:00', 'PENDING', 125.90, '2024-07-13 12:00:00'),
(33, '2024-07-12 11:00:00', 'PROCESSING', 230.70, NULL),
(34, '2024-07-13 09:40:00', 'DELIVERED', 290.50, '2024-07-14 16:00:00'),
(35, '2024-07-14 13:10:00', 'PENDING', 180.30, '2024-07-16 10:30:00'),
(36, '2024-07-15 11:20:00', 'PROCESSING', 150.90, NULL),
(37, '2024-07-16 09:30:00', 'CANCELLED', 110.60, NULL),
(38, '2024-07-17 13:00:00', 'DELIVERED', 350.20, '2024-07-18 12:00:00'),
(39, '2024-07-18 14:40:00', 'PENDING', 130.80, '2024-07-20 10:00:00'),
(40, '2024-07-19 11:00:00', 'PROCESSING', 180.20, NULL),
(41, '2024-07-20 10:30:00', 'DELIVERED', 270.90, '2024-07-22 11:30:00'),
(42, '2024-07-21 12:50:00', 'PENDING', 220.40, '2024-07-23 15:00:00'),
(43, '2024-07-22 09:10:00', 'CANCELLED', 140.60, NULL),
(44, '2024-07-23 14:30:00', 'DELIVERED', 310.75, '2024-07-25 13:00:00'),
(45, '2024-07-24 11:20:00', 'PENDING', 160.20, '2024-07-26 12:00:00'),
(46, '2024-07-25 09:40:00', 'PROCESSING', 250.60, NULL),
(47, '2024-07-26 13:10:00', 'DELIVERED', 330.10, '2024-07-28 15:30:00'),
(48, '2024-07-27 11:00:00', 'PENDING', 120.50, '2024-07-29 12:00:00'),
(49, '2024-07-28 10:00:00', 'PROCESSING', 180.70, NULL),
(50, '2024-07-29 13:40:00', 'DELIVERED', 240.80, '2024-07-31 10:00:00'),
(51, '2024-07-30 12:00:00', 'PENDING', 160.20, '2024-08-01 12:00:00'),
(52, '2024-07-31 11:30:00', 'PROCESSING', 220.60, NULL),
(53, '2024-08-01 13:10:00', 'CANCELLED', 130.40, NULL),
(54, '2024-08-02 12:00:00', 'DELIVERED', 300.75, '2024-08-04 11:30:00'),
(55, '2024-08-03 14:30:00', 'PENDING', 150.80, '2024-08-05 13:30:00'),
(56, '2024-08-04 11:00:00', 'PROCESSING', 180.10, NULL),
(57, '2024-08-05 13:20:00', 'DELIVERED', 280.40, '2024-08-07 10:00:00'),
(58, '2024-08-06 10:40:00', 'PENDING', 125.90, '2024-08-08 14:00:00'),
(59, '2024-08-07 12:00:00', 'PROCESSING', 200.20, NULL),
(60, '2024-08-08 14:30:00', 'DELIVERED', 310.40, '2024-08-10 13:30:00'),
(61, '2024-08-09 13:40:00', 'PENDING', 150.50, '2024-08-11 14:30:00'),
(62, '2024-08-10 14:00:00', 'PROCESSING', 170.80, NULL),
(63, '2024-08-11 11:10:00', 'CANCELLED', 130.30, NULL),
(64, '2024-08-12 12:00:00', 'DELIVERED', 320.90, '2024-08-14 11:00:00'),
(65, '2024-08-13 09:30:00', 'PENDING', 140.60, '2024-08-15 13:00:00'),
(66, '2024-08-14 13:50:00', 'PROCESSING', 250.40, NULL),
(67, '2024-08-15 12:20:00', 'DELIVERED', 300.20, '2024-08-17 14:30:00'),
(68, '2024-08-16 14:00:00', 'PENDING', 130.50, '2024-08-18 15:00:00'),
(69, '2024-08-17 11:40:00', 'PROCESSING', 200.80, NULL),
(70, '2024-08-18 13:00:00', 'DELIVERED', 290.40, '2024-08-20 12:00:00'),
(71, '2024-08-19 10:10:00', 'PENDING', 150.30, '2024-08-21 14:30:00'),
(72, '2024-08-20 12:00:00', 'PROCESSING', 180.50, NULL),
(73, '2024-08-21 13:10:00', 'DELIVERED', 270.90, '2024-08-23 15:00:00'),
(74, '2024-08-22 11:30:00', 'PENDING', 160.10, '2024-08-24 12:00:00'),
(75, '2024-08-23 14:00:00', 'PROCESSING', 210.20, NULL),
(76, '2024-08-24 10:30:00', 'DELIVERED', 350.40, '2024-08-26 13:30:00'),
(77, '2024-08-25 13:00:00', 'PENDING', 170.60, '2024-08-27 14:00:00'),
(78, '2024-08-26 11:10:00', 'PROCESSING', 220.40, NULL),
(79, '2024-08-27 12:00:00', 'DELIVERED', 330.20, '2024-08-29 15:00:00'),
(80, '2024-08-28 09:40:00', 'PENDING', 140.30, '2024-08-30 13:30:00'),
(81, '2024-08-29 14:10:00', 'PROCESSING', 250.80, NULL),
(82, '2024-08-30 11:50:00', 'DELIVERED', 280.50, '2024-09-01 12:00:00'),
(83, '2024-09-01 10:00:00', 'PENDING', 120.60, '2024-09-03 14:30:00'),
(84, '2024-09-02 12:20:00', 'PROCESSING', 230.70, NULL),
(85, '2024-09-03 10:30:00', 'DELIVERED', 310.40, '2024-09-05 13:00:00'),
(86, '2024-09-04 14:00:00', 'PENDING', 150.40, '2024-09-06 14:00:00'),
(87, '2024-09-05 13:10:00', 'PROCESSING', 180.70, NULL),
(88, '2024-09-06 10:00:00', 'DELIVERED', 240.80, '2024-09-08 10:00:00'),
(89, '2024-09-07 12:20:00', 'PENDING', 130.40, '2024-09-09 11:30:00'),
(90, '2024-09-08 13:00:00', 'PROCESSING', 220.90, NULL),
(91, '2024-09-09 14:30:00', 'DELIVERED', 310.20, '2024-09-11 14:00:00'),
(92, '2024-09-10 11:50:00', 'PENDING', 160.50, '2024-09-12 13:30:00'),
(93, '2024-09-11 14:00:00', 'PROCESSING', 240.70, NULL),
(94, '2024-09-12 12:30:00', 'DELIVERED', 320.80, '2024-09-14 15:00:00'),
(95, '2024-09-13 10:20:00', 'PENDING', 170.20, '2024-09-15 11:00:00'),
(96, '2024-09-14 13:10:00', 'PROCESSING', 220.60, NULL),
(97, '2024-09-15 11:00:00', 'DELIVERED', 250.90, '2024-09-17 13:30:00'),
(98, '2024-09-16 10:10:00', 'PENDING', 150.20, '2024-09-18 12:00:00'),
(99, '2024-09-17 13:00:00', 'PROCESSING', 240.40, NULL),
(100, '2024-09-18 11:20:00', 'DELIVERED', 330.50, '2024-09-20 10:00:00');


-- Inserting 100 records into OrderItem table

INSERT INTO OrderItem (orderId, productName, category, quantity, price)
VALUES
(1, 'Laptop', 'Electronics', 1, 1000.00),
(1, 'Mouse', 'Electronics', 2, 25.00),
(2, 'Shirt', 'Clothing', 3, 15.00),
(3, 'Coffee Maker', 'Home & Kitchen', 1, 50.00),
(4, 'Headphones', 'Electronics', 1, 150.00),
(5, 'Shoes', 'Clothing', 2, 40.00),
(6, 'Blender', 'Home & Kitchen', 1, 60.00),
(7, 'Smartphone', 'Electronics', 1, 800.00),
(8, 'T-shirt', 'Clothing', 5, 10.00),
(9, 'Microwave', 'Home & Kitchen', 1, 120.00),
(10, 'Washing Machine', 'Home & Kitchen', 1, 300.00),
(11, 'Smartwatch', 'Electronics', 1, 200.00),
(12, 'Bookshelf', 'Furniture', 1, 75.00),
(13, 'Socks', 'Clothing', 6, 5.00),
(14, 'Toaster', 'Home & Kitchen', 1, 25.00),
(15, 'Monitor', 'Electronics', 2, 250.00),
(16, 'Laptop Bag', 'Accessories', 1, 40.00),
(17, 'Tablet', 'Electronics', 1, 350.00),
(18, 'Blender', 'Home & Kitchen', 1, 55.00),
(19, 'Coffee Mug', 'Accessories', 4, 7.00),
(20, 'Refrigerator', 'Home & Kitchen', 1, 800.00),
(21, 'Sneakers', 'Clothing', 2, 60.00),
(22, 'Smartphone Case', 'Accessories', 3, 15.00),
(23, 'Dining Table', 'Furniture', 1, 200.00),
(24, 'Chair', 'Furniture', 4, 50.00),
(25, 'Wireless Charger', 'Electronics', 1, 30.00),
(26, 'Cookware Set', 'Home & Kitchen', 1, 100.00),
(27, 'Vacuum Cleaner', 'Home & Kitchen', 1, 150.00),
(28, 'Watch', 'Accessories', 1, 80.00),
(29, 'Hoodie', 'Clothing', 2, 35.00),
(30, 'Coffee Table', 'Furniture', 1, 90.00),
(31, 'Earbuds', 'Electronics', 1, 70.00),
(32, 'Curtains', 'Furniture', 2, 45.00),
(33, 'Dishwasher', 'Home & Kitchen', 1, 250.00),
(34, 'Bedding Set', 'Furniture', 1, 60.00),
(35, 'Microwave Oven', 'Home & Kitchen', 1, 130.00),
(36, 'Portable Speaker', 'Electronics', 2, 120.00),
(37, 'Air Purifier', 'Home & Kitchen', 1, 200.00),
(38, 'Gaming Mouse', 'Electronics', 2, 40.00),
(39, 'TV Stand', 'Furniture', 1, 100.00),
(40, 'Fridge', 'Home & Kitchen', 1, 650.00),
(41, 'Couch', 'Furniture', 1, 300.00),
(42, 'Desk Lamp', 'Furniture', 3, 20.00),
(43, 'Backpack', 'Accessories', 2, 50.00),
(44, 'Desk', 'Furniture', 1, 150.00),
(45, 'Juicer', 'Home & Kitchen', 1, 70.00),
(46, 'Air Fryer', 'Home & Kitchen', 1, 120.00),
(47, 'Desk Chair', 'Furniture', 1, 100.00),
(48, 'Bed', 'Furniture', 1, 500.00),
(49, 'Couch Cushion', 'Furniture', 2, 30.00),
(50, 'Mirror', 'Furniture', 1, 60.00),
(51, 'Smart Home Device', 'Electronics', 1, 150.00),
(52, 'Cooking Pot', 'Home & Kitchen', 1, 40.00),
(53, 'Smart Speaker', 'Electronics', 2, 120.00),
(54, 'Bicycle', 'Sports', 1, 200.00),
(55, 'Yoga Mat', 'Sports', 3, 15.00),
(56, 'Tent', 'Sports', 1, 120.00),
(57, 'Football', 'Sports', 5, 25.00),
(58, 'Rug', 'Furniture', 1, 80.00),
(59, 'Hiking Shoes', 'Sports', 1, 90.00),
(60, 'Helmet', 'Sports', 2, 50.00),
(61, 'Stove', 'Home & Kitchen', 1, 100.00),
(62, 'Iron', 'Home & Kitchen', 1, 40.00),
(63, 'Shoes', 'Clothing', 3, 60.00),
(64, 'Tennis Racket', 'Sports', 1, 150.00),
(65, 'Paintings', 'Decor', 3, 25.00),
(66, 'Curtain Rods', 'Furniture', 1, 35.00),
(67, 'Portable Heater', 'Home & Kitchen', 2, 80.00),
(68, 'Table Lamp', 'Furniture', 1, 40.00),
(69, 'Wall Clock', 'Furniture', 1, 25.00),
(70, 'Ice Maker', 'Home & Kitchen', 1, 90.00),
(71, 'Fridge Freezer', 'Home & Kitchen', 1, 400.00),
(72, 'Waffle Maker', 'Home & Kitchen', 1, 45.00),
(73, 'Printer', 'Electronics', 1, 120.00),
(74, 'Smartphone Stand', 'Accessories', 3, 10.00),
(75, 'Projector', 'Electronics', 1, 300.00),
(76, 'Recliner', 'Furniture', 1, 150.00),
(77, 'Candle Holder', 'Decor', 4, 12.00),
(78, 'Glass Table', 'Furniture', 1, 80.00),
(79, 'Solar Panel', 'Electronics', 1, 250.00),
(80, 'Rope Ladder', 'Sports', 1, 50.00),
(81, 'Hiking Backpack', 'Sports', 2, 60.00),
(82, 'BBQ Grill', 'Home & Kitchen', 1, 250.00),
(83, 'Cooler', 'Home & Kitchen', 2, 40.00),
(84, 'Pool Table', 'Sports', 1, 400.00),
(85, 'Pressure Cooker', 'Home & Kitchen', 1, 80.00),
(86, 'Laptop Sleeve', 'Accessories', 2, 25.00),
(87, 'Chainsaw', 'Tools', 1, 150.00),
(88, 'Lawn Mower', 'Tools', 1, 250.00),
(89, 'Leaf Blower', 'Tools', 1, 100.00),
(90, 'Drill', 'Tools', 1, 80.00),
(91, 'Shovel', 'Tools', 3, 25.00),
(92, 'Garden Hose', 'Tools', 2, 30.00),
(93, 'Air Compressor', 'Tools', 1, 200.00),
(94, 'Screwdriver Set', 'Tools', 4, 40.00),
(95, 'Wheelbarrow', 'Tools', 1, 150.00),
(96, 'Garden Tools', 'Tools', 2, 20.00),
(97, 'Pressure Washer', 'Tools', 1, 150.00),
(98, 'Electric Saw', 'Tools', 1, 130.00),
(99, 'Gardening Gloves', 'Tools', 5, 10.00),
(100, 'Chainsaw Gloves', 'Tools', 2, 20.00);



select * from customer;

select * from Orders;


SELECT customerId, 
       SUM(totalAmount) AS totalRevenue
FROM Orders
WHERE status = 'DELIVERED'
GROUP BY customerId;

SELECT customerId, 
       SUM(totalAmount) AS totalRefunds
FROM Orders
WHERE status = 'CANCELLED'
GROUP BY customerId;

SELECT o.customerId, 
       COALESCE(SUM(CASE WHEN o.status = 'DELIVERED' THEN o.totalAmount ELSE 0 END), 0) - 
       COALESCE(SUM(CASE WHEN o.status = 'CANCELLED' THEN o.totalAmount ELSE 0 END), 0) AS adjustedRevenue
FROM Orders o
GROUP BY o.customerId
ORDER BY adjustedRevenue DESC
LIMIT 3;


SELECT 
    customerId, 
    DATE_TRUNC('month', orderDate) AS orderMonth
FROM Orders
WHERE status = 'DELIVERED' 
GROUP BY customerId, orderMonth
ORDER BY orderMonth, customerId;

--3. Longest Order Processing Times 
SELECT 
    o.id AS orderId, 
    o.customerId, 
    o.orderDate, 
    o.deliveryDate, 
    EXTRACT(EPOCH FROM (o.deliveryDate - o.orderDate)) / 3600 AS processingTimeHours
FROM Orders o
WHERE o.status = 'DELIVERED'
ORDER BY processingTimeHours DESC
LIMIT 5;

--Best and Worst Product Categories by Average Order Value
SELECT 
    oi.category, 
    SUM(oi.price * oi.quantity) AS totalRevenue,
    COUNT(DISTINCT o.id) AS orderCount
FROM OrderItem oi
JOIN Orders o ON oi.orderId = o.id
WHERE o.status = 'DELIVERED'
GROUP BY oi.category
order by totalRevenue desc
LIMIT 1;

SELECT 
    oi.category, 
    SUM(oi.price * oi.quantity) AS totalRevenue,
    COUNT(DISTINCT o.id) AS orderCount
FROM OrderItem oi
JOIN Orders o ON oi.orderId = o.id
WHERE o.status = 'DELIVERED'
GROUP BY oi.category
order by totalRevenue asc
LIMIT 1;


SELECT 
    EXTRACT(MONTH FROM o.orderDate) AS orderMonth, 
    EXTRACT(YEAR FROM o.orderDate) AS orderYear,
    COUNT(o.id) AS orderCount, 
    SUM(oi.price * oi.quantity) AS totalRevenue
FROM Orders o
JOIN OrderItem oi ON o.id = oi.orderId
WHERE o.status = 'DELIVERED'
GROUP BY orderYear, orderMonth
ORDER BY orderYear, orderMonth;


--. Most Common Order Sizes 
SELECT 
    oi.orderId, 
    SUM(oi.quantity) AS totalItems
FROM OrderItem oi
GROUP BY oi.orderId;







