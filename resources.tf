resource "aws_dynamodb_table" "table" {
  name             = var.dynamodb_table_name
  hash_key         = var.dynamodb_table_hash_key

  attribute {
    name = var.dynamodb_table_hash_key
    type = var.dynamodb_table_hash_key_type
  }
}
