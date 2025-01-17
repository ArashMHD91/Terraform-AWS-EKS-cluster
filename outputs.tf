# outputs.tf
output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.name
}

output "eks_cluster_endpoint" {
  description = "Endpoint for EKS cluster"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_arn" {
  description = "ARN of the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.arn
}

output "eks_cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster"
  value       = aws_security_group.eks_cluster_sg.id
}

output "eks_node_group_arn" {
  description = "ARN of the EKS Node Group"
  value       = aws_eks_node_group.eks_nodes.arn
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.eks_vpc.id
}
