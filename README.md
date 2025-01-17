# TerraEKS - Infrastructure as Code for AWS EKS Cluster

## Overview
This project demonstrates how to use Terraform to provision an Amazon Elastic Kubernetes Service (EKS) cluster with best practices for scalability and high availability. It is designed for deploying containerized applications using Kubernetes and emphasizes infrastructure as code (IaC) principles.

---

## Features
- Creation of a Virtual Private Cloud (VPC) with two public subnets.
- Deployment of an Amazon EKS cluster.
- Auto-scaling worker nodes across multiple Availability Zones.
- Internet Gateway for external communication.
- Kubernetes management via the EKS control plane.

---

## Architecture Diagram

**AWS Cloud**  
├── **VPC** (10.0.0.0/16)  
│   ├── **Public Subnet 1** (10.0.1.0/24)  
│   │   └── **Node Group 1** (EKS Worker Nodes)  
│   ├── **Public Subnet 2** (10.0.2.0/24)  
│   │   └── **Node Group 2** (EKS Worker Nodes)  
│   └── **Internet Gateway** (172.16.0.0/16)  
│  
├── **Amazon EKS Control Plane**  
│   └── Manages and orchestrates the Kubernetes cluster  
│  
└── **Application**  
    └── Accessible via Internet Gateway  

---

## Prerequisites

Before deploying this project, ensure the following:

1. Terraform installed on your local machine.
2. AWS CLI configured with sufficient IAM permissions.
3. Kubectl installed for managing the Kubernetes cluster.

---

## How to Deploy

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-repo/terraform-eks-project.git
   cd terraform-eks-project
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Plan the Infrastructure:**
   ```bash
   terraform plan
   ```

4. **Apply the Configuration:**
   ```bash
   terraform apply
   ```
   Confirm with `yes` when prompted.

5. **Configure Kubectl:**
   After the EKS cluster is provisioned, configure kubectl:
   ```bash
   aws eks update-kubeconfig --region <your-region> --name <eks-cluster-name>
   ```

6. **Deploy Applications:**
   Use Kubernetes manifests or Helm charts to deploy your applications.

---

## Clean Up

To avoid incurring unnecessary charges, destroy the infrastructure when no longer needed:

```bash
terraform destroy
```

---

## Repository

GitHub Repository: [Terraform EKS Project](https://github.com/your-repo/terraform-eks-project)

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
