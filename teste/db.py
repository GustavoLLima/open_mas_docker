#!/usr/bin/python
# -*- coding: latin-1 -*-
# Importa o modulo de conexao com o mysql
import MySQLdb

#https://pt.stackoverflow.com/questions/176521/como-conectar-python-com-banco-de-dados-mysql

# Gera a string de conexao ex.: seu host, seu usuario, sua senha e seu db
db = MySQLdb.connect(host="db", user="MYSQL_USER", passwd="MYSQL_PASSWORD", db="MYSQL_DATABASE")
# db = MySQLdb.connect(host="localhost", port=3306, user="MYSQL_USER", passwd="MYSQL_PASSWORD", db="MYSQL_DATABASE")
# Posiciona o cursor
cursor = db.cursor()
# Executa a consulta na tabela selecionada
cursor.execute("SELECT * FROM MYSQL_DATABASE.teste")
# Conta o numero de linhas na tabela
numrows = int(cursor.rowcount)
# Obtendo resultados
print ("--------------------------------------------------")
print ("| ID  Campo                                      |")
print ("--------------------------------------------------")
# Laço for para retornar os valores, ex.: row[0] primeira coluna, row[1] segunda coluna, row[2] terceira coluna, etc.
for row in cursor.fetchall():
   print (" "+str(row[0])+" "+str(row[1])+" "+str(row[2])+" "+str(row[3]))

def teste_retorno(string_recebida):
    print("string recebida: "+string_recebida)
    return (string_recebida+" algo")

def send_function(string_to_send):
    print('1')

# import MySQLdb # para o MySQL
# print("oi")


# # MYSQL_ROOT_PASSWORD: MYSQL_ROOT_PASSWORD
# # MYSQL_DATABASE: MYSQL_DATABASE
# # MYSQL_USER: MYSQL_USER
# # MYSQL_PASSWORD: MYSQL_PASSWORD

# print("1")
# con = MySQLdb.connect(host="db", user="MYSQL_USER", passwd="MYSQL_PASSWORD", db="MYSQL_DATABASE")
# print("2")
# con.select_db('MYSQL_DATABASE')
# print("3")