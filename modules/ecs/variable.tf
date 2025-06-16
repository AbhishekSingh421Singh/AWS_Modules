variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "example-ecs-cluster"
}

variable "task_family" {
  description = "Family name of the ECS task definition"
  type        = string
  default     = "example-task"
}

variable "container_name" {
  description = "Name of the container"
  type        = string
  default     = "example-container"
}

variable "container_image" {
  description = "Docker image for the container"
  type        = string
  default     = "nginx"
}

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
  default     = "example-service"
}

variable "cpu" {
  description = "CPU units for the task"
  type        = string
  default     = "256"
}

variable "memory" {
  description = "Memory for the task"
  type        = string
  default     = "512"
}

variable "desired_count" {
  description = "Number of desired tasks"
  type        = number
  default     = 1
}