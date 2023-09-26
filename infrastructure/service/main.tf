data "aws_caller_identity" "_" {}

module "lambda" {
  source  = "../modules/lambda"
  commons = local.commons
  name    = "process"
  policy_statements = [
    {
      "Effect" : "Allow",
      "Action" : [
        "sqs:ReceiveMessage",
        "sqs:DeleteMessage",
        "sqs:GetQueueAttributes",
      ],
      "Resource" : "*"
    }
  ]
}

module "sqs" {
  source  = "../modules/sqs"
  commons = local.commons
  name    = "message"
  lambda  = module.lambda
}
