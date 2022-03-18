#!-*- conding: utf8 -*-

import socket
import sys
import json

#import rclpy
#from rclpy.node import Node

#from std_msgs.msg import String

#from types import SimpleNamespace

import os

import random
import time

from collections import OrderedDict

import re

import json



# json_dead_agents_file = ["/teste/important/send_agent.txt", "/teste/important/send_agent2.txt"]
# json_model_input_file = ["/teste/important/receive_agent.txt", "/teste/important/receive_agent2.txt"]
# json_request_input_file = ["/teste/important/request_new_agent.txt", "/teste/important/request_new_agent2.txt"]


#FUNCIONA, ANTES DE MUDAR PRA VARIÁVEL DE AMBIENTE
# json_dead_agents_file = ["/teste/important/send_agent.txt", "/teste/important/send_agent2.txt"]
# json_model_input_file = ["/teste/important/receive_agent.txt", "/teste/important/receive_agent2.txt"]
# json_request_input_file = ["/teste/important/request_new_agent.txt", "/teste/important/request_new_agent2.txt"]

json_dead_agents_file = json.loads(os.environ['dead_agents_file'])
json_model_input_file = json.loads(os.environ['model_input_file'])
json_request_input_file = json.loads(os.environ['request_input_file'])












# json_dead_agents_file = ["send_agent.txt", "send_agent2.txt"]
# json_model_input_file = ["receive_agent.txt", "receive_agent2.txt"]
# json_request_input_file = ["request_new_agent.txt", "request_new_agent2.txt"]


def main(args=None):
    model_list = []

    for x in range(len(json_model_input_file)):
         model_list.append(["model"+str(x), json_model_input_file[x], json_dead_agents_file[x], json_request_input_file[x]])

    current_agent_id = 0

    while True:
        for model in model_list:
            new_agent_file = model[3]
            #print (new_agent_file)
            if os.path.isfile(new_agent_file):
                if(os.stat(new_agent_file).st_size > 0):
                    #c = c + 1

                    dead_agents_list = []

                    with open(new_agent_file,"r") as f:
                        lines = f.readlines()
                        for line in lines:
                            line = line.split()
                            print("Creating", line[1], "new agents from model",line[0])
                            # print(line[0])
                            with open(model[1], "a") as output:
                                for x in range(int(line[1])):
                                    print("Current agent id: ", current_agent_id)
                                    #output.write(itemm)
                                    output.write('["agent"'+ " " + str(current_agent_id) + " " + str(random.randint(5, 25)) + " " + str(random.randint(1, 4)) + " " + str(random.randint(1, 6)) + " " + '""' + "]" +"\n")
                                    #output.write(current_agent_id+"\n")
                                    current_agent_id += 1
                    myfile = new_agent_file

                    ## If file exists, delete it ##
                    if os.path.isfile(myfile):
                        os.remove(myfile)
                    else:    ## Show an error ##
                        print("Error: %s file not found" % myfile)


if __name__ == '__main__':
    main()