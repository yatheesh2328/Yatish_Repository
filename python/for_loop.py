cars = ["audi", "bmw", "volvo"]
for car in cars:
    print(car)
for index, car in enumerate(cars):
    print(f"{car} {index}")

dictr = {"name":"yatish", "id":2823, "city":"bangalore"}
#keys(), values(), items() are built in functions to fetch keys,value and keyvalue in an dictronary
for key in dictr.keys(): #to fetch only the key in a dictr
    print(f"keys present in dictr are :", key)

for value in dictr.values(): #to fetch only the value in a dictr
    print(f"values present in an dictr are :", value)
for key,value in dictr.items(): #to fetch both keyValue in a dictr
    print(f"key values present in an dictr are :", key, value)

#lower(), upper() are built in functions to print the string in lower case and upper case respectively
name="Yatish"
name.lower()
print(name.lower())
print(name.upper())
#val=name.upper()
#if val.startswith("YA"):
#     print("True")
# else:
#     print("false")

#startswith() and endswith() are built in function
if name.upper().startswith("YA"):
    print("True")
else:
    print("false")

if name.lower().endswith("SH"):
    print("true")
else:
    print("false")

#replace() is used to replace an element in a string

statement="hello.wor.ld"
print(statement.replace(".","/"))

#split() is used to split the string and displays in list form
print(statement.split("."))
print(statement.split(".",1))

# rsplit() is used to split the string in reverse order and displays in list
print(statement.rsplit("."))
print(statement.rsplit(".",1))
