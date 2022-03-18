import docker
client = docker.from_env()

print("---BEGIN DEBUG PROCESS---")

#apenas para debug, pois deleta todos containers para montar de novo
for container in client.containers.list(all=True):
    #print (container.name)
    container.stop()
    container.remove()
    print (container.name+" deleted")

#apenas para debug, pois deleta todas as redes não usadas
print (client.networks.prune())

### APENAS PARA DEBUG, DELETA TODOS ARQUIVOS USADOS NA EXECUÇÃO ANTERIOR
import os, shutil
folder = 'C:\\Users\\Gustavo\\Desktop\\v3\\teste\\important'
for filename in os.listdir(folder):
    file_path = os.path.join(folder, filename)
    try:
        if os.path.isfile(file_path) or os.path.islink(file_path):
            os.unlink(file_path)
            print(file_path + " excluído")
        elif os.path.isdir(file_path):
            shutil.rmtree(file_path)
    except Exception as e:
        print('Failed to delete %s. Reason: %s' % (file_path, e))

print("---END DEBUG PROCESS---")


# Configuração da estrutura, nome da rede, caminho do volume
containers_list = []
network = "my_network"
volume_path = "C:\\Users\\Gustavo\\Desktop\\v2\\teste"
client.networks.create(
    network,
    driver="bridge"
)

# Configurações das imagens/containers
# Cartório e Router
dead_agents_file = '["/teste/important/send_agent.txt", "/teste/important/send_agent2.txt"]'
model_input_file = '["/teste/important/receive_agent.txt", "/teste/important/receive_agent2.txt"]'

# Cartório
tag_cartorio = "cartorio"
request_input_file = '["/teste/important/request_new_agent.txt", "/teste/important/request_new_agent2.txt"]'

# PHP
tag_php = "php"

# Modelo1 e Modelo2 - TEM QUE VER AINDA SE DA PRA LIBERAR
config_file = "/teste/important/input_file.txt"
export_file = "/teste/important/output_file.txt"

# Modelo1
tag_modelo1 = "modelo_1"
model_file_sempre_roda = "/teste/5-Open_Sugarscape_2_Constant_Growback.nlogo"
experiment_sempre_roda = "experiment1"
auto_run1 = True

# Modelo2
tag_modelo2 = "modelo_2"
model_file_sempre_roda2 = "/teste/6-Open_Sugarscape_2_Constant_Growback.nlogo"
experiment_sempre_roda2 = "experiment1"
auto_run2 = True

# Router
tag_router = "router"
router_type = "random"
general_dead_agents_file = '["/teste/important/general_send_agent.txt"]'
output_agents = '["/teste/important/output.txt"]'

# JaCaMo
tag_jacamo = "JaCaMo"

# Criação das imagens/containers

print ("Building Cartório Image...")
container_cartorio = client.images.build(path="./", dockerfile="Dockerfile_NETLOGO", tag=tag_cartorio, forcerm=True)
print ("Cartório Image Built!")
print ("Building Cartório Container...")
containers_list.append(client.containers.run(tag_cartorio, network=network, name=tag_cartorio, detach=True, environment=[
	"PYTHONUNBUFFERED=1", "request_input_file="+request_input_file,
	"dead_agents_file="+dead_agents_file, "model_input_file="+model_input_file],
	volumes={volume_path: {'bind': '/teste', 'mode': 'rw'}},
	command="python3 /teste/cartorio.py"))
print("Cartório Container Built!")


print ("Building PHP Image...")
php = client.images.build(path="./", dockerfile="Dockerfile_PHP", tag=tag_php, forcerm=True)
print ("PHP Image Built!")
print ("Building PHP Container...")
containers_list.append(client.containers.run(tag_php, network=network, name=tag_php, detach=True, ports={'80/tcp': 80}, environment=
	["PYTHONUNBUFFERED=1"],
	volumes={volume_path: {'bind': '/var/www/html', 'mode': 'rw'}}))
print("PHP Container Built!")


print ("Building Modelo 1 Image...")
modelo_1 = client.images.build(path="./", dockerfile="Dockerfile_NETLOGO", tag=tag_modelo1, forcerm=True)
print ("Modelo 1 Image Built!")
print ("Building Modelo 1 Container...")
containers_list.append(client.containers.run(tag_modelo1, network=network, name=tag_modelo1, detach=True, environment=[
	"PYTHONUNBUFFERED=1", "my_hostname="+tag_modelo1, "model_file="+model_file_sempre_roda,
	"experiment="+experiment_sempre_roda, "export_file="+export_file, "config_file="+config_file, "auto_run="+str(auto_run1)],
	volumes={volume_path: {'bind': '/teste', 'mode': 'rw'}}, command="python3 /teste/python_execute_netlogo.py"))
print("Modelo 1 Container Built!")


print ("Building Modelo 2 Image...")
modelo_2 = client.images.build(path="./", dockerfile="Dockerfile_NETLOGO", tag=tag_modelo2, forcerm=True)
print ("Modelo 2 Image Built!")
print ("Building Modelo 2 Container...")
containers_list.append(client.containers.run(tag_modelo2, network=network, name=tag_modelo2, detach=True, environment=[
	"PYTHONUNBUFFERED=1", "my_hostname="+tag_modelo2, "model_file="+model_file_sempre_roda2,
	"experiment="+experiment_sempre_roda2, "export_file="+export_file, "config_file="+config_file, "auto_run="+str(auto_run2)],
	volumes={volume_path: {'bind': '/teste', 'mode': 'rw'}}, command="python3 /teste/python_execute_netlogo.py"))
print("Modelo 2 Container Built!")


print ("Building Router Image...")
container_dispara_socket = client.images.build(path="./", dockerfile="Dockerfile_NETLOGO", tag=tag_router, forcerm=True)
print ("Router Image Built!")
print ("Building Router Container...")
containers_list.append(client.containers.run(tag_router, network=network, name=tag_router, detach=True, environment=[
	"PYTHONUNBUFFERED=1", "output_agents="+output_agents, "general_dead_agents_file="+general_dead_agents_file, "dead_agents_file="+dead_agents_file,
	"model_input_file="+model_input_file,  "router_type="+router_type],
	volumes={volume_path: {'bind': '/teste', 'mode': 'rw'}}, command="python3 /teste/router.py"))
print("Router Container Built!")

print ("Building JaCaMo Image...")
container_jacamo = client.images.build(path="./", dockerfile="Dockerfile_JACAMO", tag=tag_jacamo)
print ("Router Image Built!")
print ("Building JaCaMo Container...")
# containers_list.append(client.containers.run(tag_jacamo, network=network, name=tag_jacamo, detach=True, ports={'3271/tcp': 3271, '3272/tcp': 3272, '8080/tcp': 8080, '8081/tcp': 8081}, environment=[
#     "PYTHONUNBUFFERED=1", "output_agents="+output_agents, "general_dead_agents_file="+general_dead_agents_file, "dead_agents_file="+dead_agents_file,
#     "model_input_file="+model_input_file,  "router_type="+router_type],
#     volumes={volume_path: {'bind': '/teste', 'mode': 'rw'}}, command="python3 /teste/router.py"))

containers_list.append(client.containers.run(tag_jacamo, network=network, name=tag_jacamo, detach=True, 
    ports={'3271/tcp': 3271, '3272/tcp': 3272, '8080/tcp': 8080, '8081/tcp': 8081},
    environment=[
    "PYTHONUNBUFFERED=1", "output_agents="+output_agents, "general_dead_agents_file="+general_dead_agents_file, "dead_agents_file="+dead_agents_file,
    "model_input_file="+model_input_file,  "router_type="+router_type],
    volumes={volume_path: {'bind': '/teste', 'mode': 'rw'}}))
print("JaCaMo Container Built!")


print("---All Images/Containers are built. System Running---")

# Logs
input("Press Enter to print Logs...")

for log in containers_list:
    with open("logs/"+log.name+'.txt', 'w') as f:
        #log = log.logs().decode('ascii').encode('utf-8')
        log = log.logs().decode('ascii', 'ignore')
        print (log)
        f.write(log)