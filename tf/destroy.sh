export AWS_ACCESS_KEY_ID="AKIAUDI43WQVZPVX4YGX"
export AWS_SECRET_ACCESS_KEY="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"

cd vpc
terraform init
terraform plan -var-file vpc-dev.tfvars
terraform apply -var-file vpc-dev.tfvars -auto-approve
mv eks.tfvars ./../cluster/eks.tfvars

cd ..
cd cluster

terraform init
terraform plan -var-file eks-dev.tfvars -var-file eks.tfvars
terraform destroy -var-file eks-dev.tfvars -var-file eks.tfvars -auto-approve

cd ..
cd vpc

terraform destroy -var-file vpc-dev.tfvars -auto-approve

cd ..

# [skip ci]