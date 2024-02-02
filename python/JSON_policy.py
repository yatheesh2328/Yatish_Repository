dict = {
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Action": "s3:ListBucket",
    "Resource": "arn:aws:s3:::example_bucket"
  }
}

print(dict["Statement"])
print(dict["Statement"]["Effect"])
print(dict["Statement"]["Action"])
print(dict["Statement"]["Resource"])
print(f"length of the dictornary is : ",len(dict))