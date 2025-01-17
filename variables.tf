# variables.tf
variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-west-2" # Change this to your desired region
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "your-eks-cluster" # Change this to your preferred name
}

variable "environment" {
  description = "Environment name"
  default     = "development"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  default     = "1.27"
}

variable "desired_nodes" {
  description = "Desired number of worker nodes"
  default     = 2
}

variable "min_nodes" {
  description = "Minimum number of worker nodes"
  default     = 1
}

variable "max_nodes" {
  description = "Maximum number of worker nodes"
  default     = 4
}

variable "node_instance_types" {
  description = "List of instance types for the worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}
