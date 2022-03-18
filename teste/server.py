import socketserver

class MyTCPHandler(socketserver.BaseRequestHandler):
    """
    The request handler class for our server.

    It is instantiated once per connection to the server, and must
    override the handle() method to implement communication to the
    client.
    """

    def handle(self):
        # self.request is the TCP socket connected to the client
        self.data = self.request.recv(1024).strip()
        print("{} wrote:".format(self.client_address[0]))
        print(self.data)
        # just send back the same data, but upper-cased
        self.request.sendall(self.data.upper())

if __name__ == "__main__":
    HOST, PORT = "localhost", 9999

    # Create the server, binding to localhost on port 9999
    with socketserver.TCPServer((HOST, PORT), MyTCPHandler) as server:
        # Activate the server; this will keep running until you
        # interrupt the program with Ctrl-C
        server.serve_forever()

# # import socket programming library
# import socket
 
# # import thread module
# from _thread import *
# import threading
 
# print_lock = threading.Lock()
 
# # thread function
# def threaded(c):
#     while True:
 
#         # data received from client
#         data = c.recv(1024)
#         if not data:
#             print('Bye')
             
#             # lock released on exit
#             print_lock.release()
#             break
 
#         # reverse the given string from client
#         data = data[::-1]
 
#         # send back reversed string to client
#         c.send(data)
 
#     # connection closed
#     c.close()
 
 
# def Main():
#     host = ""
 
#     # reverse a port on your computer
#     # in our case it is 12345 but it
#     # can be anything
#     port = 12345
#     s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#     s.bind((host, port))
#     print("socket binded to port", port)
 
#     # put the socket into listening mode
#     s.listen(5)
#     print("socket is listening")
 
#     # a forever loop until client wants to exit
#     while True:
 
#         # establish connection with client
#         c, addr = s.accept()
 
#         # lock acquired by client
#         print_lock.acquire()
#         print('Connected to :', addr[0], ':', addr[1])
 
#         # Start a new thread and return its identifier
#         start_new_thread(threaded, (c,))
#     s.close()
 
 
# if __name__ == '__main__':
#     Main()
# # import socket
# # import threading
# # import sys

# # # --- functions ---

# # def recv_msg():
# #     while True:
# #         recv_msg = conn.recv(1024)
# #         if not recv_msg:
# #             sys.exit(0)
# #         recv_msg = recv_msg.decode()
# #         print(recv_msg)

# # def send_msg():
# #     while True:
# #         send_msg = input(str("Enter message: "))
# #         send_msg = send_msg.encode()
# #         conn.send(send_msg)
# #         print("message sent")

# # # --- main ---

# # host = socket.gethostname()
# # port = 8080

# # s = socket.socket()
# # s.bind((host, port))
# # s.listen(1)

# # print("Waiting for connections")
# # conn, addr = s.accept()

# # print("Client has connected")
# # conn.send("Welcome to the server".encode())

# # # thread has to start before other loop
# # t = threading.Thread(target=recv_msg)
# # t.start()

# # send_msg()