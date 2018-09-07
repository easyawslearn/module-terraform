output "queue_id" {
  description = "The URL for the created Amazon SQS queue"
  value       = "${aws_sqs_queue.default.id}"
}

output "queue_name" {
  description = "The name for the created Amazon SQS queue"
  value       = "${aws_sqs_queue.default.name}"
}

output "queue_arn" {
  description = "The ARN of the SQS queue"
  value       = "${aws_sqs_queue.default.arn}"
}

output "send_policy" {
  description = "ARN for a send policy to the queue."
  value       = "${aws_iam_policy.sqs_iam_send_policy.arn}"
}

output "process_policy" {
  description = "ARN for a read/delete policy to the queue."
  value       = "${aws_iam_policy.sqs_iam_process_policy.arn}"
}
