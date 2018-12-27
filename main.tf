provider "aws" {
  region = "${var.region}"
}

resource "aws_cloudwatch_metric_alarm" "testing" {
  alarm_name                = "CPU_util_testing"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "CPUUtilization"             
  namespace                 = "AWS/EC2"
  period                    = "300"                          #time period in seconds   
  statistic                 = "Average"
  threshold                 = "${var.threshold_percentage}"  #thresold percentage value 
  alarm_description         = "This metric monitors ec2 cpu utilization"
  alarm_actions             = ["${var.sns_topic}"]           #the arn of the topic 
  dimensions {
      InstanceId = "${var.InstanceId}"
             }
}       