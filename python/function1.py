import re
# result = re.search(r"\w+@\w+\.\w+", email_data)
#print(result)
def find_pattern(pattern, data):
    result = re.search(r"\w+@\w+\.\w+", email_data)
    return result

pat = r"\w+@\w+\.\w+"
email_data = "yatish23<yatish@gmail.com>"
view = find_pattern(pat,email_data)
print(view)