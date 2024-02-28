

resource "aws_sns_topic" "autoscaling_notifications" {
  name = "autoscaling-notifications"
  //kms_master_key_id = aws_kms_key.sns_key.arn

}

 
/*
resource "aws_sns_topic_subscription" "autoscaling_notifications_email" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "jremo25@outlook.com"
}

 

resource "aws_sns_topic_subscription" "autoscaling_notifications_email_2" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "cgilber92@gmail.com"

}

resource "aws_sns_topic_subscription" "autoscaling_notifications_email_4" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "kevinwhitaker30@gmail.com"

}

 

resource "aws_sns_topic_subscription" "autoscaling_notifications_email_5" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "teddyromulus@gmail.com"

}

resource "aws_sns_topic_subscription" "autoscaling_notifications_email_6" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "jiohdee@gmail.com"


}

resource "aws_sns_topic_subscription" "autoscaling_notifications_email_7" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "bhreedmsu@gmail.com"
}
 
resource "aws_sns_topic_subscription" "autoscaling_notifications_email_8" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "techopps01@gmail.com"
}
 
 resource "aws_sns_topic_subscription" "autoscaling_notifications_email_9" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "anisb23@outlook.com"
}

  resource "aws_sns_topic_subscription" "autoscaling_notifications_email_" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = "gavin.turner8719@gmail.com"
}*/

  resource "aws_sns_topic_subscription" "autoscaling_notifications_email_" {
  topic_arn = aws_sns_topic.autoscaling_notifications.arn
  protocol  = "email"
  endpoint  = each.value
  for_each  = var.app_settings
}

variable "app_settings" {
  description = "Configuration settings for the application."
  type        = map(string)
  default     = {
  
  
    "kevinwhitaker" = "kevinwhitaker30@gmail.com",
    "cameron"       = "cgilber92@gmail.com",
    "Remo"          = "jremo25@outlook.com",
    "Jiohdee"       = "jiohdee@gmail.com",
    "bh"            = "bhreedmsu@gmail.com",
    "Law"           = "techopps01@gmail.com",
    "anis"          = "anisb23@outlook.com",
    "GT"            = "gavin.turner8719@gmail.com",

  }

}


resource "aws_autoscaling_notification" "autoscaling_notifications" {
  group_names = [
    aws_autoscaling_group.app1_asg.name
  ]

   notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
    "autoscaling:TEST_NOTIFICATION" 
  ]

  topic_arn =  aws_sns_topic.autoscaling_notifications.arn

}