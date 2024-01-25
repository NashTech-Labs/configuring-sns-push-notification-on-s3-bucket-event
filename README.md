# AWS S3 Bucket with SNS Notification

This Terraform script sets up an AWS S3 bucket and an SNS topic for user updates. When a new object is created in the S3 bucket, an email notification is sent to the specified address.

## Prerequisites

- **Terraform:** Ensure it's installed.
- **AWS Credentials:** Set up AWS credentials.

## Usage

1. **Clone the Repository:**
    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Update Configuration:**
    Open `main.tf` and replace `"aayush07bisht@gmail.com"` with your email address in the `aws_sns_topic_subscription` section.

3. **Run Terraform:**
    ```bash
    terraform init
    terraform apply
    ```

4. **Clean Up (Optional):**
    ```bash
    terraform destroy
    ```

## Resources Created

- **S3 Bucket:**
    - Name: `my-tf-test-bucket-aayush`

- **S3 Bucket Notification:**
    - Triggers SNS notifications on new object creation.

- **SNS Topic:**
    - Name: `user-updates-topic`

- **SNS Topic Subscription:**
    - Email: `"aayush07bisht@gmail.com"`

- **SNS Topic Policy:**
    - Allows S3 to publish messages to the SNS topic.

## Notes

- Ensure Terraform and AWS CLI are configured.
- Update AWS credentials and configurations in `main.tf` as needed.


