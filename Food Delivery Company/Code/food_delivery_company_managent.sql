INSERT INTO Restaurant (restaurant_ID, restaurant_name, restaurant_address, restaurant_phone, restaurant_average_rating) VALUES
    (1, 'Pasta House', 'Via Roma, 123', '2101234567', 8.5),
    (2, 'Mexican Fiesta', 'Calle Mayor, 45', '2109876543', 7.0),
    (3, 'Sushi World', 'Chuo, 1', '2105558888', 9.0),
    (4, 'Burger King', 'King St, 101', '2112233445', 7.5),
    (5, 'Vegetarian Delight', 'Green Rd, 50', '2109988776', 8.0);

INSERT INTO Food (food_ID, restaurant_ID, food_description, food_price) VALUES
    (1, 1, 'Spaghetti Carbonara', 12.50),
    (2, 1, 'Lasagna', 14.00),
    (3, 2, 'Tacos', 10.00),
    (4, 3, 'Sushi Rolls', 15.00),
    (5, 5, 'Vegetable Curry', 13.50);

INSERT INTO Customer (customer_ID, customer_name, customer_email, customer_phone, customer_delivery_address, customer_payment_method) VALUES
    (1, 'John Doe', 'john.doe@example.com', '6971234567', '123 Main St', 'Credit Card'),
    (2, 'Jane Smith', 'jane.smith@example.com', '6982345678', '456 Oak St', 'Paypal'),
    (3, 'Emily White', 'emily.white@example.com', '6993456789', '789 Pine St', 'Cash'),
    (4, 'David Black', 'david.black@example.com', '6904567890', '101 Maple St', 'Credit Card'),
    (5, 'Lily Blue', 'lily.blue@example.com', '6909876543', '202 Birch St', 'Paypal');

INSERT INTO Order (order_ID, customer_ID, restaurant_ID, courier_ID, total_price, order_date, status) VALUES
    (1, 1, 1, 1, 26.50, '2024-11-07', 'placed'),
    (2, 2, 2, 2, 30.00, '2024-11-07', 'in progress'),
    (3, 3, 3, 3, 18.00, '2024-11-07', 'completed'),
    (4, 4, 4, 4, 28.00, '2024-11-07', 'placed'),
    (5, 5, 5, 5, 27.00, '2024-11-07', 'completed');

INSERT INTO Courier (courier_ID, name, courier_phone, courier_vehicle_type, availability) VALUES
    (1, 'Mike Johnson', '6901112233', 'Car', 'available'),
    (2, 'Sara Brown', '6902223344', 'Bike', 'unavailable'),
    (3, 'Tom Green', '6903334455', 'Scooter', 'available'),
    (4, 'Anna White', '6904445566', 'Car', 'available'),
    (5, 'Paul Black', '6905556677', 'Bike', 'unavailable');

INSERT INTO Order_Food (order_ID, food_ID, quantity) VALUES
    (1, 1, 2),
    (2, 3, 3),
    (3, 4, 1),
    (4, 5, 2),
    (5, 2, 1);




UPDATE Order
SET restaurant_ID = 999
WHERE order_ID = 1;




DELETE FROM Restaurant
WHERE restaurant_ID = 1;