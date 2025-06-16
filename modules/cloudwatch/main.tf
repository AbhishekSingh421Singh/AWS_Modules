resource "aws_cloudwatch_log_group" "example" {
  name = var.log_group_name
}

resource "aws_cloudwatch_metric_alarm" "example" {
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  metric_name         = var.metric_name
  namespace           = var.namespace
  period              = var.period
  statistic           = "Sum"
  threshold           = var.threshold
  alarm_description   = "This metric monitors Lambda errors"
  actions_enabled     = false
}