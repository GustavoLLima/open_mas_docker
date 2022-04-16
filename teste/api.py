import flask
from flask import request, jsonify
import sqlite3

import mysql.connector
from mysql.connector import errorcode

import random

import time

#https://programminghistorian.org/en/lessons/creating-apis-with-python-and-flask

app = flask.Flask(__name__)
app.config["DEBUG"] = True

# def dict_factory(cursor, row):
#     d = {}
#     for idx, col in enumerate(cursor.description):
#         d[col[0]] = row[idx]
#     return d


# @app.route('/', methods=['GET'])
# def home():
#     return '''<h1>Distant Reading Archive</h1>
# <p>A prototype API for distant reading of science fiction novels.</p>'''


# @app.route('/api/v1/resources/books/all', methods=['GET'])
# def api_all():
#     conn = sqlite3.connect('books.db')
#     conn.row_factory = dict_factory
#     cur = conn.cursor()
#     all_books = cur.execute('SELECT * FROM books;').fetchall()

#     return jsonify(all_books)



@app.errorhandler(404)
def page_not_found(e):
    return "<h1>404</h1><p>The resource could not be found.</p>", 404

@app.route('/api/v1/resources/output_php', methods=['GET'])
def output_php():

  print("ooo")

  query_parameters = request.args
  modelo = query_parameters.get('model')

  return_list = []
  to_update = []

  cnx = mysql.connector.connect(user='MYSQL_USER', password='MYSQL_PASSWORD',
                                 host='db',
                                 database='MYSQL_DATABASE')
  cursor = cnx.cursor()
  # query = ("SELECT id, agent_id, data, path, proccessed FROM "+modelo+" "
  #           "WHERE proccessed = %s AND %s")

  # query = ("SELECT id, agent_id, data, path, proccessed FROM "+modelo+" "
  #           "WHERE proccessed = 0")

  query = "SELECT MAX(id) AS id, agent_id, MAX(data) AS data, MAX(path) AS path, MAX(proccessed) AS proccessed FROM "+modelo+" GROUP BY agent_id ORDER BY agent_id ASC";

  # cursor.execute(query, (0, "1=1"))
  cursor.execute(query)

  for (id, agent_id, data, path, proccessed) in cursor:
    print("iii")
    return_list.append([agent_id, data, path, proccessed])
    to_update.append(id)

  cursor.close()

  # for tupla in to_update:
  #   try:
  #     cursor = cnx.cursor()
  #     # temporary_query = "UPDATE "+modelo+" SET asl_file_path = 123456 WHERE id = "+str(tupla)+"; "
  #     # temporary_query = "UPDATE "+modelo+" SET proccessed = 0 WHERE id = "+str(tupla)+"; "
  #     temporary_query = "UPDATE "+modelo+" SET proccessed = 0 WHERE id = "+str(tupla)+"; "
  #     query = (temporary_query)
  #     cursor.execute(temporary_query)
  #     cnx.commit()
  #   # except mysql.connector.ProgrammingError as err:
  #   except mysql.connector.Error as err:
  #     print("Failed inserting on database: {}".format(err))
  #     teste_exception(err)
  #   finally:
  #     cursor.close()

  cnx.close()
  print("enviando: "+str(return_list))
  return jsonify(return_list)



@app.route('/api/v1/resources/check_new_agents', methods=['GET'])
def check_new_agentss():

  query_parameters = request.args
  modelo = query_parameters.get('model')

  return_list = []
  to_update = []

  cnx = mysql.connector.connect(user='MYSQL_USER', password='MYSQL_PASSWORD',
                                 host='db',
                                 database='MYSQL_DATABASE')
  cursor = cnx.cursor()
  query = ("SELECT id, agent_id, data, path, proccessed FROM "+modelo+" "
            "WHERE proccessed = %s AND %s")

  cursor.execute(query, (0, "1=1"))

  for (id, agent_id, data, path, proccessed) in cursor:
    return_list.append([agent_id, data, path])
    to_update.append(id)

  cursor.close()

  for tupla in to_update:
    try:
      cursor = cnx.cursor()
      # temporary_query = "UPDATE "+modelo+" SET asl_file_path = 123456 WHERE id = "+str(tupla)+"; "
      # temporary_query = "UPDATE "+modelo+" SET proccessed = 0 WHERE id = "+str(tupla)+"; "
      temporary_query = "UPDATE "+modelo+" SET proccessed = 1 WHERE id = "+str(tupla)+"; "
      query = (temporary_query)
      cursor.execute(temporary_query)
      cnx.commit()
    # except mysql.connector.ProgrammingError as err:
    except mysql.connector.Error as err:
      print("Failed inserting on database: {}".format(err))
      teste_exception(err)
    finally:
      cursor.close()

  cnx.close()
  print("enviando: "+str(return_list))
  return jsonify(return_list)


@app.route('/api/v1/resources/solicita_cartorio', methods=['POST'])
def solicita_cartorio():
  #model, min, max
  json_data = request.get_json()
  print(json_data)
  model = json_data['model']
  model_number = model[1:]
  min = json_data['min']
  max = json_data['max']

  cnx = mysql.connector.connect(user='MYSQL_USER', password='MYSQL_PASSWORD',
                                 host='db',
                                 database='MYSQL_DATABASE')
  retorno = False
  for agent_id in range(min, max):
    cursor = cnx.cursor()
    # add_agent = ("INSERT INTO router "
    #              "(agent_id, data) "
    #              "VALUES (%s, %s)")
    # data = [random.randint(5, 25) random.randint(1, 4) random.randint(1, 6)]
    # data = []
    # data.append(random.randint(5, 25))
    # data.append(random.randint(1, 4))
    # data.append(random.randint(1, 6))

    data = "[" + str(random.randint(5, 25)) + " " + str(random.randint(1, 4)) + " " + str(random.randint(1, 6)) + "]"

    # print(data)

    # data_agent = (agent_id, data)
    sql1 = "INSERT INTO "+model+ " (agent_id, data, path) "+"VALUES ('"+str(agent_id)+"', '"+data+"', "+"''"+");"
    # print("sql1: "+sql1)

    # # Insert new employee
    # cursor.execute(add_employee, data_employee)
    try:
        # cursor.execute(add_agent, data_agent)
        cursor.execute(sql1)
        # Make sure data is committed to the database
        cnx.commit()
        retorno = True
    # except mysql.connector.ProgrammingError as err:
    except mysql.connector.Error as err:
        print("Failed inserting on database: {}".format(err))
        teste_exception(err)
        retorno = False
    finally:
        cursor.close()

    if (retorno == False):
        break

  cnx.close()
  #return retorno
  if(retorno):
    return 'true'
  else:
    return 'false'


@app.route('/api/v1/resources/model_to_router', methods=['POST'])
def teste_envio():
  # agent_id, data, path
  json_data = request.get_json()
  print(json_data)
  # agent_id = json_data.agent_id
  # data = json_data.data
  # path = json_data.path
  agent_id = json_data['agent_id']
  data = json_data['data']
  path = json_data['path']
  # query_parameters = request.args
  # modelo = query_parameters.get('model')

  cnx = mysql.connector.connect(user='MYSQL_USER', password='MYSQL_PASSWORD',
                                 host='db',
                                 database='MYSQL_DATABASE')
  cursor = cnx.cursor()

  add_agent = ("INSERT INTO router "
                 "(agent_id, data, path) "
                 "VALUES (%s, %s, %s)")

  data_agent = (agent_id, data, path)
  try:
    cursor.execute(add_agent, data_agent)
    # Make sure data is committed to the database
    cnx.commit()
    retorno = True
  except mysql.connector.Error as err:
    print("Failed inserting on database: {}".format(err))
    teste_exception(err)
    retorno = False

  cursor.close()
  cnx.close()
  # return retorno
  if(retorno):
    return 'true'
  else:
    return 'false'



# @app.route('/api/v1/resources/books2', methods=['GET'])
# def solicita_cartorio():

#   query_parameters = request.args
#   modelo = query_parameters.get('model')

#   return_list = []
#   to_update = []

#   cnx = mysql.connector.connect(user='MYSQL_USER', password='MYSQL_PASSWORD',
#                                  host='db',
#                                  database='MYSQL_DATABASE')
#   cursor = cnx.cursor()
#   query = ("SELECT id, agent_id, data, path, proccessed FROM "+modelo+" "
#             "WHERE proccessed = %s AND %s")

#   # print("modelo:"+modelo)
#   cursor.execute(query, (0, "1=1"))

#   for (id, agent_id, data, path, proccessed) in cursor:
#     return_list.append([agent_id, data, path])
#     to_update.append(id)

#   cursor.close()
#   cnx.close()
#   #return retorno
#   return jsonify(return_list)






# @app.route('/api/v1/resources/books', methods=['GET'])
# def api_filter():
#     query_parameters = request.args

#     id = query_parameters.get('id')
#     published = query_parameters.get('published')
#     author = query_parameters.get('author')

#     query = "SELECT * FROM books WHERE"
#     to_filter = []

#     if id:
#         query += ' id=? AND'
#         to_filter.append(id)
#     if published:
#         query += ' published=? AND'
#         to_filter.append(published)
#     if author:
#         query += ' author=? AND'
#         to_filter.append(author)
#     if not (id or published or author):
#         return page_not_found(404)

#     query = query[:-4] + ';'

#     conn = sqlite3.connect('books.db')
#     conn.row_factory = dict_factory
#     cur = conn.cursor()

#     results = cur.execute(query, to_filter).fetchall()

#     return jsonify(results)

# app.run()
app.run(host="0.0.0.0", port=5000)