from datetime import datetime
from psycopg2 import connect, Error
from contextlib import contextmanager

@contextmanager
def new_connect(conn_host, conn_user, conn_password, conn_port):
    conn = None
    try:
        conn = connect(host = conn_host, user = conn_user, password = conn_password, port = conn_port)
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
    sql_1 = """CREATE TABLE people(
  id INT PRIMARY KEY,
  full_name VARCHAR(150),
  day_birthday DATE, 
  email VARCHAR(30),
  phone VARCHAR(15) UNIQUE NOT NULL, 
  gender_id INT, 
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
  last_update_at TIMESTAMP
);"""

with new_connect("localhost", 'postgres', '112233445566', 5432) as conn:
    execute_script(conn, sql_1)