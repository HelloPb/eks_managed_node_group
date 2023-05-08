 terraform {
   backend "s3" {
     bucket = "zt-tf-state-store"
     key    = "aws-vpn/eks-prasanna.tfstate"
     region = "ap-southeast-2"
   }
 }
