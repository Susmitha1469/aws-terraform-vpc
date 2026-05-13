![Terraform](https://img.shields.io/badge/Terraform-1.5+-7B42BC?style=flat&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=flat&logo=amazonaws)
![Status](https://img.shields.io/badge/Status-Live-brightgreen)

Production-grade AWS network infrastructure built with Terraform — modular, reusable, deployable with a single command.
## Live Deployment Outputs

| Resource | Value |
|---|---|
| Bastion Public IP | 32.196.140.145 |
| RDS Endpoint | susmitha-project1-mysql.c2dw8y2e00ca.us-east-1.rds.amazonaws.com:3306 |
| VPC ID | vpc-0cbc7a314a7d8296c |
| Region | us-east-1 |

## What This Builds

| Resource | Purpose |
|---|---|
| VPC | Isolated private network (10.0.0.0/16) |
| 3 Subnets | 1 public (EC2), 2 private across 2 AZs (RDS) |
| Internet Gateway | Public subnet internet access |
| NAT Gateway | Private subnet outbound-only internet |
| 2 Route Tables | Public and private routing rules |
| Security Group (Bastion) | SSH port 22, my IP only |
| Security Group (RDS) | MySQL port 3306, VPC CIDR only |
| EC2 Instance | Bastion host (t2.micro, free tier) |
| RDS Instance | MySQL 8.0 (db.t3.micro, encrypted at rest) |
| S3 + DynamoDB | Remote state backend with locking |

## Project Structure
## Quick Start

```bash
git clone https://github.com/Susmitha1469/aws-terraform-vpc.git
cd aws-terraform-vpc
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your values
terraform init
terraform plan
terraform apply
```

## Security Design

| Control | Implementation |
|---|---|
| Bastion SSH | Restricted to single IP (my_ip/32) |
| RDS exposure | publicly_accessible = false |
| RDS access | Port 3306 from VPC CIDR only |
| RDS encryption | storage_encrypted = true |
| Secrets | db_password marked sensitive = true |
| State file | Encrypted S3, versioned, DynamoDB locked |

## Key Interview Talking Points

**Why remote state?** S3 remote state lets any team member run Terraform against the same infrastructure. DynamoDB locking prevents two engineers running apply simultaneously corrupting the state file.

**Why private subnet for RDS?** No route to the internet means nobody can reach the database from outside AWS even if they know the endpoint. Only resources inside the VPC can connect.

**Why modular Terraform?** Each module can be reused across dev/staging/prod by changing input variables — same concept as functions in programming.

## Author

**Susmitha Chowdary Sunkavalli**
MS Computer Science — George Mason University (Dec 2025)
[LinkedIn](https://linkedin.com/in/susmitha-sunkavalli-42b77b236) | [GitHub](https://github.com/Susmitha1469)
