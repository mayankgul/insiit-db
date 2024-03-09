CREATE TABLE bus_routes (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    from_stop INTEGER REFERENCES bus_stops(id),
    to_stop INTEGER REFERENCES bus_stops(id),
    via_stops JSON
    -- via_stops should be a list of bus stop ids
);