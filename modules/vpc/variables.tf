variable "project_name"          { type = string }
variable "vpc_cidr"              { type = string }
variable "public_subnet_cidr"    { type = string }
variable "private_subnet_cidr"   { type = string }
variable "az"                    { type = string }
variable "private_subnet_2_cidr" { type = string; default = "10.0.3.0/24" }
variable "az_2"                  { type = string; default = "us-east-1b" }
