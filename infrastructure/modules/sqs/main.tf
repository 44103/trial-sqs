resource "aws_sqs_queue" "_" {
  name = local.name
}

resource "aws_lambda_event_source_mapping" "_" {
  event_source_arn = aws_sqs_queue._.arn
  function_name    = var.lambda.function.arn
}
