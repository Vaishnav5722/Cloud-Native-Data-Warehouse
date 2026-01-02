from sqlalchemy import create_engine


DATABASE_URL = "postgresql://postgres:password@localhost/warehouse"
engine = create_engine(DATABASE_URL)