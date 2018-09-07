variable "owner" {
  description = "An owner tag to tag resources with."
  default     = "test"
}

variable "region" {
  description = "The AWS region to create resources in."
  default     = "eu-west-1"
}

variable "visibility_timeout_seconds" {
  default = "120"
}
