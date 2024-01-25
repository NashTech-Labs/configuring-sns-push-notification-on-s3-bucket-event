data "aws_iam_policy_document" "sns_topic_policy" {
 statement {
   sid      = "AllowS3BucketToPublish"
   effect   = "Allow"
   actions  = ["SNS:Publish"]
   resources = [aws_sns_topic.user_updates.arn]

   principals {
     type       = "Service"
     identifiers = ["s3.amazonaws.com"]
   }

   condition {
     test    = "ArnLike"
     variable = "aws:SourceArn"
     values  = [aws_s3_bucket.example.arn]
   }
 }
}
