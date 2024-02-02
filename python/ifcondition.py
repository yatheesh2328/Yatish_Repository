cars = ["thar", "X6", "M3", "mustang"]
val = "X8"
if val in cars:
     print("car is found")
else:
    print("car is not found")

#checking if flag is true
flag = True
if flag:
     print("flag is true")
else:
      print("flag is false")

#checking if flag is false
flag = False
if flag:
      print("flag is true")
else:
     print("flag is false")

#checking only if flag is false
if not flag:
     print("flag is true")
else:
     print("flag is false")

#checking if list is empty or not
list = [23]
if list:
    print("list is not empty")
else:
    print("list is empty")

#checking if list is empty
list = []
if not list:
     print("list is empty")
else:
     print("List is not empty")

#using dictonaries in IF
#compariing with key in dictr
dictr = {"Y": "yatish", "M": "MANI"}
key_value = "M"
if key_value in dictr:
    print("value found")
else:
    print("value not found")

#comparing with values in dictr/ "values' is an build in module in python
value_dictr = "yatishs"
if value_dictr in dictr.values():
    print("values found")
else:
    print("values not found")

#comparing wheather specific key contain specific value or not in dictr -> we need to use operators.
if dictr[key_value] == value_dictr:
    print("value found")
else:
    print("value is not found")

if dictr[key_value] == value_dictr:
    print("value found")
else:
    print("value is not found")

#comapring the key in dict and also comparing specific key is present for specific value
if key_value in dictr and dictr[key_value] == value_dictr:
    print("value is found")
else:
    print("value is not found")