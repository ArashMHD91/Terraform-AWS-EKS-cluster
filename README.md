Here's your complete README.md file:



```markdown
# TerraEKS: Infrastructure as Code for AWS EKS Cluster

[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Terraform](https://img.shields.io/badge/Terraform-1.0+-blueviolet)](https://www.terraform.io/)
[![AWS Provider](https://img.shields.io/badge/AWS-5.0+-orange)](https://registry.terraform.io/providers/hashicorp/aws/latest)

## Overview
This project provides Infrastructure as Code (IaC) using Terraform to deploy a production-ready Amazon Elastic Kubernetes Service (EKS) cluster. The infrastructure includes a fully configured Virtual Private Cloud (VPC), multi-AZ subnets, security groups, and auto-scaling node groups, all following AWS best practices.

## Architecture
![EKS Architecture Diagram](Architecture_Diagram.png)

### Key Components:
- VPC with public subnets across multiple Availability Zones
- Internet Gateway for external connectivity
- EKS control plane with managed node groups
- Security groups for cluster and node communication
- IAM roles and policies following least privilege principle
- Auto-scaling configuration for worker nodes

## Features
- 🚀 Production-ready EKS cluster deployment
- 🔐 Secure networking with properly configured VPC and security groups
- ⚡ Auto-scaling node groups for optimal resource utilization
- 🔄 High availability across multiple AZs
- 🛡️ IAM roles and policies following security best practices
- 🎯 Fully customizable through variables
- 📊 Comprehensive output variables for easy integration

## Prerequisites
- AWS Account with appropriate permissions
- AWS CLI installed and configured
- Terraform (>= 1.0.0)
- kubectl (for cluster interaction)
- Basic understanding of AWS EKS and Terraform

## Quick Start

1. Clone the repository:
```bash
git clone https://github.com/ArashMHD91/Terraform-AWS-EKS-cluster.git
cd Terraform-AWS-EKS-cluster
```

2. Configure AWS credentials:
```bash
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"
export AWS_REGION="your-region"
```

3. Initialize and apply Terraform:
```bash
terraform init
terraform plan
terraform apply
```

## Configuration

### Required Variables
Create a `terraform.tfvars` file:
```hcl
aws_region          = "eu-central-1"
cluster_name        = "my-eks-cluster"
environment         = "production"
kubernetes_version  = "1.27"
vpc_cidr_block      = "10.0.0.0/16"
subnet_cidr_blocks  = ["10.0.1.0/24", "10.0.2.0/24"]
```

### Optional Variables
```hcl
desired_nodes       = 2
min_nodes           = 1
max_nodes           = 4
node_instance_types = ["t3.medium"]
```

## Resource Management

### Accessing the Cluster
After deployment, configure kubectl:
```bash
aws eks update-kubeconfig --region <region> --name <cluster-name>
```

### Scaling
Adjust node group scaling in `terraform.tfvars`:
```hcl
desired_nodes = 3
max_nodes     = 5
```

### Clean Up
Remove all resources:
```bash
terraform destroy
```

## Security Considerations
- All worker nodes use IMDSv2
- Control plane logs enabled
- Security groups limit access to necessary ports only
- IAM roles follow least privilege principle
- Network policies configured for pod-to-pod communication

## Monitoring and Logging
The cluster comes configured with:
- CloudWatch Logs for control plane
- Container Insights enabled
- Metrics server for HPA support

## Troubleshooting

### Common Issues and Solutions

1. **Terraform Plan Fails**:
   - Verify AWS credentials
   - Check IAM permissions
   - Validate region availability

2. **Cluster Creation Issues**:
   - Ensure subnet configurations are correct
   - Verify VPC limits
   - Check AWS service quotas

## Future Enhancements
- [ ] Add Helm charts for common applications
- [ ] Implement AWS Load Balancer Controller
- [ ] Add cluster autoscaler
- [ ] Implement AWS EBS CSI driver
- [ ] Add monitoring stack (Prometheus/Grafana)

## Contributing
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## Support
For bugs and feature requests, please open an issue in the GitHub repository.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments
- AWS EKS Documentation
- Terraform AWS Provider Documentation
- The DevOps Community

---

Made with ❤️ by Arash
```

Feel free to customize any section or add more details according to your specific needs. Would you like me to modify any particular part or add additional information?
