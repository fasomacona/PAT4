# Tema 4 – Gestión de Bases de Datos Avanzada

**Asignatura:** Programación Avanzada (GAB-2402)  
**Carrera:** Ingeniería Informática  
**Especialidad:** Gestión y Analítica Avanzada de Datos  
**Institución:** Tecnológico de Estudios Superiores de Chalco  

**Material didáctico creado por el Prof. Fabián Soberanes Martín**

---

## Descripción

Sitio web **extenso y detallado** del Tema 4:

1. **4.1** Diseño y optimización de esquemas (ER, normalización 1FN–BCNF, claves, índices)
2. **4.2** Bases relacionales y NoSQL (PostgreSQL/SQLite vs MongoDB, CRUD, modelado documental)
3. **4.3** Consultas avanzadas (JOINs, CTEs, window functions, transacciones, seguridad)

Incluye práctica en Jupyter con esquema SQL, datos CSV y ejercicios guiados.

---

## Estructura

```
tema4-bases-de-datos/
├── index.html
├── 01-diseno-esquemas.html
├── 02-relacionales-nosql.html
├── 03-consultas-avanzadas.html
├── practica.html
├── css/styles.css
├── sql/
│   └── schema_tienda.sql
├── data/
│   ├── categorias.csv
│   ├── productos.csv
│   ├── clientes.csv
│   ├── pedidos.csv
│   └── detalle_pedido.csv
├── notebooks/
│   └── practica_tema4.ipynb
├── requirements.txt
└── README.md
```

---

## Cómo ver el sitio

```bash
cd tema4-bases-de-datos
python -m http.server 8000
```

**GitHub Pages:** Settings → Pages → branch `main` / root.

---

## Cómo ejecutar la práctica

```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
jupyter lab
```

Abre `notebooks/practica_tema4.ipynb`.  
La práctica usa **SQLite** (no requiere servidor). Los CSV están en `data/`.

---

## Competencias

- Diseñar esquemas optimizados y normalizados
- Usar bases relacionales y NoSQL
- Consultas avanzadas y manipulación segura de datos
- Integrar BD en el flujo de analítica

---

**Creado por el Prof. Fabián Soberanes Martín**  
Listo para subir a GitHub.
