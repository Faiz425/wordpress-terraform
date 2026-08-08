# wordpress-terraform

Overview

A modular Terraform Infrastructure as Code project that deploys a WordPress website on AWS.

The project demonstrates practical experience with AWS networking, EC2, security groups, Linux server provisioning, Terraform modules, automated configuration and Git.

Architecture
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
EC2 - Amazon Linux 2023
   |
User Data
   |
Apache + PHP + MariaDB
   |
WordPress
AWS Resources
VPC
Public Subnet
Internet Gateway
Route Table
Security Group
EC2 Instance
Terraform Structure
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
Key Features
Modular Terraform architecture
Amazon Linux 2023 EC2 deployment
Dynamic AMI lookup
Automated server configuration using embedded user_data
Apache, PHP and MariaDB installation
Automated WordPress download and configuration
AWS Security Group configuration
Git/GitHub version control
Terraform state and provider files excluded from Git
Deployment
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply

After deployment, access WordPress through the EC2 public IP:

http://<EC2-PUBLIC-IP>

To remove the infrastructure:

terraform destroy
Security

The security group allows:

Port	Purpose
22	SSH
80	HTTP

For a production deployment, SSH should be restricted to trusted IP addresses or replaced with AWS Systems Manager Session Manager.

What This Project Demonstrates
Infrastructure as Code
AWS networking
Terraform modules
Linux administration
Automated application provisioning
Cloud security fundamentals
Git-based infrastructure management
Future Improvements

Potential production-focused improvements include:

Application Load Balancer
Auto Scaling
Amazon RDS
Private subnets
HTTPS with ACM
Route 53
S3 remote Terraform state
GitHub Actions CI/CD
CloudWatch monitoring
AWS Secrets Manager






<img width="1066" height="572" alt="image" src="https://github.com/user-attachments/assets/827eaebc-1413-434e-bc3a-2c50a66000c1" />
