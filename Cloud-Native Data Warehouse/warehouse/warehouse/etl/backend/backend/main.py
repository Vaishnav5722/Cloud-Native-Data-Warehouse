from fastapi import FastAPI
from sqlalchemy import text
from database import engine


app = FastAPI()


@app.get("/revenue-by-category")
def revenue_by_category():
with engine.connect() as conn:
result = conn.execute(text("""
SELECT p.category, SUM(f.total_amount) AS revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.category
"""))
return [dict(row) for row in result]