-- Création table:
CREATE TABLE weather_risk (
    id SERIAL PRIMARY KEY,
    prevision_id INTEGER NOT NULL REFERENCES prevision_meteo(id),

    temperature_2m_max_risk DECIMAL(5,2),
    temperature_2m_min_risk DECIMAL(5,2),
    precipitation_probability_risk DECIMAL(5,2),
    precipitation_sum_risk DECIMAL(5,2),
    wind_speed_risk DECIMAL(5,2),
    wind_gusts_risk DECIMAL(5,2),

    risk_score DECIMAL(6,2),

    UNIQUE (prevision_id)
);