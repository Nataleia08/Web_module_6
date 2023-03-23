from faker import Faker
from random import randint, choice 
from execute_script_first import new_connect
from datetime import datetime, timedelta
from psycopg2 import connect
import random
from contextlib import contextmanager



fake = Faker("uk-UA")
# Faker.seed(0)

GROUP_LIST = ["КА-56", "МА-98", "СА-33"]

if __name__ == "__main__":
    sql_1 = """INSERT INTO people (id, full_name, age, email, phone) VALUES (%s, %s, %s, %s, %s)"""

    with new_connect() as conn:
        c = conn.cursor()
        for i in range(200):
            print(i+1, fake.name_male(), randint(18, 90), fake.email(), fake.phone_number())
            c.execute(sql_1, (i+1, fake.name_male(), randint(18, 90), fake.email(), fake.phone_number()))
            conn.commit()
            # print(c.fetchone())
        c.close()

    sql_2 = """INSERT INTO stu_groups (id, group_number, kurs, daytime) VALUES (%s, %s, %s, %s)"""

    with new_connect() as conn:
        c = conn.cursor()
        for i, j in GROUP_LIST, range(3):
            c.execute(sql_1, (j, i, randint(1, 5), randint(1, 2)))
            conn.commit()
            print(c.fetchone())
        c.close()