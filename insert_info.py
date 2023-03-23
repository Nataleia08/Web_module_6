import Faker import Faker
from random import randint, choice
from execute_script_first import new_connect, execute_script

fake = Faker("uk-UA")

if __name__ == "__main__":
    sql_sc = """INSERT INTO """