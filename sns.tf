

resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}

resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.user_updates.arn
  protocol  = "email"
  endpoint  = "aayush07bisht@gmail.com"
}

resource "aws_sns_topic_policy" "sns_topic_policy" {
  arn    = aws_sns_topic.user_updates.arn
  policy = data.aws_iam_policy_document.sns_topic_policy.json
  depends_on = [aws_s3_bucket.example, aws_sns_topic.user_updates]
}


