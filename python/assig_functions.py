import re

def find_pattern(pattern, data):
    result = re.findall(pattern, data)
    return result

val_A = r"yat[a-z]+"
email_data = "yatish23 <yatish@gmail.com>, yathee28 <yathee@gmail.com>, YATISH <YATISH@gmail.com>, YATHEESH <YATHEESH@gmail.com>"
value = find_pattern(val_A, email_data)
print(value)

val_B = r"\w+@\w+\.\w+"
email_data = "yatish23 <yatish@gmail.com>, yathee28 <yathee@gmail.com>, YATISH <YATISH@gmail.com>, YATHEESH <YATHEESH@gmail.com>"
value1 = find_pattern(val_B, email_data)
print(value1)

val_C = r"yat[a-z]+[0-9]+"
new_data = "yatish23 <yatish@gmail.com>, YATISH <YATISH@gmail.com>, YATHEESH <YATHEESH@gmail.com>"
value2 = find_pattern(val_C, new_data)
print(value2)

val_D = r"yath[a-z]+[0-9]+"
email_data = "yathish23"
value3 = find_pattern(val_D, email_data)
print(value3)
