from faker import Faker
from random import randint, choice 
from execute_script_first import new_connect
from datetime import datetime, timedelta
from psycopg2 import connect
import random
from contextlib import contextmanager



fake = Faker("uk-UA")
# Faker.seed(0)

if __name__ == "__main__":
    sql_1 = """INSERT INTO people (id, full_name, age, email, phone) VALUES (%s, %s, %s, %s, %s)"""

    with new_connect() as conn:
        c = conn.cursor()
        for _ in range(100):
            print(fake.iana_id(), fake.name_male(), randint(18, 90), fake.email(), fake.phone_number())
            c.execute(sql_1, (fake.iana_id(), fake.name_male(), randint(18, 90), fake.email(), fake.phone_number()))
            conn.commit()
            # print(c.fetchone())
        c.close()

    sql_2 = """INSERT INTO subject"""