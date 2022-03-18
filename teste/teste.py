from filelock import Timeout, FileLock

lock = FileLock("high_ground.txt.lock")
with lock:
    with open("high_ground.txt", "a") as f:
        f.write("You were the chosen one.")
# from filelock import FileLock

# lockfile = "aaa.txt"
# lock = FileLock(lockfile + ".lock")
# with lock:
#     file = open("aaa.txt", "w")
#     file.write("12345")
#     input("Press Enter to continue...")
#     file.close()

# from filelock import FileLock

# print("---antes: ---")
# with open("aaa.txt", "r") as f:
#     lines = f.readlines()
#     for line in lines:
#     	print(line)

# with FileLock("aaa.txt") as f:
#     # work with the file as it is now locked
#     print("Lock acquired.")

#     lines = f.readlines()
#     for line in lines:
#     	print(line)

#     input("Press Enter to continue...")
#     print("saiu")

# # print("---depois: ---"+"\n")
# # with open("aaa.txt", "r") as f:
# #     lines = f.readlines()
# #     for line in lines:
# #     	print(line)