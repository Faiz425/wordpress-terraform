


# WordPress Deployment with Terraform on AWS

## Overview

This project deploys a WordPress website on AWS using **Terraform Infrastructure as Code**.

The infrastructure is built using Terraform modules and includes a VPC, public subnet, Internet Gateway, security group and EC2 instance. The EC2 server is automatically configured using embedded Terraform user data.

## AWS Infrastructure

* VPC
* Public subnet
* Internet Gateway
* Route table
* Security group
* EC2 instance
* Amazon Linux 2023
* Apache
* PHP
* MariaDB
* WordPress

## Terraform Structure

```text
wordpress-terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── terraform.lock.hcl
├── README.md
├── .gitignore
│
└── modules/
    ├── vpc/
    ├── security-group/
    └── ec2/
```

## How It Works

Terraform creates the AWS infrastructure and connects the resources together:

```text
Internet
   |
Internet Gateway
   |
VPC
   |
Public Subnet
   |
Security Group
   |
EC2 Instance
   |
User Data
   |
Apache + PHP + MariaDB
   |
WordPress
```

The EC2 user data script automatically installs the required software and downloads WordPress when the instance is created.

## Deployment

Clone the repository and initialise Terraform:

```bash
terraform init
```

Format the configuration:

```bash
terraform fmt
```

Validate the configuration:

```bash
terraform validate
```

Review the infrastructure changes:

```bash
terraform plan
```

Deploy the infrastructure:

```bash
terraform apply
```

After deployment, the WordPress site can be accessed through the EC2 public IP.

To remove the infrastructure:

```bash
terraform destroy
```

## Security

The EC2 security group controls access to the server.

| Port | Purpose |
| ---- | ------- |
| 22   | SSH     |
| 80   | HTTP    |

For a production environment, SSH access should be restricted to trusted IP addresses or replaced with AWS Systems Manager.

## Git & Terraform

Git is used to track changes to the Terraform configuration.

Terraform-generated files and local state are excluded from the repository using `.gitignore`.

The repository keeps `terraform.lock.hcl` so the Terraform provider dependency versions remain consistent.

## What I Learned

This project helped develop practical experience with:

* Terraform Infrastructure as Code
* Terraform modules
* AWS networking
* EC2
* Security Groups
* Linux server administration
* Automated server provisioning
* WordPress deployment
* Git and GitHub

## Future Improvements

Possible improvements include:

* Application Load Balancer
* Amazon RDS
* Private subnets
* Auto Scaling
* HTTPS with AWS Certificate Manager
* Route 53
* Remote Terraform state
* GitHub Actions CI/CD
* CloudWatch monitoring

## Author

**Faizan Akbar**

AWS | Terraform | DevOps | Cloud Infrastructure





# Screenshot

<img width="1066" height="572" alt="image" src="https://github.com/user-attachments/assets/827eaebc-1413-434e-bc3a-2c50a66000c1" />
