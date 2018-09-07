output "queuename" {
  value = "${module.test-sqs-queue.queue_name}"
}

output "queuearn" {
  value = "${module.test-sqs-queue.queue_arn}"
}
