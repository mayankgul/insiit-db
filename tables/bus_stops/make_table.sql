CREATE TABLE bus_stops (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    latitude VARCHAR,
    longitude VARCHAR,
    landmark VARCHAR
);