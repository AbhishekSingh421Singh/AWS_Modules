variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "role_arn" {
  description = "IAM role ARN for Lambda execution"
  type        = string
}

variable "handler" {
  description = "Function entry point (e.g., index.handler)"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime (e.g., nodejs18.x, python3.9)"
  type        = string
}

variable "filename" {
  description = "Path to the deployment package (ZIP file)"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for the Lambda function"
  type        = map(string)
  default     = {}
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}