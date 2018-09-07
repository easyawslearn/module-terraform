variable "queue_name" {
  type = "string"
}

variable "visibility_timeout_seconds" {
  description = "The length of time (in seconds) that a message received from a queue will be invisible to other receiving components"
  default     = "30"
}

variable "delay_seconds" {
  description = "The amount of time to delay the first delivery of all messages added to this queue"
  default     = "0"
}

variable "receive_wait_time_seconds" {
  description = "The maximum amount of time that a long polling receive call will wait for a message to become available before returning an empty response"
  default     = "20"
}

variable "dlq_arn" {
  description = "ARN of DLQ to associate with SQS"
  default     = ""
}

variable "max_receive_count" {
  description = "The maximum number of times a message can be received before it is sent to the Dead Letter Queue"
  default     = "5"
}

variable "owner" {
  default     = "xgemail"
  description = "An owner tag to tag resources with."
}

variable "message_retention_seconds" {
  description = "Time before messages are deleted if not processed."
  default     = "345600"
}

variable "max_message_size" {
  description = "Max message size."
  default     = "262144"
}
