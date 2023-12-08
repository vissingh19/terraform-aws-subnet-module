variable "vpc_id" {
  type= string
  description = "The VPC ID"
}

variable "subnet_cidr_blocks" {
  type= list(string)
  #default = "172.16.10.0/24"
}

variable "env" {
  type= string
}