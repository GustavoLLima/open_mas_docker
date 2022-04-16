from os import listdir
from os.path import isfile, join
mypath = 'C:\\Users\\Gustavo\\Desktop\\v3\\teste\\jacamo\\INTEGRANDO COM API\\eee\\src\\agt\\list'
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]

full_str = ""

for file in onlyfiles:
	clear_name = file.replace(".asl","")
	full_str += clear_name+", "
	print (clear_name)

print(full_str)