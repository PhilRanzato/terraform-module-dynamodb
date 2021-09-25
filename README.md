# terraform-module-dynamodb

This Terraform module provisions a DynamoDB table on AWS.

## Usage

```
terraform {
  backend "s3" {
    bucket = "bucket-name"
    key    = "bucket-file"
    region = "us-east-2"
  }
}

module "dynamodb_table" {
  source = "github.com/PhilRanzato/terraform-module-dynamodb"

  region = "us-east-2"

  dynamodb_table_name = "table_example"
  dynamodb_table_hash_key = "id"
  dynamodb_table_hash_key_type = "N"
  dynamodb_table_billing_mode = "PROVISIONED"
  dynamodb_table_read_capacity = 20
  dynamodb_table_write_capacity = 20
}
```

## Input Variables

```yaml
region: string # AWS region to use
access_key: string # AWS Access Key ID
secret_key: string # AWS Secret Access Key
dynamodb_table_name: string # DynamoDB name of the table to provision
dynamodb_table_hash_key: string # DynamoDB partition key of the table to provision
dynamodb_table_hash_key_type: string # DynamoDB type of the partition key of the table to provision
dynamodb_table_billing_mode: string # DynamoDB table billing mode: PROVISIONED or PAY_PER_REQUEST
dynamodb_table_read_capacity: number # DynamoDB table read capacity
dynamodb_table_write_capacity: number # DynamoDB table write capacity
```

## Output Variables

```
output "dynamodb-table-arn" {
  value = aws_dynamodb_table.table.arn
}
```