output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.example.name
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = aws_eks_cluster.example.endpoint
}

output "fargate_profile_name" {
  description = "The name of the Fargate profile"
  value       = aws_eks_fargate_profile.example.fargate_profile_name
}