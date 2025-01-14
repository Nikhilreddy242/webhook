# Alarms for Lambda Metrics
resource "aws_cloudwatch_metric_alarm" "invocations_alarm" {
  alarm_name          = "lambda-invocations-alarm"
  metric_name         = "Invocations"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-api-lambda"
  }
}

resource "aws_cloudwatch_metric_alarm" "errors_alarm" {
  alarm_name          = "lambda-errors-alarm"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-api-lambda"
  }
}

resource "aws_cloudwatch_metric_alarm" "duration_alarm" {
  alarm_name          = "lambda-duration-alarm"
  metric_name         = "Duration"
  namespace           = "AWS/Lambda"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 3000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-api-lambda"
  }
}

resource "aws_cloudwatch_metric_alarm" "throttles_alarm" {
  alarm_name          = "lambda-throttles-alarm"
  metric_name         = "Throttles"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 5
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-api-lambda"
   }
}


# Alarms for Lambda Metrics
resource "aws_cloudwatch_metric_alarm" "wmtm_migrator_lambda_invocations_alarm" {
  alarm_name          = "wmtm-migrator-lambda-invocations-alarm"
  metric_name         = "Invocations"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-migrator-lambda"
  }
}

resource "aws_cloudwatch_metric_alarm" "wmtm_migrator_lambda_errors_alarm" {
  alarm_name          = "wmtm-migrator-lambda-errors-alarm"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-migrator-lambda"
  }
}

resource "aws_cloudwatch_metric_alarm" "wmtm_migrator_lambda_duration_alarm" {
  alarm_name          = "wmtm-migrator-lambda-duration-alarm"
  metric_name         = "Duration"
  namespace           = "AWS/Lambda"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 3000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-migrator-lambda"
  }
}

resource "aws_cloudwatch_metric_alarm" "wmtm_migrator_lambda_throttles_alarm" {
  alarm_name          = "wmtm-migrator-lambda-throttles-alarm"
  metric_name         = "Throttles"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 5
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-migrator-lambda"
   }
}

## for sql-migration
# Alarms for Lambda Metrics
resource "aws_cloudwatch_metric_alarm" "wmtm_api_lambda_sql_migration_invocations_alarm" {
  alarm_name          = "wmtm-api-lambda-sql-migration-invocations-alarm"
  metric_name         = "Invocations"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-api-lambda-sql-migration"
  }
}

resource "aws_cloudwatch_metric_alarm" "wmtm_api_lambda_sql_migration_errors_alarm" {
  alarm_name          = "wmtm-api-lambda-sql-migration-errors-alarm"
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 1
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-api-lambda-sql-migration"
  }
}

resource "aws_cloudwatch_metric_alarm" "wmtm_api_lambda_sql_migration_duration_alarm" {
  alarm_name          = "wmtm-api-lambda-sql-migration-duration-alarm"
  metric_name         = "Duration"
  namespace           = "AWS/Lambda"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 3000
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-api-lambda-sql-migration"
  }
}

resource "aws_cloudwatch_metric_alarm" "wmtm_api_lambda_sql_migration_throttles_alarm" {
  alarm_name          = "wmtm-api-lambda-sql-migration-throttles-alarm"
  metric_name         = "Throttles"
  namespace           = "AWS/Lambda"
  statistic           = "Sum"
  period              = 300
  evaluation_periods  = 1
  threshold           = 5
  comparison_operator = "GreaterThanThreshold"
  alarm_actions       = [aws_sns_topic.alarm_notifications.arn]

  dimensions = {
    FunctionName = "wmtm-api-lambda-sql-migration"
   }
}
