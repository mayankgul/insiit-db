CREATE TABLE bus_schedules (
    id SERIAL PRIMARY KEY,
    start_time TIME NOT NULL,
    route_id INTEGER NOT NULL REFERENCES bus_routes(id),
    bus_type_id INTEGER NOT NULL REFERENCES bus_types(id),
    end_time TIME,
    via_stops_times JSON
);