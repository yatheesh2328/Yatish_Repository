provider "aws" {
    region = "eu-west-2"
}
 
terraform {
    backend "s3" {
      region = "eu-west-2"
      bucket = "yatheesh2328bucket"
      key = "state.tfstate"
      dynamodb_table = "statelock"
      encrypt = true
    }
}
