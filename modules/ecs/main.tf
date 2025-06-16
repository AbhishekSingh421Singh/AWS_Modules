resource "aws_ecs_cluster" "example" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "example" {
  family                   = var.task_family
  requires_compatibilities = ["FARGATE"]
  network_mode            = "awsvpc"
  cpu                     = var.cpu
  memory                  = var.memory
  execution_role_arn      = "arn:aws:iam::YOUR_ACCOUNT_ID:role/ecsTaskExecutionRole"

  container_definitions = jsonencode([
    {
      name      = var.container_name
      image     = var.container_image
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "example" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.example.id
  task_definition = aws_ecs_task_definition.example.arn
  desired_count   = var.desired_count
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = ["subnet-xxxxxxxx"]  # Replace with your subnet IDs
    security_groups = ["sg-xxxxxxxx"]      # Replace with your security group IDs
    assign_public_ip = true
  }
}