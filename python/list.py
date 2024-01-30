list = []
print(list)
list = ["Yatish", "FEB_23", "bANGALORE"]
print(list[1], list[0])

#append key_word is used to add the content to the list. It will add in the end of the list
list.append("Phone num")
list.append(9620172823)

print(list)

#pop key_word is used to remove the last element in the list and index value is used to remove specific element

list.pop(0)
print(list)

#to replace the element in a list

list[0] = "YATISH"
print(list)

#extend key_word -> it is used to append the list.
list = ["YATISH", "BANGALORE"]
list1 = [9620172823, "PHONE_NUMBER"]

list1.extend(list)
print(list1)

list.extend(list1)
print(list)
