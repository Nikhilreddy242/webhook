environment = "dev"

lambda_functions = [
  "dev-a_us-east-1_wmtm-api_Plan",
  "dev-b_us-east-1_wmtm-api_Plan",
  "wm-database-dev_migrator",
  "dev-voltage-protect",
  "dev-voltage-access"
]

api_gateway_apis = [
  "wmtm-api-us-east-1-dev-a"
]

alarm_actions = ["arn:aws:sns:us-east-1:123456789012:alarm-notifications"]

lambda_metrics = [
  { name = "Invocations", statistic = "Sum", period = 300, evaluation_periods = 1, threshold = 1, comparison_operator = "GreaterThanThreshold" },
  { name = "Errors", statistic = "Sum", period = 300, evaluation_periods = 1, threshold = 1, comparison_operator = "GreaterThanThreshold" },
  { name = "Duration", statistic = "Average", period = 300, evaluation_periods = 1, threshold = 1000, comparison_operator = "GreaterThanThreshold" },
  { name = "Throttles", statistic = "Sum", period = 300, evaluation_periods = 1, threshold = 1, comparison_operator = "GreaterThanThreshold" }
]

api_gateway_metrics = [
  { name = "Count", statistic = "Sum", period = 300, evaluation_periods = 1, threshold = 10000, comparison_operator = "GreaterThanThreshold" },
  { name = "5XXError", statistic = "Sum", period = 300, evaluation_periods = 1, threshold = 10, comparison_operator = "GreaterThanThreshold" },
  { name = "4XXError", statistic = "Sum", period = 300, evaluation_periods = 1, threshold = 50, comparison_operator = "GreaterThanThreshold" },
  { name = "Latency", statistic = "Average", period = 300, evaluation_periods = 1, threshold = 2000, comparison_operator = "GreaterThanThreshold" },
  { name = "IntegrationLatency", statistic = "Average", period = 300, evaluation_periods = 1, threshold = 1500, comparison_operator = "GreaterThanThreshold" },
  { name = "ThrottleCount", statistic = "Sum", period = 300, evaluation_periods = 1, threshold = 5, comparison_operator = "GreaterThanThreshold" }
]
