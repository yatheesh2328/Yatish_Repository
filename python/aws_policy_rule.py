dict = {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "FirstStatement",
      "Effect": "Allow",
      "Action": ["iam:ChangePassword"],
      "Resource": "*"
    },
    {
      "Sid": "SecondStatement",
      "Effect": "Allow",
      "Action": "s3:ListAllMyBuckets",
      "Resource": "*"
    },
    {
      "Sid": "ThirdStatement",
      "Effect": "Allow",
      "Action": [
        "s3:List*",
        "s3:Get*"
      ],
      "Resource": [
        "arn:aws:s3:::confidential-data",
        "arn:aws:s3:::confidential-data/*"
      ],
      "Condition": {"Bool": {"aws:MultiFactorAuthPresent": "true"}}
    }
  ]
}
print(dict)
print(f"\nversion is : ", dict["Version"])
print(f"line 24 value is - ", dict["Statement"][2]["Resource"][0]) #To print the first element of value present in the key "Resource"
print(f"line 25 value is - ", dict["Statement"][2]["Resource"][1]) #To print the second element of value present in the key "Resource"
print(f"line 27 value is - ", dict["Statement"][2]["Condition"]) #To print the values present in the key "Resource"
print(f"line 27 value is - ", dict["Statement"][2]["Condition"]["Bool"]["aws:MultiFactorAuthPresent"]) #To print the value "True" present in the line 27
print(f"length of the dictonary is : ",len(dict))