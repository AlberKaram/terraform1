variable "customer" {
    type = string
    default = "iti"
  
}

variable "env_name" {
    type = string
    default = "dev"
  
}

variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "subnet_cidr_block" {
    type = string
    default = "10.0.1.0/24"
  
}


