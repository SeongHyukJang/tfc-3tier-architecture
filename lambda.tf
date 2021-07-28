resource "aws_lambda_function" "log_lambda" {
    filename = "lambda_function.zip"
    function_name = "70491-lambda"
    role = aws_iam_role.lambda_role.arn

    runtime = "python3.7"

    source_code_hash = filebase64sha256("lambda_function.zip")

  #   environment {
  #   variables = {
  #     S3_BUCKET = "70491-log-bucket"
  #   }
  # }
}