DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS daycares;

CREATE TABLE users (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    user_location TEXT NOT NULL
);

CREATE TABLE daycares (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    street_address TEXT NOT NULL,
    city TEXT NOT NULL,
    state TEXT NOT NULL,
    zipcode TEXT NOT NULL,
    image TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    day BOOLEAN,
    evening BOOLEAN,
    infant BOOLEAN,
    toddler BOOLEAN,
    child BOOLEAN,
    older_child BOOLEAN,
    snacks BOOLEAN,
    covid_plan BOOLEAN
);

