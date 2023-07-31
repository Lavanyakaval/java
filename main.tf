terraform {
    required_version = "~> 1.5.4" //  Value mention as per your terraform version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"  // Value mention as per your aws version
     }
    }
   }

provider "aws" {
	region = "us-east-1"
	
}

resource "aws_instance" "lavanyainfra" {
	ami = "ami-05548f9cecf47b442" // Refer aws and get correct ami id
	instance_type = "t2.micro"
}
