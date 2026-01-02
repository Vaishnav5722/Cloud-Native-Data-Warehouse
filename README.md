Raw CSV Data
     ↓
ETL Pipeline (Python)
     ↓
Cloud-Native Warehouse (PostgreSQL locally)
     ↓
FastAPI Backend (Analytics Endpoints)
     ↓
Frontend Dashboard (HTML + CSS + JS)
cloud-native-data-warehouse/
│
├── data/
│   ├── raw/                 # CSV datasets
│
├── warehouse/
│   ├── schema.sql           # Star-Snowflake schema
│   ├── star_snowflake.sql   # Structure-only breakdown
│   ├── optimized_queries.sql# Cost-efficient queries
│
├── etl/
│   ├── load_data.py         # Load raw CSV → warehouse
│   └── transform.py         # Data transformations
│
├── backend/
│   ├── main.py              # FastAPI backend
│   ├── database.py
│   └── models.py
│
├── frontend/
│   ├── index.html
│   ├── style.css
│   └── app.js
│
└── README.md
