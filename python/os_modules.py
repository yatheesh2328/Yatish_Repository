import os
import sys

#getcwd() it is used to know the current working directory
var = os.getcwd()
print(var)
print(os.getcwd())
#os.makedirs() - used to create the dir.
os.makedirs("dir", exist_ok=True)
#os.listdir() - used to list the directory
print(os.listdir("C:\\Users\\adi\\PycharmProjects\\pythonProject"))
print(os.getcwd())
#os.chdir() is used to switch to directory
os.chdir("dir")
print(os.getcwd())
#os.path.isfile() - will check file exists or not and returns TRUE or FlASE
print(os.path.isfile("assignment.py"))
#os.path.exists() - will check dir exists or not and returns TRUE or FlASE
print(os.path.exists("dir"))
#os.path.join() - it is used to join the path
print(os.path.join("/home/ubuntu", "dir"))
#os.path.basename() - it will return the basename of the path/file
print(os.path.basename("C:\\Users\\adi\\PycharmProjects\\pythonProject"))
#os.walk() - it is used to walkthorough all the dir and sub-dir and in each iteration it returns the current path,all files and directories.
#print(os.walk("C:\\Users\\adi\\PycharmProjects\\pythonProject"))
for root, dirs, files in os.walk(("C:\\Users\\adi\\PycharmProjects\\pythonProject")):
    print(f"{root}\n")
    for file in files:
        if file.lower().endswith(".py"):
            print(file)


