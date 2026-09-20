-- Création table:
CREATE TABLE datapoint (
    id SERIAL PRIMARY KEY,
    ville_id INTEGER NOT NULL REFERENCES ville(id),

    longitude DECIMAL(9,6) NOT NULL,
    latitude DECIMAL(9,6) NOT NULL,
    elevation DECIMAL(8,2),

    UNIQUE (ville_id)
);