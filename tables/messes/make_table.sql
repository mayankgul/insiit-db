-- Creating table messes
CREATE TABLE messes (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    location JSON,
    landmark VARCHAR,
    timings JSON,
    rating NUMERIC,
    menu_id INTEGER REFERENCES mess_menus(id),
    image VARCHAR
);
