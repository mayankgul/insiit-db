CREATE TABLE food_outlet_menu_items (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    price NUMERIC NOT NULL,
    description VARCHAR,
    rating NUMERIC,
    size VARCHAR,
    cal NUMERIC,
    image VARCHAR,
    food_outlet_id INT NOT NULL,
    FOREIGN KEY (food_outlet_id) REFERENCES food_outlets(id)
);
