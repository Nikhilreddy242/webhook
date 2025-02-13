variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "lambda_functions" {
  description = "List of Lambda function names to create alarms for"
  type        = list(string)
}

variable "api_gateway_apis" {
  description = "List of API Gateway API names to create alarms for"
  type        = list(string)
}

variable "alarm_actions" {
  description = "List of SNS topic ARNs to trigger on alarms"
  type        = list(string)
}

variable "lambda_metrics" {
  description = "List of CloudWatch metrics for Lambda"
  type = list(object({
    name               = string
    statistic          = string
    period             = number
    evaluation_periods = number
    threshold          = number
    comparison_operator = string
  }))
}

variable "api_gateway_metrics" {
  description = "List of CloudWatch metrics for API Gateway"
  type = list(object({
    name               = string
    statistic          = string
    period             = number
    evaluation_periods = number
    threshold          = number
    comparison_operator = string
  }))
}
