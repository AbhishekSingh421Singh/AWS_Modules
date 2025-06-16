variable "log_group_name" {
  description = "Name of the CloudWatch log group"
  type        = string
  default     = "/aws/lambda/example-log-group"
}

variable "alarm_name" {
  description = "Name of the CloudWatch alarm"
  type        = string
  default     = "HighErrorRate"
}

variable "metric_name" {
  description = "Name of the metric to monitor"
  type        = string
  default     = "Errors"
}

variable "namespace" {
  description = "Namespace of the metric"
  type        = string
  default     = "AWS/Lambda"
}

variable "threshold" {
  description = "Threshold for the alarm"
  type        = number
  default     = 1
}

variable "evaluation_periods" {
  description = "Number of periods to evaluate"
  type        = number
  default     = 1
}

variable "period" {
  description = "Period in seconds over which the specified statistic is applied"
  type        = number
  default     = 300
}

variable "comparison_operator" {
  description = "Comparison operator for the alarm"
  type        = string
  default     = "GreaterThanOrEqualToThreshold"
}