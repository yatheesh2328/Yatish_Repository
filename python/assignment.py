import os
import sys
for path, dir, files in os.walk("C:\\Users\\adi\\PycharmProjects\\pythonProject\\"):
    for file in files:
        if file.lower().startswith('notice1') or file.lower().startswith('license1'):
            aa = open(file, 'r')
            content = aa.read()
            aa = open('notice_licence.txt', 'a')
            aa.write(f"{path} {content} \n")
            sys.exit(0)
