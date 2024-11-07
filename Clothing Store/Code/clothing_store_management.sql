INSERT INTO Clothes (clothes_ID, clothes_country, clothes_description, clothes_average_stars) VALUES
(1, 'Italy', 'Black T-shirt', 4.5),
(2, 'France', 'White dress', 3.8),
(3, 'Spain', 'Red jacket', 4.2),
(4, 'Germany', 'Jeans', 4.0),
(5, 'Greece', 'Yellow sweater', 3.5);

INSERT INTO Customer (customer_ID, customer_name, customer_address) VALUES
(1, 'Maria Papadopoulou', 'Athens, Patission 12'),
(2, 'George Pappas', 'Thessaloniki, Tsimiski 34'),
(3, 'Eleni Karagianni', 'Patras, Kalavryton 56'),
(4, 'Nikos Alexiou', 'Larissa, Venizelou 45'),
(5, 'Antonis Petridis', 'Heraklion, Minotavrou 78');

INSERT INTO Rating (customer_ID, clothes_ID, rating, rating_date) VALUES
(1, 1, 5, '2024-01-10'),
(2, 1, 4, '2024-01-15'),
(3, 2, 3, '2024-02-20'),
(4, 3, 4, '2024-03-05'),
(5, 4, 2, '2024-04-10');

INSERT INTO Availability (clothes_ID, clothes_colour, clothes_size, available_clothes, price) VALUES
(1, 'Black', 'M', 10, 20.0),
(2, 'Black', 'L', 8, 22.0),
(3, 'White', 'S', 5, 25.0),
(4, 'Blue', 'L', 12, 28.0),
(5, 'Red', 'M', 7, 30.0);




SELECT * FROM Rating;
UPDATE Rating SET clothes_ID = 999 WHERE rating_code = 1;
SELECT * FROM Rating;



SELECT * FROM Clothes;
DELETE FROM Clothes WHERE clothes_ID = 1;
SELECT * FROM Clothes;
SELECT * FROM Rating;
SELECT * FROM Availability;