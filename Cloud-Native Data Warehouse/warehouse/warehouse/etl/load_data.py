import psycopg2
import csv


conn = psycopg2.connect(
host="localhost",
database="warehouse",
user="postgres",
password="password"
)
cur = conn.cursor()


with open('../data/raw/products.csv', 'r') as f:
reader = csv.reader(f)
next(reader)
for row in reader:
cur.execute(
"INSERT INTO dim_product(product_name, category) VALUES (%s, %s)",
row
)


conn.commit()
cur.close()
conn.close()