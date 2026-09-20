-- Création table:
CREATE TABLE prevision_meteo (
    id SERIAL PRIMARY KEY,
    datapoint_id INTEGER NOT NULL REFERENCES datapoint(id),

    time DATE NOT NULL,

    temperature_2m_max DECIMAL(5,2),
    temperature_2m_min DECIMAL(5,2),
    precipitation_sum DECIMAL(6,2),
    precipitation_probability_max DECIMAL(5,2),
    wind_speed_10m_max DECIMAL(6,2),
    wind_gusts_10m_max DECIMAL(6,2),
    weather_code SMALLINT,

    UNIQUE (datapoint_id, time)
);