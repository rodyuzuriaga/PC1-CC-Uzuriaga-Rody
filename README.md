# PC1-CC-Uzuriaga-Rody

Aplicación de predicción de progresión de diabetes usando Machine Learning con Streamlit y Supabase.

## Características

- Modelo de Machine Learning para predecir la progresión de diabetes
- Interfaz web interactiva con Streamlit
- Almacenamiento de predicciones en Supabase PostgreSQL
- Job automatizado en Databricks para generación de datos sintéticos

## Estructura del Proyecto

```
PC1-CC-Uzuriaga-Rody/
├── components/
│   ├── diabetes_model.pkl
│   ├── diabetes_scaler.pkl
│   └── diabetes_model_info.pkl
├── pc-app.py
├── pc-job.ipynb
├── requirements.txt
├── secrets.toml (no incluido en Git)
└── README.md
```

## Instalación

```bash
pip install -r requirements.txt
```

## Configuración

Crea un archivo `secrets.toml` con tus credenciales de Supabase:

```toml
[postgres]
USER = "tu_usuario"
PASSWORD = "tu_contraseña"
HOST = "tu_host.supabase.com"
PORT = "6543"
DBNAME = "postgres"
```

## Uso

### Aplicación Streamlit

```bash
streamlit run pc-app.py
```

### Job de Databricks

Sube el archivo `pc-job.ipynb` a Databricks y configura un job programado.

## Base de Datos

La tabla `pc_ml_diabetes` almacena las predicciones con las siguientes columnas:
- age, sex, bmi, bp, s1, s2, s3, s4, s5, s6 (características del paciente)
- prediction (predicción del modelo)
- created_time (timestamp)
