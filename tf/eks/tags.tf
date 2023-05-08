module "tags" {
  source = "git@github.com:zetaris/tf-aws-tags.git"
  application = "eks-x1-cluster"
  environment = "eks-x1"
  owner = "platform_engineering"
  customer_name = "internal"  
}
