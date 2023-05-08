variable "region" {
    default = "ap-southeast-2"
}

variable "az" {
    default = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "vpc_name" {
  default = "vpc-prasanna"
  type    = string
}

variable "vpc_id" {
  description = "vpc id where nodes and clusters need to be spun"
  type    = string
}

variable "vpc_cidr" {
    default = "30.0.0.0/16"
}
