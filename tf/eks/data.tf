
data "aws_vpc" "vpc" {
  id = var.vpc_id
}

data "aws_subnet_ids" "private" {
  vpc_id = var.vpc_id
  tags = { Name="*${var.vpc_name}-private*" }
}

data "aws_subnet" "private" {
  for_each = data.aws_subnet_ids.private.ids
  id       = each.value
}

data "aws_subnet_ids" "public" {
  vpc_id = var.vpc_id
  tags = { Name="*${var.vpc_name}-public*" }
}

data "aws_subnet" "public" {
  for_each = data.aws_subnet_ids.public.ids
  id       = each.value
}

data "aws_eks_cluster" "default" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "default" {
  name = var.cluster_name
}

data "aws_caller_identity" "current" {}

data "aws_availability_zones" "available" {}
