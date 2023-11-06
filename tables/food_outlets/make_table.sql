-- Creating table food_outlets
CREATE TABLE food_outlets (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    location JSON,
    landmark VARCHAR,
    open_time TIME,
    close_time TIME,
    rating NUMERIC,   
    menu JSON,
    image VARCHAR
);