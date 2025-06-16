variable "sns_topic_name" {
  description = "Name of the SNS topic"
  type        = string
  default     = "example-topic"
}

variable "email_address" {
  description = "Email address to subscribe to the SNS topic"
  type        = string
  default     = "user@example.com"
}