variable "commons" {}
variable "name" {
  description = "resource name"
}
variable "lambda" {}

locals {
  name = join("_", [
    var.commons.workspace,
    var.name,
    var.commons.service,
    var.commons.project
  ])
}
