provider "aws" {
region = "us-east-1"
 }

variable "lambda_local_path" {
  description = "(Optional) The full local path to the latest lambda function, to be zipped."
  default = ""
}

variable "lambda_local_zip" {
  description "(Optional) The full path to the local pre-zipped lambda function."
}

variable "lambda_version" {
  description = "Version Tag to give this function."
  default = "v1.0.0"
}


data "archive_file" "lambda_update_parameter_store" {
  type        = "zip"
  source_file = "${path.module}/lambda/lambda-update-parameter-store.py"
  output_path = "${path.module}/lambda/lambda-update-parameter-store.zip"
}