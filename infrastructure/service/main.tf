data "aws_caller_identity" "_" {}

module "lambda" {
  source  = "../modules/lambda"
  commons = local.commons
  name    = "process"
}
