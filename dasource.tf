data "aws_iam_policy_document" "sqs_iam_send_policy" {
  statement {
    actions = [
      "sqs:GetQueueAttributes",
      "sqs:GetQueueUrl",
      "sqs:ListDeadLetterSourceQueues",
      "sqs:SendMessage",
    ]

    resources = [
      "${aws_sqs_queue.default.arn}",
    ]
  }
}

data "aws_iam_policy_document" "sqs_iam_process_policy" {
  statement {
    actions = [
      "sqs:ChangeMessageVisibility",
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:GetQueueUrl",
      "sqs:ListDeadLetterSourceQueues",
      "sqs:ReceiveMessage",
    ]

    resources = [
      "${aws_sqs_queue.default.arn}",
    ]
  }
}
