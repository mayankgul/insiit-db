-- Creating table mess_menus
CREATE TABLE mess_menus (
    id SERIAL PRIMARY KEY,
    month INT NOT NULL,
    year INT NOT NULL,
    monday_breakfast JSON,
    monday_lunch JSON,
    monday_snacks JSON,
    monday_dinner JSON,
    tuesday_breakfast JSON,
    tuesday_lunch JSON,
    tuesday_snacks JSON,
    tuesday_dinner JSON,
    wednesday_breakfast JSON,
    wednesday_lunch JSON,
    wednesday_snacks JSON,
    wednesday_dinner JSON,
    thursday_breakfast JSON,
    thursday_lunch JSON,
    thursday_snacks JSON,
    thursday_dinner JSON,
    friday_breakfast JSON,
    friday_lunch JSON,
    friday_snacks JSON,
    friday_dinner JSON,
    saturday_breakfast JSON,
    saturday_lunch JSON,
    saturday_snacks JSON,
    saturday_dinner JSON,
    sunday_breakfast JSON,
    sunday_lunch JSON,
    sunday_snacks JSON,
    sunday_dinner JSON
);

-- Validating JSON schemas
CREATE FUNCTION validate_json_schemas_mess_menus()
RETURNS TRIGGER AS $$
DECLARE
    monday_breakfast_menu_item_id NUMERIC;
    monday_lunch_menu_item_id NUMERIC;
    monday_snacks_menu_item_id NUMERIC;
    monday_dinner_menu_item_id NUMERIC;
    tuesday_breakfast_menu_item_id NUMERIC;
    tuesday_lunch_menu_item_id NUMERIC;
    tuesday_snacks_menu_item_id NUMERIC;
    tuesday_dinner_menu_item_id NUMERIC;
    wednesday_breakfast_menu_item_id NUMERIC;
    wednesday_lunch_menu_item_id NUMERIC;
    wednesday_snacks_menu_item_id NUMERIC;
    wednesday_dinner_menu_item_id NUMERIC;
    thursday_breakfast_menu_item_id NUMERIC;
    thursday_lunch_menu_item_id NUMERIC;
    thursday_snacks_menu_item_id NUMERIC;
    thursday_dinner_menu_item_id NUMERIC;
    friday_breakfast_menu_item_id NUMERIC;
    friday_lunch_menu_item_id NUMERIC;
    friday_snacks_menu_item_id NUMERIC;
    friday_dinner_menu_item_id NUMERIC;
    saturday_breakfast_menu_item_id NUMERIC;
    saturday_lunch_menu_item_id NUMERIC;
    saturday_snacks_menu_item_id NUMERIC;
    saturday_dinner_menu_item_id NUMERIC;
    sunday_breakfast_menu_item_id NUMERIC;
    sunday_lunch_menu_item_id NUMERIC;
    sunday_snacks_menu_item_id NUMERIC;
    sunday_dinner_menu_item_id NUMERIC;
BEGIN
    IF NEW.monday_breakfast IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.monday_breakfast) = 'array' THEN
            RAISE EXCEPTION 'monday breakfast must be an array';
        END IF;

        FOR monday_breakfast_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.monday_breakfast)
        LOOP
            IF monday_breakfast_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the monday breakfast array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.monday_lunch IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.monday_lunch) = 'array' THEN
            RAISE EXCEPTION 'monday lunch must be an array';
        END IF;

        FOR monday_lunch_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.monday_lunch)
        LOOP
            IF monday_lunch_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the monday breakfast array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.monday_snacks IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.monday_snacks) = 'array' THEN
            RAISE EXCEPTION 'monday snacks must be an array';
        END IF;

        FOR monday_snacks_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.monday_snacks)
        LOOP
            IF monday_snacks_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the monday snacks array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.monday_dinner IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.monday_dinner) = 'array' THEN
            RAISE EXCEPTION 'monday dinner must be an array';
        END IF;

        FOR monday_dinner_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.monday_dinner)
        LOOP
            IF monday_dinner_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the monday dinner array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.tuesday_breakfast IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.tuesday_breakfast) = 'array' THEN
            RAISE EXCEPTION 'tuesday breakfast must be an array';
        END IF;

        FOR tuesday_breakfast_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.tuesday_breakfast)
        LOOP
            IF tuesday_breakfast_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the tuesday breakfast array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.tuesday_lunch IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.tuesday_lunch) = 'array' THEN
            RAISE EXCEPTION 'tuesday lunch must be an array';
        END IF;

        FOR tuesday_lunch_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.tuesday_lunch)
        LOOP
            IF tuesday_lunch_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the tuesday lunch array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.tuesday_snacks IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.tuesday_snacks) = 'array' THEN
            RAISE EXCEPTION 'tuesday snacks must be an array';
        END IF;

        FOR tuesday_snacks_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.tuesday_snacks)
        LOOP
            IF tuesday_snacks_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the tuesday snacks array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.tuesday_dinner IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.tuesday_dinner) = 'array' THEN
            RAISE EXCEPTION 'tuesday dinner must be an array';
        END IF;

        FOR tuesday_dinner_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.tuesday_dinner)
        LOOP
            IF tuesday_dinner_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the tuesday dinner array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.wednesday_breakfast IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.wednesday_breakfast) = 'array' THEN
            RAISE EXCEPTION 'wednesday breakfast must be an array';
        END IF;

        FOR wednesday_breakfast_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.wednesday_breakfast)
        LOOP
            IF wednesday_breakfast_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the wednesday breakfast array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.wednesday_lunch IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.wednesday_lunch) = 'array' THEN
            RAISE EXCEPTION 'wednesday lunch must be an array';
        END IF;

        FOR wednesday_lunch_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.wednesday_lunch)
        LOOP
            IF wednesday_lunch_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the wednesday lunch array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.wednesday_snacks IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.wednesday_snacks) = 'array' THEN
            RAISE EXCEPTION 'wednesday snacks must be an array';
        END IF;

        FOR wednesday_snacks_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.wednesday_snacks)
        LOOP
            IF wednesday_snacks_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the wednesday snacks array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.wednesday_dinner IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.wednesday_dinner) = 'array' THEN
            RAISE EXCEPTION 'wednesday dinner must be an array';
        END IF;

        FOR wednesday_dinner_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.wednesday_dinner)
        LOOP
            IF wednesday_dinner_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the wednesday dinner array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.thursday_breakfast IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.thursday_breakfast) = 'array' THEN
            RAISE EXCEPTION 'thursday breakfast must be an array';
        END IF;

        FOR thursday_breakfast_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.thursday_breakfast)
        LOOP
            IF thursday_breakfast_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the thursday breakfast array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.thursday_lunch IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.thursday_lunch) = 'array' THEN
            RAISE EXCEPTION 'thursday lunch must be an array';
        END IF;

        FOR thursday_lunch_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.thursday_lunch)
        LOOP
            IF thursday_lunch_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the thursday lunch array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.thursday_snacks IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.thursday_snacks) = 'array' THEN
            RAISE EXCEPTION 'thursday snacks must be an array';
        END IF;

        FOR thursday_snacks_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.thursday_snacks)
        LOOP
            IF thursday_snacks_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the thursday snacks array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.thursday_dinner IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.thursday_dinner) = 'array' THEN
            RAISE EXCEPTION 'thursday dinner must be an array';
        END IF;

        FOR thursday_dinner_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.thursday_dinner)
        LOOP
            IF thursday_dinner_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the thursday dinner array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.friday_breakfast IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.friday_breakfast) = 'array' THEN
            RAISE EXCEPTION 'friday breakfast must be an array';
        END IF;

        FOR friday_breakfast_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.friday_breakfast)
        LOOP
            IF friday_breakfast_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the friday breakfast array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.friday_lunch IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.friday_lunch) = 'array' THEN
            RAISE EXCEPTION 'friday lunch must be an array';
        END IF;

        FOR friday_lunch_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.friday_lunch)
        LOOP
            IF friday_lunch_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the friday lunch array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.friday_snacks IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.friday_snacks) = 'array' THEN
            RAISE EXCEPTION 'friday snacks must be an array';
        END IF;

        FOR friday_snacks_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.friday_snacks)
        LOOP
            IF friday_snacks_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the friday snacks array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.friday_dinner IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.friday_dinner) = 'array' THEN
            RAISE EXCEPTION 'friday dinner must be an array';
        END IF;

        FOR friday_dinner_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.friday_dinner)
        LOOP
            IF friday_dinner_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the friday dinner array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.saturday_breakfast IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.saturday_breakfast) = 'array' THEN
            RAISE EXCEPTION 'saturday breakfast must be an array';
        END IF;

        FOR saturday_breakfast_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.saturday_breakfast)
        LOOP
            IF saturday_breakfast_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the saturday breakfast array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.saturday_lunch IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.saturday_lunch) = 'array' THEN
            RAISE EXCEPTION 'saturday lunch must be an array';
        END IF;

        FOR saturday_lunch_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.saturday_lunch)
        LOOP
            IF saturday_lunch_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the saturday lunch array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.saturday_snacks IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.saturday_snacks) = 'array' THEN
            RAISE EXCEPTION 'saturday snacks must be an array';
        END IF;

        FOR saturday_snacks_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.saturday_snacks)
        LOOP
            IF saturday_snacks_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the saturday snacks array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.saturday_dinner IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.saturday_dinner) = 'array' THEN
            RAISE EXCEPTION 'saturday dinner must be an array';
        END IF;

        FOR saturday_dinner_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.saturday_dinner)
        LOOP
            IF saturday_dinner_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the saturday dinner array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.sunday_breakfast IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.sunday_breakfast) = 'array' THEN
            RAISE EXCEPTION 'sunday breakfast must be an array';
        END IF;

        FOR sunday_breakfast_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.sunday_breakfast)
        LOOP
            IF sunday_breakfast_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the sunday breakfast array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.sunday_lunch IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.sunday_lunch) = 'array' THEN
            RAISE EXCEPTION 'sunday lunch must be an array';
        END IF;

        FOR sunday_lunch_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.sunday_lunch)
        LOOP
            IF sunday_lunch_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the sunday lunch array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.sunday_snacks IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.sunday_snacks) = 'array' THEN
            RAISE EXCEPTION 'sunday snacks must be an array';
        END IF;

        FOR sunday_snacks_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.sunday_snacks)
        LOOP
            IF sunday_snacks_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the sunday snacks array must be an integer';
            END IF;
        END LOOP;
    END IF;

    IF NEW.sunday_dinner IS NOT NULL THEN
        IF NOT JSON_TYPEOF(NEW.sunday_dinner) = 'array' THEN
            RAISE EXCEPTION 'sunday dinner must be an array';
        END IF;

        FOR sunday_dinner_menu_item_id IN SELECT * FROM JSON_ARRAY_ELEMENTS(NEW.sunday_dinner)
        LOOP
            IF sunday_dinner_menu_item_id::NUMERIC IS NULL THEN
                RAISE EXCEPTION 'item ID in the sunday dinner array must be an integer';
            END IF;
        END LOOP;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Creating trigger to validate JSON schemas
CREATE TRIGGER validate_json_mess_menus
BEFORE INSERT OR UPDATE ON mess_menus
    FOR EACH ROW EXECUTE FUNCTION validate_json_schemas_mess_menus();