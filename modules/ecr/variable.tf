variable "name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}