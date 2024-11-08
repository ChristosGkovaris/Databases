CREATE TABLE Restaurant (
    restaurant_ID INTEGER PRIMARY KEY,
    restaurant_name TEXT NOT NULL,
    restaurant_address TEXT NOT NULL,
    restaurant_phone TEXT NOT NULL,
    restaurant_average_rating REAL NOT NULL
);

CREATE TABLE Food (
    food_ID INTEGER PRIMARY KEY,
    restaurant_ID INTEGER,
    food_description TEXT NOT NULL,
    food_price REAL NOT NULL,
    FOREIGN KEY (restaurant_ID) REFERENCES Restaurant(restaurant_ID) ON DELETE CASCADE
);

CREATE TABLE Customer (
    customer_ID INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    customer_email TEXT NOT NULL,
    customer_phone TEXT NOT NULL,
    customer_delivery address TEXT NOT NULL,
    customer_payment_method TEXT NOT NULL
);

CREATE TABLE Order (
    order_ID INTEGER PRIMARY KEY,
    customer_ID INTEGER,
    restaurant_ID INTEGER,
    courier_ID INTEGER,
    total_price REAL NOT NULL,
    order_date TEXT NOT NULL,
    status TEXT,
    FOREIGN KEY (customer_ID) REFERENCES Customer(customer_ID) ON DELETE CASCADE,
    FOREIGN KEY (restaurant_ID) REFERENCES Restaurant(restaurant_ID) ON DELETE CASCADE,
    FOREIGN KEY (courier_ID) REFERENCES Courier(courier_ID) ON DELETE CASCADE
);

CREATE TABLE Order_Food (
    order_ID INTEGER,
    food_ID INTEGER,
    quantity INTEGER NOT NULL,
    PRIMARY KEY (order_ID, food_ID),
    FOREIGN KEY (order_ID) REFERENCES Order(order_ID) ON DELETE CASCADE,
    FOREIGN KEY (food_ID) REFERENCES Food(food_ID) ON DELETE CASCADE
);

CREATE TABLE Courier (
    courier_ID INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    courier_phone TEXT NOT NULL,
    courier_vehicle_type TEXT NOT NULL,
    availability TEXT NOT NULL
);