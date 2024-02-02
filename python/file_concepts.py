# #for open() function we need to pass two arguments 1)filename and 2) character to represent the mode("r", "w", "a")
# with open("newfile1.txt", 'w') as nfp:
#     nfp.write("Hello\ngood morning\nwelcome to python class")
# fruits = ["apple", "orange", "mango"]
# with open("newfile1.txt", 'a') as nfp:
#     for fruit in fruits: #for loop is used because we cannot pass a list in nfp.write() function. Only string is passed for nfp.write().
#         nfp.write(f"\n{fruit}")

with open("newfile2.txt", 'w') as nfp2:
    nfp2.write("this is second file with name newfile2\n")
cars = ["thar", "safari", "MG"]
with open("newfile2.txt", 'a') as nfp2:
        for car in cars:
            nfp2.write(f"\n{car}")
#READ_MODE
with open("newfile2.txt", 'r') as nfp2:
    content = nfp2.read() #varible should be used to read the content in read mode
    print(content)
#Read the content from 1 file and write the content to another file

with open("newfile3.txt", 'w') as nfp3:
    nfp3.write(content )


