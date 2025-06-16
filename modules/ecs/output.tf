output "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  value       = aws_ecs_cluster.example.name
}

output "ecs_service_name" {
  description = "The name of the ECS service"
  value       = aws_ecs_service.example.name
}

output "task_definition_arn" {
  description = "The ARN of the ECS task definition"
  value       = aws_ecs_task_definition.example.arn
}