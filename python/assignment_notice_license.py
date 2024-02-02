#Assignment - write a script to read notice and license file and add the content of each file to notice_license.txt file.
#before appending the content to notice_license.txt file add the path
import os

pattern = ["notice", "license"]

with open("noticefile1.txt", 'w') as nf1:
    nf1.write("This is noticefile1\nsecond line of notice file\nthird line of notice file")
with open("licencefile1.txt", 'w') as lf1:
    lf1.write("this is licencefile1\nsecond line of license file\nthird line of license file")
with open("noticefile1.txt", 'r') as nf1:
    content = nf1.read()
    print(content)
with open("licencefile1.txt", 'r') as lf1:
    content1 = lf1.read()
    print(content1)
for root, dir, files in os.walk("C:\\Users\\adi\\PycharmProjects\\pythonProject\\"):
    for file in files:
        print(file)
with open("notice_license.txt", 'w') as nl1:
    nl1.write(f"\n{content} \n{root}")
with open("notice_license.txt", 'a') as nl1:
    nl1.write(f"\n{content1} \n{root}")



