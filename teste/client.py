import socket
import sys

def send_function(string_to_send):
    HOST, PORT = "localhost", 9999
    data = " ".join(string_to_send)
    # data = " ".join(sys.argv[1:])

    # Create a socket (SOCK_STREAM means a TCP socket)
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
        # Connect to server and send data
        sock.connect((HOST, PORT))
        sock.sendall(bytes(data + "\n", "utf-8"))

        # Receive data from the server and shut down
        received = str(sock.recv(1024), "utf-8")

    print("Sent:     {}".format(data))
    print("Received: {}".format(received))

# import socket
# import sys

# HOST, PORT = "localhost", 9999
# data = " ".join(sys.argv[1:])

# # Create a socket (SOCK_STREAM means a TCP socket)
# with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
#     # Connect to server and send data
#     sock.connect((HOST, PORT))
#     sock.sendall(bytes(data + "\n", "utf-8"))

#     input("Press Enter to continue...")

#     # Receive data from the server and shut down
#     received = str(sock.recv(1024), "utf-8")

# print("Sent:     {}".format(data))
# print("Received: {}".format(received))

# # Import socket module
# import socket
 
 
# def Main():
#     # local host IP '127.0.0.1'
#     host = '127.0.0.1'
 
#     # Define the port on which you want to connect
#     port = 12345
 
#     s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
 
#     # connect to server on local computer
#     s.connect((host,port))
 
#     # message you send to server
#     message = "shaurya says geeksforgeeks"
#     while True:
 
#         # message sent to server
#         s.send(message.encode('ascii'))
 
#         # message received from server
#         data = s.recv(1024)
 
#         # print the received message
#         # here it would be a reverse of sent message
#         print('Received from the server :',str(data.decode('ascii')))
 
#         # ask the client whether he wants to continue
#         ans = input('\nDo you want to continue(y/n) :')
#         if ans == 'y':
#             continue
#         else:
#             break
#     # close the connection
#     s.close()
 
# if __name__ == '__main__':
#     Main()

# # import socket
# # import threading
# # import sys

# # # --- functions ---

# # def recv_msg():
# #     while True:
# #         recv_msg = s.recv(1024)
# #         if not recv_msg:
# #             sys.exit(0)
# #         recv_msg = recv_msg.decode()
# #         print(recv_msg)

# # def send_msg():
# #     while True:
# #         send_msg = input(str("Enter message: "))
# #         send_msg = send_msg.encode()
# #         s.send(send_msg)
# #         print("Message sent")

# # # --- main ---

# # host = socket.gethostname()
# # port = 8080

# # s = socket.socket()
# # s.connect((host, port))

# # print("Connected to the server")

# # message = s.recv(1024)
# # message = message.decode()
# # print(message)

# # # thread has to start before other loop
# # t = threading.Thread(target=recv_msg)
# # t.start()

# # send_msg()