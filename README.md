# Central SQS Terraform Module


## Overview

Terraform Template to configure an SQS queue

## Variables

**queue_name**: (String) the unique name to use in constructing the queue name

**visibility_timeout_seconds** (String) (Optional, default 30) The length of time (in seconds) that a message received from a queue will be invisible to other receiving components

**delay_seconds** (String) (Optional, default 0) The amount of time to delay the first delivery of all messages added to this queue

**receive_wait_time_seconds** (String) (Optional, default 20) The maximum amount of time that a long polling receive call will wait for a message to become available before returning an empty response

**dlq_arn** (String) (Optional)  ARN of dead letter queue to associate with SQS

**max_receive_count** (String) (Optional, default 5) The maximum number of times a message can be received before it is sent to the Dead Letter Queue



## Outputs

**queue_id**: The URL for the created Amazon SQS queue

**queue_arn**: The ARN of the SQS queue

**send_policy**: ARN for a send policy to the queue

**process_policy**: ARN for a read/delete policy to the queue


## Example

####application/terraform/main.tf

~~~~
module "custom_sqs" {
  source            = "git::https://github.com/Patelvijaykumar/module-terraform.git"
  queue_name        = "my-service-custom"
  owner             = "my-group"
}
~~~~
