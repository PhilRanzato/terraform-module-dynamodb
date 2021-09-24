variable "region" {
  type = string
  default = "us-east-2"
  description = "AWS region name"
}

variable "access_key" {
  type = string
  default = ""
  description = "AWS Access Key ID"
}

variable "secret_key" {
  type = string
  default = ""
  description = "AWS Secret Access Key"
}

variable "dynamodb_table_name" {
  type        = string
  description = "DynamoDB table name"
  default     = "table"
}

variable "dynamodb_table_hash_key" {
  type        = string
  description = "DynamoDB table partition key"
  default     = "hashkey"
}

variable "dynamodb_table_hash_key_type" {
  type        = string
  description = "DynamoDB table partition key type (S, N, B - String, Number, Binary)"
  default     = "S"
}

variable "dynamodb_table_billing_mode" {
  type        = string
  description = "DynamoDB table billing mode: Controls how you are charged for read and write throughput and how you manage capacity"
  default     = "PROVISIONED"
}

variable "dynamodb_table_read_capacity" {
  type        = number
  description = "The number of read units for this table"
  default     = 20
}

variable "dynamodb_table_write_capacity" {
  type        = number
  description = "The number of write units for this table"
  default     = 20
}
