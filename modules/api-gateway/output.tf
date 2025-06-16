output "api_id" {
  value = aws_api_gateway_rest_api.this.id
}

output "api_endpoint" {
  value = aws_api_gateway_rest_api.this.execution_arn
}