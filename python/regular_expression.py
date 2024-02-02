import os
import re

data = ["notice", "license"]
file = "notice_license.txt"
with open(file, 'r') as dd:
    content=dd.read()
    for find in data:
        sea=re.search(find, content)
        print(sea)