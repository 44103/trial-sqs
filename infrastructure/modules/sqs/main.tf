resource "aws_sqs_queue" "default" {
  name = local.name
}
