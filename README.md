# CloudWatchalarm_EC2_CPUutilization
1. A simple reusable Terraform code on creating a CloudWatch alarm based on the threshold of CPU utilization in an EC2 instance.

2. This Terraform script takes instance id, SNS topic ARN, and threshold percentage as input and lets you create a CloudWatch alarm based on that.

3. The above 3 input values can be declared in a separate variable file (eg: varfile.tfvars) and 'terraform plan' OR 'terraform apply' commands can be executed in one go, without having to input the values of instance ID and SNS topic ARN one by one.

4. Kindly share your valuable suggestions here.
