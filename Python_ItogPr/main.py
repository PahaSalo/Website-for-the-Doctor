import pyodbc

connection_string = 'DRIVER={SQL Server};SERVER=LAPTOP-6J346A01;DATABASE=DOCTOR'
connection = pyodbc.connect(connection_string)

cursor = connection.cursor()
cursor.execute('select * from Client')
print(cursor.fetchall())