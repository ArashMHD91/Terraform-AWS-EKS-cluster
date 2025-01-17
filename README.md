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



The architecture consists of:

- A VPC with public subnets across multiple AZs.
- An EKS cluster with an associated security group.
- Node groups auto-scaling within the public subnets.
- Proper IAM roles and policies for the EKS cluster and node groups.

---

\# Terraform AWS EKS Cluster Project


##



\## Overview

This project, \*\*TerraEKS\*\*, provides Infrastructure as Code (IaC) using Terraform to deploy a production-ready Amazon Elastic Kubernetes Service (EKS) cluster. The infrastructure includes:



\- A properly configured Virtual Private Cloud (VPC) and subnets across multiple availability zones (AZs).

\- Security groups for secure networking.

\- Auto-scaling node groups.

\- IAM roles and policies following the principle of least privilege.



\## Features

\- Highly available EKS cluster across multiple AZs.

\- Secure networking with public subnets for worker nodes.

\- IAM configurations with least privilege.

\- Fully customizable using variables.



\## Architecture Diagram

![EKS Architecture Diagram]\(Architecture\_Diagram.png)



The architecture consists of:

\- A VPC with public subnets across multiple AZs.

\- An EKS cluster with an associated security group.

\- Node groups auto-scaling within the public subnets.

\- Proper IAM roles and policies for the EKS cluster and node groups.



\---



\## Prerequisites

Ensure you have the following before starting:



1\. AWS CLI installed and configured with appropriate IAM permissions.

2\. Terraform installed (version >= 1.0.0).

3\. AWS account with permissions to manage EKS, IAM, and VPC resources.

4\. Chocolatey package manager (optional, for updating Terraform).



\---



\## Installation

1\. Clone this repository:

&#x20;  \`\`\`bash

&#x20;  git clone https\://github.com/ArashMHD91/Terraform-AWS-EKS-cluster.git

&#x20;  cd Terraform-AWS-EKS-cluster

&#x20;  \`\`\`



2\. Ensure your Terraform version is up to date:

&#x20;  \`\`\`bash

&#x20;  terraform version

&#x20;  \`\`\`

&#x20;  If outdated, update using Chocolatey (PowerShell):

&#x20;  \`\`\`powershell

&#x20;  choco install terraform --pre

&#x20;  \`\`\`



3\. Export your AWS credentials:

&#x20;  \`\`\`bash

&#x20;  export AWS\_ACCESS\_KEY\_ID="\<your-access-key-id>"

&#x20;  export AWS\_SECRET\_ACCESS\_KEY="\<your-secret-access-key>"

&#x20;  \`\`\`



4\. Verify your IAM role permissions to ensure you can apply the configurations.



\---



\## Configuration

Modify the \`terraform.tfvars\` file to customize your setup:

\`\`\`hcl

aws\_region          = "us-west-2"

cluster\_name        = "my-eks-cluster"

environment         = "development"

kubernetes\_version  = "1.27"

desired\_nodes       = 2

min\_nodes           = 1

max\_nodes           = 4

vpc\_cidr\_block      = "10.0.0.0/16"

subnet\_cidr\_blocks  = ["10.0.1.0/24", "10.0.2.0/24"]

node\_instance\_types = ["t3.medium"]

\`\`\`



\---



\## Deployment Steps

1\. Initialize Terraform:

&#x20;  \`\`\`bash

&#x20;  terraform init

&#x20;  \`\`\`



2\. Validate the configuration:

&#x20;  \`\`\`bash

&#x20;  terraform validate

&#x20;  \`\`\`



3\. Plan the infrastructure:

&#x20;  \`\`\`bash

&#x20;  terraform plan

&#x20;  \`\`\`

&#x20;  Review the execution plan to confirm the resources to be created.



4\. Apply the configuration:

&#x20;  \`\`\`bash

&#x20;  terraform apply

&#x20;  \`\`\`

&#x20;  Type \`yes\` when prompted to confirm.



5\. Navigate to the [Amazon EKS console]\(https\://console.aws.amazon.com/eks/home) to review the cluster's status and configuration.



\---



\## Outputs

After successful deployment, Terraform provides the following outputs:



\- \*\*EKS Cluster Name\*\*: Name of the created EKS cluster.

\- \*\*Cluster Endpoint\*\*: Endpoint URL for the EKS cluster.

\- \*\*Cluster ARN\*\*: Amazon Resource Name of the EKS cluster.

\- \*\*Cluster Security Group ID\*\*: Security group ID associated with the cluster.

\- \*\*Node Group ARN\*\*: ARN of the EKS node group.

\- \*\*VPC ID\*\*: ID of the created VPC.



\---



\## Clean Up

To avoid unnecessary charges, destroy the resources when they are no longer needed:

\`\`\`bash

terraform destroy

\`\`\`

Type \`yes\` to confirm.



\---



\## Troubleshooting

\- If Terraform commands fail, check your IAM permissions and ensure the AWS credentials are correctly exported.

\- Ensure your Terraform and AWS CLI versions are up to date.

\- Refer to the Terraform documentation for [EKS]\(https\://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks\_cluster).



\---



\## Security Best Practices

\- Use least privilege IAM roles and policies.

\- Limit public access to resources unless necessary.

\- Use encrypted secrets and credentials for authentication.



\---



\## License

This project is licensed under the MIT License. See the LICENSE file for details.



\---



Happy Terraforming! 🎉



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

This project is licensed under the MIT License. See the LICENSE file for details.

---

Happy Terraforming! 🎉

