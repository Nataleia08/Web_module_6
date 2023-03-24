from faker import Faker
from random import randint, choice 
from execute_script_first import new_connect
from datetime import datetime, timedelta
from psycopg2 import connect
import random
from contextlib import contextmanager



fake = Faker("uk-UA")

GROUP_LIST = ["КА-56", "МА-98", "СА-33"]

STUDENTS_COUNT = 200
SUBJECT_LIST = [
    "Математичний аналіз", 
    "Лінейна алгебра", 
    "Теорія ймовірностей",
    "Алгоритми програмування",
    "Операційні системи",
    "Дискретна математика",
    "Чисельні методи"
]

if __name__ == "__main__":
    sql_1 = """INSERT INTO people (id, full_name, age, email, phone) VALUES (%s, %s, %s, %s, %s)"""

    with new_connect() as conn:
        c = conn.cursor()
        for i in range(100):
            c.execute(sql_1, (i+1, fake.name_male(), randint(18, 30), fake.email(), fake.phone_number()))
            conn.commit()
        for i in range(100, 200):
            # print(i+1, fake.name(), randint(30, 90), fake.email(), fake.phone_number())
            c.execute(sql_1, (i+1, fake.name_male(), randint(30, 90), fake.email(), fake.phone_number()))
            conn.commit()
        c.close()

    sql_2 = """INSERT INTO stu_groups (id, group_number, kurs, daytime) VALUES (%s, %s, %s, %s)"""

    with new_connect() as conn:
        c = conn.cursor()
        j = 1
        for i in GROUP_LIST:
            c.execute(sql_2, (j, i, randint(1, 5), randint(1, 2)))
            conn.commit()
            j +=1 
        c.close()


    sql_3 = """INSERT INTO students (id, budget, scholarship, group_id, people_id) VALUES (%s, %s, %s, %s, %s)"""

    with new_connect() as conn:
        c = conn.cursor()
        for i in range(50):
            c.execute(sql_3, (i, bool(randint(0, 1)), bool(randint(0, 1)), choice(range(1, 3)), choice(range(1, 100))))
            conn.commit()
        c.close()