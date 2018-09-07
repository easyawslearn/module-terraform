provider "aws" {
  region = "${var.region}"
}

terraform {
  required_version = "> 0.10.0"
}

locals {
  my-queue-name = "INService"
}

module "test-sqs-dlq" {
  source = "modules/sqs/"

  queue_name                 = "${local.my-queue-name}-DLQ"
  owner                      = "${var.owner}"
  visibility_timeout_seconds = "${var.visibility_timeout_seconds}"
}

module "test-sqs-queue" {
  source = "modules/sqs/"

  queue_name                 = "${local.my-queue-name}"
  owner                      = "${var.owner}"
  dlq_arn                    = "${module.test-sqs-dlq.queue_arn}"
  visibility_timeout_seconds = "${var.visibility_timeout_seconds}"
}
