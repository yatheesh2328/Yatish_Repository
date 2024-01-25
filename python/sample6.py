mylist=[10, 22, 33]
var=["welcome", "to", "python", "yatish"]
ext=["January", 2024]

print(f"enterred values in the list : {mylist}")
print(mylist[2], mylist[1])


print(var[0], var[3])

var.append(23)
var.append("Hello")

print(f"updated new values are : {var}")

var.pop(3)
print(f"new values arie : {var}")

ext.extend(var)
print(ext)
