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
