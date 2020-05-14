variable "AWS_REGION" {
  default = "us-east-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "vpc_cidr" {
  default = "10.30.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.30.1.0/24"
}

variable "private_subnet_cidr" {
  default = "10.30.2.0/24"
}

variable "cidr_administrator_account" {
  default = "10.40.0.0/16"
}




variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

