variable "region" {
    default = "ap-southeast-2"
}

variable "az" {
    default = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "cluster_name" {
  description = "cluster name"

  default = "eks-prasanna"
  type    = string
}

variable "min_size" {
  description = "min size of nodes in node pool"

  default = "1"
  type    = string
}

variable "max_size" {
  description = "max size of nodes in node pool"

  default = "7"
  type    = string
}

variable "desired_size" {
  description = "desired size of nodes in node pool"

  default = "1"
  type    = string
}

variable "vpc_name" {
    default = "vpc-x1"
}

variable "vpc_id" {
  description = "vpc id where nodes and clusters need to be spun"

  type    = string
}

variable "vpc_cidr" {
    default = "30.0.0.0/16"
}
