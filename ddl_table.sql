-- Script DDL para crear la tabla pc_ml_diabetes en Supabase
-- Ejecutar desde el editor SQL de Supabase

CREATE TABLE IF NOT EXISTS "pc_ml_diabetes" (
    id SERIAL PRIMARY KEY,
    age DOUBLE PRECISION,
    sex DOUBLE PRECISION,
    bmi DOUBLE PRECISION,
    bp DOUBLE PRECISION,
    s1 DOUBLE PRECISION,
    s2 DOUBLE PRECISION,
    s3 DOUBLE PRECISION,
    s4 DOUBLE PRECISION,
    s5 DOUBLE PRECISION,
    s6 DOUBLE PRECISION,
    prediction DOUBLE PRECISION,
    created_time TIMESTAMP WITH TIME ZONE DEFAULT now()
);

-- Verificar que la tabla se creó correctamente
SELECT * FROM pc_ml_diabetes LIMIT 5;
