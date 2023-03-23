from datetime import datetime
import faker
from random import randint, choice
from psycopg2 import connect, Error
from contextlib import contextmanager

@contextmaneger
def new_connect(host, user, password, port):
    conn = None
    try:
        conn = connect(host = "localhost", user = 'postgres', password = '112233445566', port = 5432)
        yield conn
    except Error as err:
        print("Error:", err)
        conn.rollback()
    finally:
        if conn:
            conn.close


def execute_script(conn, sql_script):
    c = conn.cursor()
    c.execute(sql_script)
    c.close()


if __name__ == '__main__':
    