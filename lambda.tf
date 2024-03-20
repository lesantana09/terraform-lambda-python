data "archive_file" "python_lambda_package" {
  output_path = "nametest.zip"
  type        = "zip"
  source_file = "${local.lambdas_path}/lambda_function.py"
}


resource "aws_lambda_function" "test_lambda_function" {
  function_name = "lambdaTest"
  handler       = "lambda_function.lambda_handler"
  layers        = [aws_lambda_layer_version.lambda_layer.arn]
  role          = aws_iam_role.lambda_role.arn
  runtime       = "python3.11"

  filename         = data.archive_file.python_lambda_package.output_path
  source_code_hash = data.archive_file.python_lambda_package.output_base64sha256

  timeout     = 10
  memory_size = 128

    tracing_config {
    mode = "Active"
  }
}

