# Terraform repo

A Terraform module for making static websites

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


1. In the directory with your web files, create a `main.tf` file calling the module, including a bucket name:
  ```
  terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
      }
    }

    required_version = ">= 1.7.1"
  }

  module "bot-fly" {
    source       = "../../bot-fly/terraform" # or github URL

    bucket_name = "< xxxxxxx... >" # a unique bucket name
  }
   ``` 
2. Optionally, create a `outputs.tf` file, or, just add this to the `main.tf` file:
  ```
  output "website_url" {
    description = "Website URL (HTTPS)"
    value       = module.bot-fly.website_url
  }

  output "s3_url" {
    description = "S3 hosting URL (HTTP)"
    value       = module.bot-fly.s3_url
  }
  ```
  This code will output the location your web files are deployed to.

5. Deploy your files:
  * `terraform init` to initialize the directory with hidden files (do not commit them)
  * `terraform plan` to prepare to create AWS resouces
  * `terraform apply` and then type `yes` to create
  * `terraform destroy` to undo your creation
