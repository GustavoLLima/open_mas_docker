#https://stackoverflow.com/questions/23828264/how-to-make-a-simple-multithreaded-socket-server-in-python-that-remembers-client
import socket
import threading

class ThreadedServer(object):
    def __init__(self, host, port):
        self.host = host
        self.port = port
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.sock.bind((self.host, self.port))
        self.dead_agents_list = []

    def listen(self):
        self.sock.listen(5)
        while True:
            client, address = self.sock.accept()
            client.settimeout(60)
            threading.Thread(target = self.listenToClient,args = (client,address)).start()

    def listenToClient(self, client, address):
        size = 1024
        while True:
            try:
                data = client.recv(size)
                if data:
                    # Set the response to echo back the recieved data 
                    print("Data receivedddd:"+data.decode())
                    self.dead_agents_list.append("data.decode()")
                    print("Dead agents:"+dead_agents_listx)
                    response = data
                    client.send(response)
                else:
                    raise error('Client disconnected')
            except:
                client.close()
                return False

if __name__ == "__main__":
    while True:
        port_num = "12345"
        try:
            port_num = int(port_num)
            break
        except ValueError:
            pass

    ThreadedServer('',port_num).listen()


# #https://stackoverflow.com/questions/23828264/how-to-make-a-simple-multithreaded-socket-server-in-python-that-remembers-client
# import socket
# import threading

# class ThreadedServer(object):
#     def __init__(self, host, port):
#         self.host = host
#         self.port = port
#         self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#         self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
#         self.sock.bind((self.host, self.port))

#     def listen(self):
#         self.sock.listen(5)
#         while True:
#             client, address = self.sock.accept()
#             client.settimeout(60)
#             threading.Thread(target = self.listenToClient,args = (client,address)).start()

#     def listenToClient(self, client, address):
#         size = 1024
#         while True:
#             try:
#                 data = client.recv(size)
#                 if data:
#                     # Set the response to echo back the recieved data 
#                     print("Data received:"+data.decode())
#                     response = data
#                     client.send(response)
#                 else:
#                     raise error('Client disconnected')
#             except:
#                 client.close()
#                 return False

# if __name__ == "__main__":
#     while True:
#         port_num = input("Port? ")
#         try:
#             port_num = int(port_num)
#             break
#         except ValueError:
#             pass

#     ThreadedServer('',port_num).listen()

# #https://stackoverflow.com/questions/23828264/how-to-make-a-simple-multithreaded-socket-server-in-python-that-remembers-client
# import socket
# import threading

# class ThreadedServer(object):
#     def __init__(self, host, port):
#         self.host = host
#         self.port = port
#         self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#         self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
#         self.sock.bind((self.host, self.port))

#     def listen(self):
#         self.sock.listen(5)
#         while True:
#             client, address = self.sock.accept()
#             client.settimeout(60)
#             threading.Thread(target = self.listenToClient,args = (client,address)).start()

#     def listenToClient(self, client, address):
#         size = 1024
#         while True:
#             try:
#                 data = client.recv(size)
#                 if data:
#                     # Set the response to echo back the recieved data 
#                     print("Data received:"+data.decode())
#                     response = data
#                     client.send(response)
#                 else:
#                     raise error('Client disconnected')
#             except:
#                 client.close()
#                 return False

# if __name__ == "__main__":
#     while True:
#         port_num = "12345"
#         try:
#             port_num = int(port_num)
#             break
#         except ValueError:
#             pass

#     ThreadedServer('',port_num).listen()


# # #https://stackoverflow.com/questions/23828264/how-to-make-a-simple-multithreaded-socket-server-in-python-that-remembers-client
# # import socket
# # import threading

# # class ThreadedServer(object):
# #     def __init__(self, host, port):
# #         self.host = host
# #         self.port = port
# #         self.sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# #         self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
# #         self.sock.bind((self.host, self.port))

# #     def listen(self):
# #         self.sock.listen(5)
# #         while True:
# #             client, address = self.sock.accept()
# #             client.settimeout(60)
# #             threading.Thread(target = self.listenToClient,args = (client,address)).start()

# #     def listenToClient(self, client, address):
# #         size = 1024
# #         while True:
# #             try:
# #                 data = client.recv(size)
# #                 if data:
# #                     # Set the response to echo back the recieved data 
# #                     print("Data received:"+data.decode())
# #                     response = data
# #                     client.send(response)
# #                 else:
# #                     raise error('Client disconnected')
# #             except:
# #                 client.close()
# #                 return False

# # if __name__ == "__main__":
# #     while True:
# #         port_num = input("Port? ")
# #         try:
# #             port_num = int(port_num)
# #             break
# #         except ValueError:
# #             pass

# #     ThreadedServer('',port_num).listen()