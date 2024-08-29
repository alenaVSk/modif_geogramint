CREATE TABLE IF NOT EXISTS users (
        id SERIAL PRIMARY KEY,
        user_id VARCHAR(255),
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        username VARCHAR(255),
        phone VARCHAR(20),
        distance INTEGER,
        scan_time TIMESTAMP,
        latitude FLOAT,
        longitude FLOAT
    );

CREATE TABLE IF NOT EXISTS groups (
    id SERIAL PRIMARY KEY,
    group_id VARCHAR(255),
    name VARCHAR(255),
    distance INTEGER,
    scan_time TIMESTAMP,
    latitude FLOAT,
    longitude FLOAT
);
