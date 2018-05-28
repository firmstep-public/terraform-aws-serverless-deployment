# terraform-aws-serverless-deployment

# module deploy
Bundles a lambda function, and uploads it to an s3 bucket with a version tag as the path.
`{{s3_bucket_name}}/{{lambda_function_name}}/{{version}}/index.zip`

| Inputs                   | Default value | Description | Required |
|:------------------------:|:-------------:|:-----------:|:--------:|
| lambda_function_name 		 | | | |
| s3_bucket_name       		 | | | |
| function_version      	 | | | |
| auto_function_version    | | | |
| local_lambda_source_path | | | |
| local_lambda_zip_path    | | | |
|:------------------------:|:-------------:|:-----------:|:--------:|

# module release
Updates a lambda function and and api gateway to a specified version.

| Inputs                   | Default value | Description | Required |
|:------------------------:| | | |
| lambda_function_name 		 | | | |
| s3_bucket_name       		 | | | |
| function_version      	 | | | |
|:------------------------:|:-------------:|:-----------:|:--------:|