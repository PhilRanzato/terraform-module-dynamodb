resource "aws_dynamodb_table" "table" {
  name             = var.dynamodb_table_name
  hash_key         = var.dynamodb_table_hash_key
  billing_mode     = var.dynamodb_table_billing_mode
  read_capacity    = var.dynamodb_table_read_capacity
  write_capacity   = var.dynamodb_table_write_capacity

  attribute {
    name = var.dynamodb_table_hash_key
    type = var.dynamodb_table_hash_key_type
  }
}
