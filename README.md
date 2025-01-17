# Terraform AWS EKS Cluster Project

## Overview
This project, **TerraEKS**, provides Infrastructure as Code (IaC) using Terraform to deploy a production-ready Amazon Elastic Kubernetes Service (EKS) cluster. The infrastructure includes:

- A properly configured Virtual Private Cloud (VPC) and subnets across multiple availability zones (AZs).
- Security groups for secure networking.
- Auto-scaling node groups.
- IAM roles and policies following the principle of least privilege.

## Features
- Highly available EKS cluster across multiple AZs.
- Secure networking with public subnets for worker nodes.
- IAM configurations with least privilege.
- Fully customizable using variables.

## Architecture Diagram

```
AWS Cloud
├── VPC (10.0.0.0/16)
│ ├── Public Subnet 1 (10.0.1.0/24)
│ │ └── Node Group 1 (EKS Worker Nodes)
│ ├── Public Subnet 2 (10.0.2.0/24)
│ │ └── Node Group 2 (EKS Worker Nodes)
│ └── Internet Gateway (172.16.0.0/16)
│
├── Amazon EKS Control Plane
│ └── Manages and orchestrates the Kubernetes cluster
│
└── Application
└── Accessible via Internet Gateway

---

---

## Prerequisites
Ensure you have the following before starting:

1. AWS CLI installed and configured with appropriate IAM permissions.
2. Terraform installed (version >= 1.0.0).
3. AWS account with permissions to manage EKS, IAM, and VPC resources.
4. Chocolatey package manager (optional, for updating Terraform).

---

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/ArashMHD91/Terraform-AWS-EKS-cluster.git
   cd Terraform-AWS-EKS-cluster
   ```

2. Ensure your Terraform version is up to date:
   ```bash
   terraform version
   ```
   If outdated, update using Chocolatey (PowerShell):
   ```powershell
   choco install terraform --pre
   ```

3. Export your AWS credentials:
   ```bash
   export AWS_ACCESS_KEY_ID="<your-access-key-id>"
   export AWS_SECRET_ACCESS_KEY="<your-secret-access-key>"
   ```

4. Verify your IAM role permissions to ensure you can apply the configurations.

---

## Configuration
Modify the `terraform.tfvars` file to customize your setup:
```hcl
aws_region          = "us-west-2"
cluster_name        = "my-eks-cluster"
environment         = "development"
kubernetes_version  = "1.27"
desired_nodes       = 2
min_nodes           = 1
max_nodes           = 4
vpc_cidr_block      = "10.0.0.0/16"
subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24"]
node_instance_types = ["t3.medium"]
```

---

## Deployment Steps
1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Validate the configuration:
   ```bash
   terraform validate
   ```

3. Plan the infrastructure:
   ```bash
   terraform plan
   ```
   Review the execution plan to confirm the resources to be created.

4. Apply the configuration:
   ```bash
   terraform apply
   ```
   Type `yes` when prompted to confirm.

5. Navigate to the [Amazon EKS console](https://console.aws.amazon.com/eks/home) to review the cluster's status and configuration.

---

## Outputs
After successful deployment, Terraform provides the following outputs:

- **EKS Cluster Name**: Name of the created EKS cluster.
- **Cluster Endpoint**: Endpoint URL for the EKS cluster.
- **Cluster ARN**: Amazon Resource Name of the EKS cluster.
- **Cluster Security Group ID**: Security group ID associated with the cluster.
- **Node Group ARN**: ARN of the EKS node group.
- **VPC ID**: ID of the created VPC.

---

## Clean Up
To avoid unnecessary charges, destroy the resources when they are no longer needed:
```bash
terraform destroy
```
Type `yes` to confirm.

---

## Troubleshooting
- If Terraform commands fail, check your IAM permissions and ensure the AWS credentials are correctly exported.
- Ensure your Terraform and AWS CLI versions are up to date.
- Refer to the Terraform documentation for [EKS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster).

---

## Security Best Practices
- Use least privilege IAM roles and policies.
- Limit public access to resources unless necessary.
- Use encrypted secrets and credentials for authentication.

---

## License
This project is licensed under the MIT License, which allows you to use, modify, and distribute the code for personal or commercial purposes as long as proper attribution is given. For more details, see the LICENSE file.

---

Happy Terraforming! 🎉

