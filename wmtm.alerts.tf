# Alarms for Lambda Metrics for dev-a_us-east-1_wmtm-api_Plan####
resource "aws_cloudwatch_metric_alarm" "dev-a_us-east-1_wmtm-api_Plan-invocations_alarm" {
  alarm_name          = var.dev-a_us-east-1_wmtm-api_Plan-invocations_alarm_name
  metric_name         = "Invocations"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-a_us-east-1_wmtm-api_Plan"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-a_us-east-1_wmtm-api_Plan-errors_alarm" {
  alarm_name          = "dev-a_us-east-1_wmtm-api_Plan-errors-alarm"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-a_us-east-1_wmtm-api_Plan"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-a_us-east-1_wmtm-api_Plan-duration_alarm" {
  alarm_name          = "dev-a_us-east-1_wmtm-api_Plan-duration-alarm"
  metric_name         = "Duration"
  namespace           = "AWS/Lambda"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-a_us-east-1_wmtm-api_Plan"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-a_us-east-1_wmtm-api_Plan-throttles_alarm" {
  alarm_name          = "dev-a_us-east-1_wmtm-api_Plan-throttles-alarm"
  metric_name         = "Throttles"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-a_us-east-1_wmtm-api_Plan"
   }
}

# Alarms for Lambda Metrics for dev-b_us-east-1_wmtm-api_Plan####
resource "aws_cloudwatch_metric_alarm" "dev-b_us-east-1_wmtm-api_Plan-invocations_alarm" {
  alarm_name          = "dev-b_us-east-1_wmtm-api_Plan-invocations-alarm"
  metric_name         = "Invocations"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-b_us-east-1_wmtm-api_Plan"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-b_us-east-1_wmtm-api_Plan-errors_alarm" {
  alarm_name          = "dev-b_us-east-1_wmtm-api_Plan-errors-alarm"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-b_us-east-1_wmtm-api_Plan"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-b_us-east-1_wmtm-api_Plan-duration_alarm" {
  alarm_name          = "dev-b_us-east-1_wmtm-api_Plan-duration-alarm"
  metric_name         = "Duration"
  namespace           = "AWS/Lambda"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-b_us-east-1_wmtm-api_Plan"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-b_us-east-1_wmtm-api_Plan-throttles_alarm" {
  alarm_name          = "dev-b_us-east-1_wmtm-api_Plan-throttles-alarm"
  metric_name         = "Throttles"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-b_us-east-1_wmtm-api_Plan"
   }
}


# Alarms for Lambda Metrics for wm-database-dev_migrator####
resource "aws_cloudwatch_metric_alarm" "wm-database-dev_migrator-invocations_alarm" {
  alarm_name          = "wm-database-dev_migrator-invocations-alarm"
  metric_name         = "Invocations"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wm-database-dev_migrator"
  }
}

resource "aws_cloudwatch_metric_alarm" "wm-database-dev_migrator-errors_alarm" {
  alarm_name          = "wm-database-dev_migrator-errors-alarm"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wm-database-dev_migrator"
  }
}

resource "aws_cloudwatch_metric_alarm" "wm-database-dev_migrator-duration_alarm" {
  alarm_name          = "wm-database-dev_migrator-duration-alarm"
  metric_name         = "Duration"
  namespace           = "AWS/Lambda"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wm-database-dev_migrator"
  }
}

resource "aws_cloudwatch_metric_alarm" "wm-database-dev_migrator-throttles_alarm" {
  alarm_name          = "wm-database-dev_migrator-throttles-alarm"
  metric_name         = "Throttles"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wm-database-dev_migrator"
   }
}

# Alarms for Lambda Metrics fo dev-voltage-protect####
resource "aws_cloudwatch_metric_alarm" "dev-voltage-protect-invocations_alarm" {
  alarm_name          = "dev-voltage-protect-invocations-alarm"
  metric_name         = "Invocations"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-voltage-protect"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-voltage-protect-errors_alarm" {
  alarm_name          = "dev-voltage-protect-errors-alarm"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-voltage-protect"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-voltage-protect-duration_alarm" {
  alarm_name          = "dev-voltage-protect-duration-alarm"
  metric_name         = "Duration"
  namespace           = "AWS/Lambda"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-voltage-protect"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-voltage-protect-throttles_alarm" {
  alarm_name          = "dev-voltage-protect-throttles-alarm"
  metric_name         = "Throttles"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-voltage-protect"
   }
}

# Alarms for Lambda Metrics for dev-voltage-access####
resource "aws_cloudwatch_metric_alarm" "dev-voltage-access-invocations_alarm" {
  alarm_name          = "dev-voltage-access-invocations-alarm"
  metric_name         = "Invocations"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-voltage-access"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-voltage-access-errors_alarm" {
  alarm_name          = "dev-voltage-access-errors-alarm"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-voltage-access"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-voltage-access-duration_alarm" {
  alarm_name          = "dev-voltage-access-duration-alarm"
  metric_name         = "Duration"
  namespace           = "AWS/Lambda"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-voltage-access"
  }
}

resource "aws_cloudwatch_metric_alarm" "dev-voltage-access-throttles_alarm" {
  alarm_name          = "dev-voltage-access-throttles-alarm"
  metric_name         = "Throttles"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "dev-voltage-access"
   }
}

# API Gateway Alarms
#wmtm-api-us-east-1-dev-a

# High number of requests (monitoring traffic volume)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-a_high_request_count" {
  alarm_name          = "wmtm-api-us-east-1-dev-a-high-request-count"
  metric_name         = "Count"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 10000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-a"
  }
}

# 5XX Error Rate (Server-side errors)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-a_5xx_error_rate" {
  alarm_name          = "wmtm-api-us-east-1-dev-a-5xx-error-rate"
  metric_name         = "5XXError"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 10
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-a"
  }
}

# 4XX Error Rate (Client-side errors)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-a_4xx_error_rate" {
  alarm_name          = "wmtm-api-us-east-1-dev-a-4xx-error-rate"
  metric_name         = "4XXError"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 50
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-a"
  }
}

# High Latency (Slow API responses)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-a_high_latency" {
  alarm_name          = "wmtm-api-us-east-1-dev-a-high-latency"
  metric_name         = "Latency"
  namespace           = "AWS/ApiGateway"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 2000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-a"
  }
}

# Integration Latency (Backend processing time)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-a_integration_latency" {
  alarm_name          = "wmtm-api-us-east-1-dev-a-integration-latency"
  metric_name         = "IntegrationLatency"
  namespace           = "AWS/ApiGateway"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1500
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-a"
  }
}

# Throttling (Too many requests hitting rate limits)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-a_throttling_count" {
  alarm_name          = "wmtm-api-us-east-1-dev-a-throttling-count"
  metric_name         = "ThrottleCount"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 5
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-a"
  }
}

# Cache Hit Rate (Monitoring API cache performance)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-a_cache_hit_rate_low" {
  alarm_name          = "wmtm-api-us-east-1-dev-a-cache-hit-rate-low"
  metric_name         = "CacheHitCount"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 10
  comparison_operator = "LessThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-a"
  }
}

# Cache Miss Rate (High number of cache misses)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-a_cache_miss_rate_high" {
  alarm_name          = "wmtm-api-us-east-1-dev-a-cache-miss-rate-high"
  metric_name         = "CacheMissCount"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 50
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-a"
  }
}


# API Gateway Alarms
#wmtm-api-us-east-1-dev-b

# High number of requests (monitoring traffic volume)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-b_high_request_count" {
  alarm_name          = "wmtm-api-us-east-1-dev-b-high-request-count"
  metric_name         = "Count"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 10000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-b"
  }
}

# 5XX Error Rate (Server-side errors)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-b_5xx_error_rate" {
  alarm_name          = "wmtm-api-us-east-1-dev-b-5xx-error-rate"
  metric_name         = "5XXError"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 10
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-b"
  }
}

# 4XX Error Rate (Client-side errors)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-b_4xx_error_rate" {
  alarm_name          = "wmtm-api-us-east-1-dev-b-4xx-error-rate"
  metric_name         = "4XXError"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 50
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-b"
  }
}

# High Latency (Slow API responses)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-b_high_latency" {
  alarm_name          = "wmtm-api-us-east-1-dev-b-high-latency"
  metric_name         = "Latency"
  namespace           = "AWS/ApiGateway"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 2000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-b"
  }
}

# Integration Latency (Backend processing time)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-b_integration_latency" {
  alarm_name          = "wmtm-api-us-east-1-dev-b-integration-latency"
  metric_name         = "IntegrationLatency"
  namespace           = "AWS/ApiGateway"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1500
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-b"
  }
}

# Throttling (Too many requests hitting rate limits)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-b_throttling_count" {
  alarm_name          = "wmtm-api-us-east-1-dev-b-throttling-count"
  metric_name         = "ThrottleCount"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 5
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-b"
  }
}

# Cache Hit Rate (Monitoring API cache performance)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-b_cache_hit_rate_low" {
  alarm_name          = "wmtm-api-us-east-1-dev-b-cache-hit-rate-low"
  metric_name         = "CacheHitCount"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 10
  comparison_operator = "LessThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-b"
  }
}

# Cache Miss Rate (High number of cache misses)
resource "aws_cloudwatch_metric_alarm" "wmtm-api-us-east-1-dev-b_cache_miss_rate_high" {
  alarm_name          = "wmtm-api-us-east-1-dev-b-cache-miss-rate-high"
  metric_name         = "CacheMissCount"
  namespace           = "AWS/ApiGateway"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 50
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    ApiName = "wmtm-api-us-east-1-dev-b"
  }
}


# # API Gateway Alarms
# #dev-WMTM-wmtm-migrator-gateway

# # High number of requests (monitoring traffic volume)
# resource "aws_cloudwatch_metric_alarm" "dev-WMTM-wmtm-migrator-gateway_high_request_count" {
#   alarm_name          = "dev-WMTM-wmtm-migrator-gateway-high-request-count"
#   metric_name         = "Count"
#   namespace           = "AWS/ApiGateway"
#   statistic           = "Sum"
#   period              = 300
#   evaluation_periods  = 1
#   threshold           = 10000
#   comparison_operator = "GreaterThanThreshold"
#   alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

#   dimensions = {
#     ApiName = "dev-WMTM-wmtm-migrator-gateway"
#   }
# }

# # 5XX Error Rate (Server-side errors)
# resource "aws_cloudwatch_metric_alarm" "dev-WMTM-wmtm-migrator-gateway_5xx_error_rate" {
#   alarm_name          = "dev-WMTM-wmtm-migrator-gateway-5xx-error-rate"
#   metric_name         = "5XXError"
#   namespace           = "AWS/ApiGateway"
#   statistic           = "Sum"
#   period              = 300
#   evaluation_periods  = 1
#   threshold           = 10
#   comparison_operator = "GreaterThanThreshold"
#   alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

#   dimensions = {
#     ApiName = "dev-WMTM-wmtm-migrator-gateway"
#   }
# }

# # 4XX Error Rate (Client-side errors)
# resource "aws_cloudwatch_metric_alarm" "dev-WMTM-wmtm-migrator-gateway_4xx_error_rate" {
#   alarm_name          = "dev-WMTM-wmtm-migrator-gateway-4xx-error-rate"
#   metric_name         = "4XXError"
#   namespace           = "AWS/ApiGateway"
#   statistic           = "Sum"
#   period              = 300
#   evaluation_periods  = 1
#   threshold           = 50
#   comparison_operator = "GreaterThanThreshold"
#   alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

#   dimensions = {
#     ApiName = "dev-WMTM-wmtm-migrator-gateway"
#   }
# }

# # High Latency (Slow API responses)
# resource "aws_cloudwatch_metric_alarm" "dev-WMTM-wmtm-migrator-gateway_high_latency" {
#   alarm_name          = "dev-WMTM-wmtm-migrator-gateway-high-latency"
#   metric_name         = "Latency"
#   namespace           = "AWS/ApiGateway"
#   statistic           = "Average"
#   period              = 300
#   evaluation_periods  = 1
#   threshold           = 2000
#   comparison_operator = "GreaterThanThreshold"
#   alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

#   dimensions = {
#     ApiName = "dev-WMTM-wmtm-migrator-gateway"
#   }
# }

# # Integration Latency (Backend processing time)
# resource "aws_cloudwatch_metric_alarm" "dev-WMTM-wmtm-migrator-gateway_integration_latency" {
#   alarm_name          = "dev-WMTM-wmtm-migrator-gateway-integration-latency"
#   metric_name         = "IntegrationLatency"
#   namespace           = "AWS/ApiGateway"
#   statistic           = "Average"
#   period              = 300
#   evaluation_periods  = 1
#   threshold           = 1500
#   comparison_operator = "GreaterThanThreshold"
#   alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

#   dimensions = {
#     ApiName = "dev-WMTM-wmtm-migrator-gateway"
#   }
# }

# # Throttling (Too many requests hitting rate limits)
# resource "aws_cloudwatch_metric_alarm" "dev-WMTM-wmtm-migrator-gateway_throttling_count" {
#   alarm_name          = "dev-WMTM-wmtm-migrator-gateway-throttling-count"
#   metric_name         = "ThrottleCount"
#   namespace           = "AWS/ApiGateway"
#   statistic           = "Sum"
#   period              = 300
#   evaluation_periods  = 1
#   threshold           = 5
#   comparison_operator = "GreaterThanThreshold"
#   alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

#   dimensions = {
#     ApiName = "dev-WMTM-wmtm-migrator-gateway"
#   }
# }

# # Cache Hit Rate (Monitoring API cache performance)
# resource "aws_cloudwatch_metric_alarm" "dev-WMTM-wmtm-migrator-gateway_cache_hit_rate_low" {
#   alarm_name          = "dev-WMTM-wmtm-migrator-gateway-cache-hit-rate-low"
#   metric_name         = "CacheHitCount"
#   namespace           = "AWS/ApiGateway"
#   statistic           = "Sum"
#   period              = 300
#   evaluation_periods  = 1
#   threshold           = 10
#   comparison_operator = "LessThanThreshold"
#   alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

#   dimensions = {
#     ApiName = "dev-WMTM-wmtm-migrator-gateway"
#   }
# }

# # Cache Miss Rate (High number of cache misses)
# resource "aws_cloudwatch_metric_alarm" "dev-WMTM-wmtm-migrator-gateway_cache_miss_rate_high" {
#   alarm_name          = "dev-WMTM-wmtm-migrator-gateway-cache-miss-rate-high"
#   metric_name         = "CacheMissCount"
#   namespace           = "AWS/ApiGateway"
#   statistic           = "Sum"
#   period              = 300
#   evaluation_periods  = 1
#   threshold           = 50
#   comparison_operator = "GreaterThanThreshold"
#   alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

#   dimensions = {
#     ApiName = "dev-WMTM-wmtm-migrator-gateway"
#   }
# }
