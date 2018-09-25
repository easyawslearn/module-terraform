resource "aws_sqs_queue" "default" {
  name                       = "${var.queue_name}"
  visibility_timeout_seconds = "${var.visibility_timeout_seconds}"
  delay_seconds              = "${var.delay_seconds}"
  receive_wait_time_seconds  = "${var.receive_wait_time_seconds}"
  message_retention_seconds  = "${var.message_retention_seconds}"
  max_message_size           = "${var.max_message_size}"

  redrive_policy = "${var.dlq_arn !="" ? "{\"deadLetterTargetArn\":\"${var.dlq_arn}\",\"maxReceiveCount\":${var.max_receive_count}}" : ""}"

  tags {
    owner = "${var.owner}"
  }
}

resource "aws_iam_policy" "sqs_iam_send_policy" {
  name   = "${var.queue_name}-iam-send-policy"
  path   = "/"
  policy = "${data.aws_iam_policy_document.sqs_iam_send_policy.json}"
}

resource "aws_iam_policy" "sqs_iam_process_policy" {
  name   = "${var.queue_name}-iam-process-policy"
  path   = "/"
  policy = "${data.aws_iam_policy_document.sqs_iam_process_policy.json}"
}
