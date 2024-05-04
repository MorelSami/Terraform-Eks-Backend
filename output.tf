
output "backend_resource_info" {
  value = {
    s3_bucket_arn       = aws_s3_bucket.terraform_state.arn
    dynamodb_table_name = aws_dynamodb_table.terraform_state.name
  }
  description = "Backend resources general information"
}
