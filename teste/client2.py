import socket

def teste_retorno(string_recebida):
	print("string recebida: "+string_recebida)
	return (string_recebida+" algo")

def send_function(string_to_send):
    s = socket.socket()
    s.connect(('127.0.0.1',12345))
    str = string_to_send
    s.send(str.encode());
    print ("N: "+s.recv(1024).decode())
    s.close()
    # while True:
	   #  str = string_to_send
	   #  s.send(str.encode());
	   #  if(str == "Bye" or str == "bye"):
	   #      break
	   #  print ("N: "+s.recv(1024).decode())
    # s.close()

# import socket

# s = socket.socket()
# s.connect(('127.0.0.1',12345))
# while True:
#     str = input("S: ")
#     s.send(str.encode());
#     if(str == "Bye" or str == "bye"):
#         break
#     print ("N: "+s.recv(1024).decode())
# s.close()