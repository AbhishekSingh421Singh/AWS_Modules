output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.example.name
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = aws_eks_cluster.example.endpoint
}

output "eks_cluster_ca_certificate" {
  description = "The certificate authority data for the cluster"
  value       = aws_eks_cluster.example.certificate_authority[0].data
}