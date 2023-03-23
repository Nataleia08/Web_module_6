from faker import Faker
from random import randint, choice 
# from execute_script_first import new_connect
from datetime import datetime, timedelta
from psycopg2 import connect
import random

from contextlib import contextmanager

@contextmanager
def new_connect(conn_host, conn_user, conn_password, conn_port):
    conn = None
    try:
        conn = connect(host = conn_host, user = conn_user, password = conn_password, port = conn_port)
        yield conn
    except OSError as err:
        print("Error:", err)
        conn.rollback()
    finally:
        if conn:
            conn.close


fake = Faker("uk-UA")

if __name__ == "__main__":
    sql_1 = """INSERT INTO people (id, full_name, age, email, phone) VALUES (%s, %s, %s, %s, %s)"""

    with new_connect('localhost', 'postgres', '112233445566', 5432) as conn:
        c = conn.cursor()
        for i in range(100):
            c.execute(sql_1, (i+1, fake.name_male(), randint(18, 90), fake.email(), fake.phone_number()))
        c.close()