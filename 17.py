import psycopg2

connection = psycopg2.connect(
    dbname='markets', 
    user='aminafacebook', 
    password='amina314', 
    host='localhost'
)
cursor = connection.cursor()
print(cursor.execute("SELECT * FROM sulpak;"))
