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

-- Validating JSON schemas
CREATE FUNCTION validate_json_schemas_messes()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.location IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.location) = 'object' THEN
            RAISE EXCEPTION 'location must be an object';
        END IF;

        IF (NEW.location ->> 'latitude' IS NULL) OR (NEW.location ->> 'latitude')::TEXT IS NULL THEN
            RAISE EXCEPTION 'latitude must be a number in a string';
        END IF;

        IF (NEW.location ->> 'longitude' IS NULL) OR (NEW.location ->> 'longitude')::TEXT IS NULL THEN
            RAISE EXCEPTION 'longitude must be a number in a string';
        END IF;
    END IF;

    IF NEW.timings IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.timings) = 'object' THEN
            RAISE EXCEPTION 'timings must be an object';
        END IF;

        IF NOT JSON_TYPEOF(NEW.timings ->> 'breakfast') = 'object' THEN
            RAISE EXCEPTION 'breakfast must be an object';
        END IF;

        IF (NEW.timings ->> 'breakfast' ->> 'start') IS NULL THEN
            RAISE EXCEPTION 'breakfast.start must be a time';
        END IF;

        IF (NEW.timings ->> 'breakfast' ->> 'end') THEN
            RAISE EXCEPTION 'breakfast.end must be a time';
        END IF;

        IF NOT JSON_TYPEOF(NEW.timings ->> 'lunch') = 'object' THEN
            RAISE EXCEPTION 'lunch must be an object';
        END IF;

        IF (NEW.timings ->> 'lunch' ->> 'start') IS NULL THEN
            RAISE EXCEPTION 'lunch.start must be a time';
        END IF;

        IF (NEW.timings ->> 'lunch' ->> 'end') IS NULL THEN
            RAISE EXCEPTION 'lunch.end must be a time';
        END IF;

        IF NOT JSON_TYPEOF(NEW.timings ->> 'snacks') = 'object' THEN
            RAISE EXCEPTION 'snacks must be an object';
        END IF;

        IF (NEW.timings ->> 'snacks' ->> 'start') IS NULL THEN
            RAISE EXCEPTION 'snacks.start must be a time';
        END IF;

        IF (NEW.timings ->> 'snacks' ->> 'end') IS NULL THEN
            RAISE EXCEPTION 'snacks.end must be a time';
        END IF;

        IF NOT JSON_TYPEOF(NEW.timings ->> 'dinner') = 'object' THEN
            RAISE EXCEPTION 'dinner must be an object';
        END IF;

        IF (NEW.timings ->> 'dinner' ->> 'start') IS NULL THEN
            RAISE EXCEPTION 'dinner.start must be a time';
        END IF;

        IF (NEW.timings ->> 'dinner' ->> 'end') IS NULL THEn
            RAISE EXCEPTION 'dinner.end must be a time';
        END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Creating trigger to validate JSON schema
CREATE TRIGGER validate_json_messes
BEFORE INSERT OR UPDATE ON messes
FOR EACH ROW EXECUTE FUNCTION validate_json_schemas_messes();
