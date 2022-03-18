#!/usr/bin/python
import time
import os


# if(os.path.isfile("fila.txt")):
# 	if(os.stat("fila.txt").st_size > 0):
# 		print("arquivo > 0")
# 	else:
# 		print("arquivo > 0")

offset = 0
while True:
    infile=open("fila.txt")
    infile.seek(offset)
    for line in infile:
        if(line != "\n"):
        	print (line) # do something
    offset=infile.tell()
    infile.close()
    print("offset depois de tudo: "+str(offset))
    time.sleep(1)