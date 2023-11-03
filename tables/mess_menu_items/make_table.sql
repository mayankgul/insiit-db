-- Creating table mess_food_items
CREATE TABLE mess_menu_items (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    description VARCHAR,
    rating NUMERIC,
    cal INTEGER,
    image VARCHAR
);