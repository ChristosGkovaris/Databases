CREATE TABLE Clothes (
    clothes_ID INTEGER PRIMARY KEY, 
    clothes_country TEXT NOT NULL, 
    clothes_description TEXT,
    clothes_average_stars REAL
);


CREATE TABLE Customer (
    customer_ID INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    customer_address TEXT
);


CREATE TABLE Availability (
    clothes_ID INTEGER,
    clothes_colour TEXT,
    clothes_size TEXT,
    available_clothes INTEGER CHECK(available_clothes >= 0),
    price REAL CHECK(price > 0),
    PRIMARY KEY (clothes_ID, clothes_colour, clothes_size),
    FOREIGN KEY (clothes_ID) REFERENCES Clothes(clothes_ID) ON DELETE CASCADE
);


CREATE TABLE Rating (
    rating_code INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_ID INTEGER,
    clothes_ID INTEGER,
    rating REAL,
    rating_date DATE NOT NULL,
    FOREIGN KEY (customer_ID) REFERENCES Customer(customer_ID) ON DELETE CASCADE,
    FOREIGN KEY (clothes_ID) REFERENCES Clothes(clothes_ID) ON DELETE CASCADE
);
