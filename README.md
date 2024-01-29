# Terraform repo

## Requirements
* [Intall Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* An AWS account
* [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
* An AWS access key ID / secret access key pair, 

Set the access key variables:
```
export AWS_ACCESS_KEY_ID="xxxxx..."
export AWS_SECRET_ACCESS_KEY="xxxxx..."
```

## Use
* `terraform init` to initialize the directory with hidden files (do not commit them)
* `terraform plan` to prepare to create AWS resouces
* `terraform apply` and then type `yes` to create
* `terraform destroy` to undo your creation
