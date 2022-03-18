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

#from filelock import Timeout, FileLock

#queue_size = int(os.environ['queue_size'])
#initial_topic = os.environ['initial_topic']
#modelo = os.environ['modelo']
#queue = []    



#print(output_agents)
#print(json_model_input_file)
#print(json_dead_agents_file)
#print(general_dead_agents_file)

# json_dead_agents_file = ["send_agent.txt", "send_agent2.txt"]
# general_dead_agents_file = ["general_send_agent.txt"][0]
# json_model_input_file = ["receive_agent.txt", "receive_agent2.txt"]
# output_agents = ["output.txt"][0]
# router_type = "sequential_separated"




# json_dead_agents_file = ["send_agent.txt", "send_agent2.txt"]
# json_model_input_file = ["receive_agent.txt", "receive_agent2.txt"]
# output_agents = "output.txt"
# general_dead_agents_file = "general_send_agent.txt"
# router_type = "based_on_parameters"


json_dead_agents_file = json.loads(os.environ['dead_agents_file'])
json_model_input_file = json.loads(os.environ['model_input_file'])
output_agents = json.loads(os.environ['output_agents'])[0]
general_dead_agents_file = json.loads(os.environ['general_dead_agents_file'])[0]
router_type = os.environ['router_type']


def myFunc(e):
    li = list(e.split(" "))
    total = 0
    #for item in li[1:]:
    for item in li[1:-1]:
        print("item:")
        print (item)
        item2 = re.findall("[-\d]+", item)
        # print ("item2")
        # print (item2)
        total = total + int(item2[0])
    # print ("total:")
    # print (total)
    # print ("----------")
    print ("total: ", total)
    return total


def main(args=None):

    print ("Router type:")
    print (router_type)

    # dead_agents_file = "send_agent.txt"
    # dead_agents_file2 = "send_agent2.txt"
    # general_dead_agents_file = "general_send_agent.txt"
    # model1_input_file = "receive_agent.txt"
    # model2_input_file = "receive_agent2.txt"
    # output_agents = "output.txt"

    #dead_agents_file = "/teste/send_agent.txt"
    #dead_agents_file2 = "/teste/send_agent2.txt"
    #general_dead_agents_file = "/teste/general_send_agent.txt"
    #model1_input_file = "/teste/receive_agent.txt"
    #model2_input_file = "/teste/receive_agent2.txt"
    #output_agents = "/teste/output.txt"

    dead_agents_list = []
    model_list = []

    for x in range(len(json_model_input_file)):
         model_list.append(["model"+str(x), json_model_input_file[x], json_dead_agents_file[x]])

    #model_list.append(["model1", model1_input_file, dead_agents_file])
    #model_list.append(["model2", model2_input_file, dead_agents_file2])


    time.sleep(5)
    c = 0
    while c < 2000:
        #c = c + 1
        #time.sleep(10)
        if router_type == "random":
            if(os.path.isfile(general_dead_agents_file)):
                if(os.stat(general_dead_agents_file).st_size > 0):
                    print("Choosing a random agent to be revived")
                    #c = c + 1

                    dead_agents_list = []

                    with open(general_dead_agents_file,"r") as f:
                        lines = f.readlines()
                        for line in lines:
                            dead_agents_list.append(line)

                    chosen_agent = random.choice(dead_agents_list)
                    chosen_agent = chosen_agent.strip('\n')
                    print("Agent chosen:")
                    print (chosen_agent)

                    random_model = random.choice(model_list)
                    print("Random model chosen:")
                    print (random_model[0])
                    #print (random_model[1])

                    # lock = FileLock(random_model[1]+".lock")
                    # with lock:
                    #     with open(random_model[1], "a") as output:
                    #         #if(os.stat(random_model[1]).st_size != 0):
                    #             #output.write("\n")
                    #         output.write(chosen_agent+"\n")

                    while True:
                        try:
                            with open(random_model[1], "a") as output:
                                output.write(chosen_agent+"\n")
                                break
                        except:
                            break
                    print('done')



                    # time.sleep(1)
                    # with open(random_model[1], "a") as output:
                    #     if(os.stat(random_model[1]).st_size != 0):
                    #         output.write("\n")
                    #     output.write(chosen_agent)

                    # time.sleep(1)
                    # with open(random_model[1], "a") as output:
                    #     if(os.stat(random_model[1]).st_size != 0):
                    #         output.write("\n")
                    #     output.write(chosen_agent)


                    # ARQUIVO EXTRA
                    # with open(output_agents, "a") as output:
                    #     if(os.stat(output_agents).st_size != 0):
                    #         output.write("\n")
                    #     output.write(chosen_agent)

                    # ARQUIVO EXTRA
                    with open(output_agents, "a") as output:
                        output.write(chosen_agent+"\n")


                    c = c + 1


                    # EXCLUINDO AGENTE DO ARQUIVO
                    with open(general_dead_agents_file, "r") as f:
                        lines = f.readlines()
                    with open(general_dead_agents_file, "w") as f:
                        for line in lines:
                            # if line != chosen_agent:
                            if line.strip('\n') != chosen_agent:
                                f.write(line)

                    # EXCLUINDO AGENTE DO ARQUIVO
                    for model in model_list:
                        if(os.path.isfile(model[2])):
                            print("model[2]:")
                            print(model[2])
                            with open(model[2], "r") as f:
                                lines = f.readlines()
                            with open(model[2], "w") as f:
                                for line in lines:
                                    # if line != chosen_agent:
                                    if line.strip('\n') != chosen_agent:
                                        f.write(line)
                else:
                    print("Nothing on file")
            else:
                print("File not found")
                #break

        elif router_type == "sequential_general":
            if(os.path.isfile(general_dead_agents_file)):
                if(os.stat(general_dead_agents_file).st_size > 0):
                    print("Choosing the first agent (from all) to be revived")
                    #c = c + 1

                    with open(general_dead_agents_file,"r") as f:
                        first_line = f.readline()
                    chosen_agent = first_line.strip('\n')

                    print("Agent chosen:")
                    print (chosen_agent)

                    random_model = random.choice(model_list)
                    print("Random model chosen:")
                    print (random_model[0])

                    # time.sleep(1)

                    # with open(random_model[1], "a") as output:
                    #     if(os.stat(random_model[1]).st_size != 0):
                    #         output.write("\n")
                    #     output.write(chosen_agent)

                    while True:
                        try:
                            with open(random_model[1], "a") as output:
                                output.write(chosen_agent+"\n")
                                break
                        except:
                            break
                    print('done')


                    # ARQUIVO EXTRA
                    with open(output_agents, "a") as output:
                        output.write(chosen_agent+"\n")


                    c = c + 1

                    #tirando o agente do arquivo
                    with open(general_dead_agents_file, 'r') as fin:
                        data = fin.read().splitlines(True)
                    with open(general_dead_agents_file, 'w') as fout:
                        fout.writelines(data[1:])


                    # EXCLUINDO AGENTE DO ARQUIVO
                    for model in model_list:
                        if(os.path.isfile(model[2])):
                            with open(model[2], "r") as f:
                                lines = f.readlines()
                            with open(model[2], "w") as f:
                                for line in lines:
                                    # if line != chosen_agent:
                                    if line.strip('\n') != chosen_agent:
                                        f.write(line)
                else:
                    print("Nothing on file")
            # else:
            #     print("File not found")
        elif router_type == "sequential_separated":
            if(os.path.isfile(general_dead_agents_file)):
                if(os.stat(general_dead_agents_file).st_size > 0):
                    print("Choosing the first agent from each model to be revived")
                    #c = c + 1

                    for model in model_list:
                        print("Model:")
                        print(model[0])
                        with open(model[2],"r") as f:
                            first_line = f.readline()
                        chosen_agent = first_line.strip('\n')

                        print("Agent chosen:")
                        print (chosen_agent)

                        # while True:
                        #     if (not os.path.exists(model[1])):
                        #         with open(model[1], "a") as output:
                        #             if(os.stat(model[1]).st_size != 0):
                        #                 output.write("\n")
                        #             output.write(chosen_agent)
                        #             break

                        while True:
                            try:
                                with open(model[1], "a") as output:
                                    output.write(chosen_agent+"\n")
                                    break
                            except:
                                break
                        print('done')

                        # ARQUIVO EXTRA
                        with open(output_agents, "a") as output:
                            output.write(chosen_agent+"\n")


                        c = c + 1

                        #tirando o agente do arquivo
                        with open(model[2], 'r') as fin:
                            data = fin.read().splitlines(True)
                        with open(model[2], 'w') as fout:
                            fout.writelines(data[1:])

                        # EXCLUINDO AGENTE DO ARQUIVO
                        with open(general_dead_agents_file, "r") as f:
                            lines = f.readlines()
                        with open(general_dead_agents_file, "w") as f:
                            for line in lines:
                                # if line != chosen_agent:
                                if line.strip('\n') != chosen_agent:
                                    f.write(line)
                # else:
                #     print("Nothing on file")

                # print("Model 1:")
                # with open(dead_agents_file,"r") as f:
                #     first_line = f.readline()
                # chosen_agent = first_line.strip('\n')

                # print("Agent chosen:")
                # print (chosen_agent)

                # while True:
                #     if (not os.path.exists(model1_input_file)):
                #         with open(model1_input_file, "a") as output:
                #             if(os.stat(model1_input_file).st_size != 0):
                #                 output.write("\n")
                #             output.write(chosen_agent)
                #             break

                # #tirando o agente do arquivo
                # with open(dead_agents_file, 'r') as fin:
                #     data = fin.read().splitlines(True)
                # with open(dead_agents_file, 'w') as fout:
                #     fout.writelines(data[1:])

                # # EXCLUINDO AGENTE DO ARQUIVO
                # with open(general_dead_agents_file, "r") as f:
                #     lines = f.readlines()
                # with open(general_dead_agents_file, "w") as f:
                #     for line in lines:
                #         # if line != chosen_agent:
                #         if line.strip('\n') != chosen_agent:
                #             f.write(line)

                # #################################################

                # print("Model 2:")
                # with open(dead_agents_file2,"r") as f:
                #     first_line = f.readline()
                # chosen_agent = first_line.strip('\n')

                # print("Agent chosen:")
                # print (chosen_agent)

                # # if (not os.path.exists(model2_input_file)):
                # #     with open(model2_input_file, "a") as output:
                # #         if(os.stat(model2_input_file).st_size != 0):
                # #             output.write("\n")
                # #         output.write(chosen_agent)

                # while True:
                #     if (not os.path.exists(model2_input_file)):
                #         with open(model2_input_file, "a") as output:
                #             if(os.stat(model2_input_file).st_size != 0):
                #                 output.write("\n")
                #             output.write(chosen_agent)
                #             break

                # #tirando o agente do arquivo
                # with open(dead_agents_file2, 'r') as fin:
                #     data = fin.read().splitlines(True)
                # with open(dead_agents_file2, 'w') as fout:
                #     fout.writelines(data[1:])

                # # EXCLUINDO AGENTE DO ARQUIVO
                # with open(general_dead_agents_file, "r") as f:
                #     lines = f.readlines()
                # with open(general_dead_agents_file, "w") as f:
                #     for line in lines:
                #         # if line != chosen_agent:
                #         if line.strip('\n') != chosen_agent.strip('\n'):
                #             f.write(line)





                # print("Choosing the first agent from each model to be revived")
                # c = c + 1

                # print("Model 1:")
                # with open(dead_agents_file,"r") as f:
                #     first_line = f.readline()
                # chosen_agent = first_line.strip('\n')

                # print("Agent chosen:")
                # print (chosen_agent)

                # while True:
                #     if (not os.path.exists(model1_input_file)):
                #         with open(model1_input_file, "a") as output:
                #             if(os.stat(model1_input_file).st_size != 0):
                #                 output.write("\n")
                #             output.write(chosen_agent)
                #             break

                # #tirando o agente do arquivo
                # with open(dead_agents_file, 'r') as fin:
                #     data = fin.read().splitlines(True)
                # with open(dead_agents_file, 'w') as fout:
                #     fout.writelines(data[1:])

                # # EXCLUINDO AGENTE DO ARQUIVO
                # with open(general_dead_agents_file, "r") as f:
                #     lines = f.readlines()
                # with open(general_dead_agents_file, "w") as f:
                #     for line in lines:
                #         # if line != chosen_agent:
                #         if line.strip('\n') != chosen_agent:
                #             f.write(line)

                # #################################################

                # print("Model 2:")
                # with open(dead_agents_file2,"r") as f:
                #     first_line = f.readline()
                # chosen_agent = first_line.strip('\n')

                # print("Agent chosen:")
                # print (chosen_agent)

                # # if (not os.path.exists(model2_input_file)):
                # #     with open(model2_input_file, "a") as output:
                # #         if(os.stat(model2_input_file).st_size != 0):
                # #             output.write("\n")
                # #         output.write(chosen_agent)

                # while True:
                #     if (not os.path.exists(model2_input_file)):
                #         with open(model2_input_file, "a") as output:
                #             if(os.stat(model2_input_file).st_size != 0):
                #                 output.write("\n")
                #             output.write(chosen_agent)
                #             break

                # #tirando o agente do arquivo
                # with open(dead_agents_file2, 'r') as fin:
                #     data = fin.read().splitlines(True)
                # with open(dead_agents_file2, 'w') as fout:
                #     fout.writelines(data[1:])

                # # EXCLUINDO AGENTE DO ARQUIVO
                # with open(general_dead_agents_file, "r") as f:
                #     lines = f.readlines()
                # with open(general_dead_agents_file, "w") as f:
                #     for line in lines:
                #         # if line != chosen_agent:
                #         if line.strip('\n') != chosen_agent.strip('\n'):
                #             f.write(line)
            # else:
            #     print("File not found")

        elif router_type == "based_on_parameters":
            if(os.path.isfile(general_dead_agents_file)):
                if(os.stat(general_dead_agents_file).st_size > 0):
                    print("Choosing an agent, based on parameters (sum of parameters), to be revived")
                    #c = c + 1

                    dead_agents_list = []

                    with open(general_dead_agents_file,"r") as f:
                        #print ("---- Lendo ---")
                        lines = f.readlines()
                        for line in lines:
                            #print(line)
                            dead_agents_list.append(line)
                        #print ("---- Fim Lendo ---")

                    #print(dead_agents_list)

                    dead_agents_list.sort(reverse=True, key=myFunc)

                    #print(dead_agents_list)

                    chosen_agent = dead_agents_list[0]

                    chosen_agent = chosen_agent.strip('\n')
                    print("Agent chosen:")
                    print (chosen_agent)

                    random_model = random.choice(model_list)
                    print("Random model chosen:")
                    print (random_model[0])

                    # time.sleep(1)

                    # with open(random_model[1], "a") as output:
                    #     if(os.stat(random_model[1]).st_size != 0):
                    #         output.write("\n")
                    #     output.write(chosen_agent)

                    while True:
                        try:
                            with open(random_model[1], "a") as output:
                                output.write(chosen_agent+"\n")
                                break
                        except:
                            break
                    print('done')

                    c = c + 1

                    # ARQUIVO EXTRA
                    with open(output_agents, "a") as output:
                        output.write(chosen_agent+"\n")

                    # # EXCLUINDO AGENTE DO ARQUIVO
                    # with open(general_dead_agents_file, "r") as f:
                    #     lines = f.readlines()
                    # with open(general_dead_agents_file, "w") as f:
                    #     for line in lines:
                    #         # if line != chosen_agent:
                    #         if line.strip('\n') != chosen_agent.strip('\n'):
                    #             f.write(line)

                    # EXCLUINDO AGENTE DO ARQUIVO
                    with open(general_dead_agents_file, "r") as f:
                        lines = f.readlines()
                    with open(general_dead_agents_file, "w") as f:
                        for line in lines:
                            # if line != chosen_agent:
                            if line.strip('\n') != chosen_agent:
                                f.write(line)

                    # EXCLUINDO AGENTE DO ARQUIVO
                    for model in model_list:
                        if(os.path.isfile(model[2])):
                            with open(model[2], "r") as f:
                                lines = f.readlines()
                            with open(model[2], "w") as f:
                                for line in lines:
                                    # if line != chosen_agent:
                                    if line.strip('\n') != chosen_agent:
                                        f.write(line)
                else:
                    print("Nothing on file")
            # else:
            #     print("File not found")

    print("acabou")


if __name__ == '__main__':
    main()



### AQUI FUNCIONA O SEQUENCIAL E TAL, TESTANDO ACIMA PRA MANDAR AS COISAS PRAS OUTRAS PARTES
# import socket
# import sys
# import json

# #import rclpy
# #from rclpy.node import Node

# #from std_msgs.msg import String

# #from types import SimpleNamespace

# import os

# import random
# import time

# from collections import OrderedDict

# import re

# #queue_size = int(os.environ['queue_size'])
# #initial_topic = os.environ['initial_topic']
# #modelo = os.environ['modelo']
# #queue = []    

# #router_type = os.environ['router_type']
# router_type = "sequential_separated"


# def main(args=None):
#     print ("Router type:")
#     print (router_type)

#     dead_agents_file = "send_agent.txt"
#     dead_agents_file2 = "send_agent2.txt"
#     general_dead_agents_file = "general_send_agent.txt"
#     model1_input_file = "receive_agent.txt"
#     model2_input_file = "receive_agent2.txt"

#     dead_agents_list = []
#     model_list = []

#     model_list.append(model1_input_file)
#     model_list.append(model2_input_file)

#     c = 0
#     while c < 1:
#         c = c + 1
#         #time.sleep(1)
#         if router_type == "random":
#             print("Choosing a random agent to be revived")

#             if(os.path.isfile(general_dead_agents_file)):
#                 with open(general_dead_agents_file,"r") as f:
#                     #print ("---- Lendo ---")
#                     lines = f.readlines()
#                     for line in lines:
#                         #print(line)
#                         dead_agents_list.append(line)
#                     #print ("---- Fim Lendo ---")

#                 chosen_agent = random.choice(dead_agents_list)
#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 random_model = random.choice(model_list)
#                 print("Random model chosen:")
#                 print (random_model)
#                 with open(random_model, "w") as output:                
#                     output.write(chosen_agent)

#                 # EXCLUINDO AGENTE DO ARQUIVO

#                 with open(general_dead_agents_file, "r") as f:
#                     lines = f.readlines()
#                 with open(general_dead_agents_file, "w") as f:
#                     for line in lines:
#                         if line != chosen_agent:
#                             f.write(line)

#         elif router_type == "sequential_general":
#             print("Choosing the first agent (from all) to be revived")

#             if(os.path.isfile(general_dead_agents_file)):
#                 with open(general_dead_agents_file,"r") as f:
#                     first_line = f.readline()
#                 chosen_agent = first_line.strip('\n')

#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 random_model = random.choice(model_list)
#                 print("Random model chosen:")
#                 print (random_model)
#                 with open(random_model, "w") as output:                
#                     output.write(chosen_agent)

#                 #tirando o agente do arquivo
#                 with open(general_dead_agents_file, 'r') as fin:
#                     data = fin.read().splitlines(True)
#                 with open(general_dead_agents_file, 'w') as fout:
#                     fout.writelines(data[1:])
#         elif router_type == "sequential_separated":
#             print("Choosing the first agent from each model to be revived")

#             if(os.path.isfile(dead_agents_file) and os.path.isfile(dead_agents_file2)):
#                 print("Model 1:")
#                 with open(dead_agents_file,"r") as f:
#                     first_line = f.readline()
#                 chosen_agent = first_line.strip('\n')

#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 with open(model1_input_file, "w") as output:                
#                     output.write(chosen_agent)

#                 #tirando o agente do arquivo
#                 with open(dead_agents_file, 'r') as fin:
#                     data = fin.read().splitlines(True)
#                 with open(dead_agents_file, 'w') as fout:
#                     fout.writelines(data[1:])

#                 # EXCLUINDO AGENTE DO ARQUIVO
#                 with open(general_dead_agents_file, "r") as f:
#                     lines = f.readlines()
#                 with open(general_dead_agents_file, "w") as f:
#                     for line in lines:
#                         # if line != chosen_agent:
#                         if line.strip('\n') != chosen_agent:
#                             f.write(line)

#                 #################################################

#                 print("Model 2:")
#                 with open(dead_agents_file2,"r") as f:
#                     first_line = f.readline()
#                 chosen_agent = first_line.strip('\n')

#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 with open(model2_input_file, "w") as output:                
#                     output.write(chosen_agent)

#                 #tirando o agente do arquivo
#                 with open(dead_agents_file2, 'r') as fin:
#                     data = fin.read().splitlines(True)
#                 with open(dead_agents_file2, 'w') as fout:
#                     fout.writelines(data[1:])

#                 # EXCLUINDO AGENTE DO ARQUIVO
#                 with open(general_dead_agents_file, "r") as f:
#                     lines = f.readlines()
#                 with open(general_dead_agents_file, "w") as f:
#                     for line in lines:
#                         # if line != chosen_agent:
#                         if line.strip('\n') != chosen_agent.strip('\n'):
#                             f.write(line)

#                 print("---")

#         elif router_type == "based_on_parameters":
#             print("Choosing an agent, based on parameters (sum of parameters), to be revived")

#             if(os.path.isfile(general_dead_agents_file)):
#                 with open(general_dead_agents_file,"r") as f:
#                     #print ("---- Lendo ---")
#                     lines = f.readlines()
#                     for line in lines:
#                         #print(line)
#                         dead_agents_list.append(line)
#                     #print ("---- Fim Lendo ---")

#                 print(dead_agents_list)

#                 def myFunc(e):
#                     li = list(e.split(" "))
#                     total = 0
#                     for item in li[1:]:
#                         # print("item:")
#                         # print (item)
#                         item2 = re.findall("[-\d]+", item)
#                         # print ("item2")
#                         # print (item2)
#                         total = total + int(item2[0])
#                     # print ("total:")
#                     # print (total)
#                     # print ("----------")
#                     return total

#                 dead_agents_list.sort(reverse=True, key=myFunc)

#                 print(dead_agents_list)

#                 chosen_agent = dead_agents_list[0]

#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 random_model = random.choice(model_list)
#                 print("Random model chosen:")
#                 print (random_model)
#                 with open(random_model, "w") as output:                
#                     output.write(chosen_agent)

#                 # EXCLUINDO AGENTE DO ARQUIVO
#                 with open(general_dead_agents_file, "r") as f:
#                     lines = f.readlines()
#                 with open(general_dead_agents_file, "w") as f:
#                     for line in lines:
#                         if line != chosen_agent:
#                             f.write(line)


# if __name__ == '__main__':
#     main()


###### BACKUP QUANDO SO FALTAVA 1 DETALHE PRA FUNCIONAR, DE NAO DELETAR A LINHA CERTINHO
# import socket
# import sys
# import json

# #import rclpy
# #from rclpy.node import Node

# #from std_msgs.msg import String

# #from types import SimpleNamespace

# import os

# import random
# import time

# from collections import OrderedDict

# import re

# #queue_size = int(os.environ['queue_size'])
# #initial_topic = os.environ['initial_topic']
# #modelo = os.environ['modelo']
# #queue = []    

# #router_type = os.environ['router_type']
# router_type = "sequential_separated"


# def main(args=None):
#     print ("Router type:")
#     print (router_type)

#     dead_agents_file = "send_agent.txt"
#     dead_agents_file2 = "send_agent2.txt"
#     general_dead_agents_file = "general_send_agent.txt"
#     model1_input_file = "receive_agent.txt"
#     model2_input_file = "receive_agent2.txt"

#     dead_agents_list = []
#     model_list = []

#     model_list.append(model1_input_file)
#     model_list.append(model2_input_file)

#     c = 0
#     while c < 1:
#         c = c + 1
#         #time.sleep(1)
#         if router_type == "random":
#             print("Choosing a random agent to be revived")

#             if(os.path.isfile(general_dead_agents_file)):
#                 with open(general_dead_agents_file,"r") as f:
#                     #print ("---- Lendo ---")
#                     lines = f.readlines()
#                     for line in lines:
#                         #print(line)
#                         dead_agents_list.append(line)
#                     #print ("---- Fim Lendo ---")

#                 chosen_agent = random.choice(dead_agents_list)
#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 random_model = random.choice(model_list)
#                 print("Random model chosen:")
#                 print (random_model)
#                 with open(random_model, "w") as output:                
#                     output.write(chosen_agent)

#                 # EXCLUINDO AGENTE DO ARQUIVO

#                 with open(general_dead_agents_file, "r") as f:
#                     lines = f.readlines()
#                 with open(general_dead_agents_file, "w") as f:
#                     for line in lines:
#                         if line != chosen_agent:
#                             f.write(line)

#         elif router_type == "sequential_general":
#             print("Choosing the first agent (from all) to be revived")

#             if(os.path.isfile(general_dead_agents_file)):
#                 with open(general_dead_agents_file,"r") as f:
#                     first_line = f.readline()
#                 chosen_agent = first_line

#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 random_model = random.choice(model_list)
#                 print("Random model chosen:")
#                 print (random_model)
#                 with open(random_model, "w") as output:                
#                     output.write(chosen_agent)

#                 #tirando o agente do arquivo
#                 with open(general_dead_agents_file, 'r') as fin:
#                     data = fin.read().splitlines(True)
#                 with open(general_dead_agents_file, 'w') as fout:
#                     fout.writelines(data[1:])
#         elif router_type == "sequential_separated":
#             print("Choosing the first agent from each model to be revived")

#             if(os.path.isfile(dead_agents_file) and os.path.isfile(dead_agents_file2)):
#                 print("Model 1:")
#                 with open(dead_agents_file,"r") as f:
#                     first_line = f.readline()
#                 chosen_agent = first_line

#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 with open(model1_input_file, "w") as output:                
#                     output.write(chosen_agent)

#                 #tirando o agente do arquivo
#                 with open(dead_agents_file, 'r') as fin:
#                     data = fin.read().splitlines(True)
#                 with open(dead_agents_file, 'w') as fout:
#                     fout.writelines(data[1:])

#                 # EXCLUINDO AGENTE DO ARQUIVO
#                 with open(general_dead_agents_file, "r") as f:
#                     lines = f.readlines()
#                 with open(general_dead_agents_file, "w") as f:
#                     for line in lines:
#                         if line != chosen_agent:
#                             f.write(line)

#                 #################################################

#                 print("Model 2:")
#                 with open(dead_agents_file2,"r") as f:
#                     first_line = f.readline()
#                 chosen_agent = first_line

#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 with open(model2_input_file, "w") as output:                
#                     output.write(chosen_agent)

#                 #tirando o agente do arquivo
#                 with open(dead_agents_file2, 'r') as fin:
#                     data = fin.read().splitlines(True)
#                 with open(dead_agents_file2, 'w') as fout:
#                     fout.writelines(data[1:])

#                 # EXCLUINDO AGENTE DO ARQUIVO
#                 with open(general_dead_agents_file, "r") as f:
#                     lines = f.readlines()
#                 with open(general_dead_agents_file, "w") as f:
#                     for line in lines:
#                         if line != chosen_agent:
#                             f.write(line)

#         elif router_type == "based_on_parameters":
#             print("Choosing an agent, based on parameters (sum of parameters), to be revived")

#             if(os.path.isfile(general_dead_agents_file)):
#                 with open(general_dead_agents_file,"r") as f:
#                     #print ("---- Lendo ---")
#                     lines = f.readlines()
#                     for line in lines:
#                         #print(line)
#                         dead_agents_list.append(line)
#                     #print ("---- Fim Lendo ---")

#                 print(dead_agents_list)

#                 def myFunc(e):
#                     li = list(e.split(" "))
#                     total = 0
#                     for item in li[1:]:
#                         # print("item:")
#                         # print (item)
#                         item2 = re.findall("[-\d]+", item)
#                         # print ("item2")
#                         # print (item2)
#                         total = total + int(item2[0])
#                     # print ("total:")
#                     # print (total)
#                     # print ("----------")
#                     return total

#                 dead_agents_list.sort(reverse=True, key=myFunc)

#                 print(dead_agents_list)

#                 chosen_agent = dead_agents_list[0]

#                 print("Agent chosen:")
#                 print (chosen_agent)

#                 random_model = random.choice(model_list)
#                 print("Random model chosen:")
#                 print (random_model)
#                 with open(random_model, "w") as output:                
#                     output.write(chosen_agent)

#                 # EXCLUINDO AGENTE DO ARQUIVO
#                 with open(general_dead_agents_file, "r") as f:
#                     lines = f.readlines()
#                 with open(general_dead_agents_file, "w") as f:
#                     for line in lines:
#                         if line != chosen_agent:
#                             f.write(line)


# if __name__ == '__main__':
#     main()