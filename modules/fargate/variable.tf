variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "example-eks-fargate-cluster"
}

variable "vpc_id" {
  description = "VPC ID for the EKS cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "eks_role_arn" {
  description = "IAM role ARN for the EKS cluster"
  type        = string
}

variable "fargate_profile_name" {
  description = "Name of the Fargate profile"
  type        = string
  default     = "example-fargate-profile"
}

variable "fargate_pod_execution_role_arn" {
  description = "IAM role ARN for Fargate pod execution"
  type        = string
}

variable "namespace" {
  description = "Kubernetes namespace to use with Fargate"
  type        = string
  default     = "default"
}