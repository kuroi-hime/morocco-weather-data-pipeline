-- Création table:
CREATE TABLE ville (
    id SERIAL PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,

    UNIQUE (city, country)
);