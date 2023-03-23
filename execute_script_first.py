from datetime import datetime
from psycopg2 import connect, Error
from contextlib import contextmanager

@contextmanager
def new_connect():
    conn = None
    try:
        conn = connect(host = 'localhost', user = 'postgres', password = '112233445566', port = 5432)
        yield conn
    except Error as err:
        print("Error:", err)
        # conn.rollback()
    finally:
        if conn:
            conn.close()


def execute_script(conn, sql_script):
    c = conn.cursor()
    c.execute(sql_script)
    c.close()



# def create_table():
#     for i in range(7):
#         with open(f"querty_{i+1}.sql", "r") as f:
#             sql = f.read()
#         with new_connect() as conn:
#             execute_script(conn, sql)


# if __name__ == '__main__':
#   sql_1 = """CREATE TABLE people(
#   id INT PRIMARY KEY,
#   full_name VARCHAR(150),
#   day_birthday DATE, 
#   email VARCHAR(30),
#   phone VARCHAR(15) UNIQUE NOT NULL, 
#   gender_id INT, 
#   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
#   last_update_at TIMESTAMP
# );"""

# with new_connect() as conn:
#     execute_script(conn, sql_1)