resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-aayush"
}

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.example.bucket

  topic {
    topic_arn = aws_sns_topic.user_updates.arn
    events    = ["s3:ObjectCreated:*"]
  }

  depends_on = [aws_sns_topic_policy.sns_topic_policy]
}
