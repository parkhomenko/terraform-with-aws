resource "aws_elastic_beanstalk_application" "application" {
  name        = "my-awesome-app"
}

resource "aws_elastic_beanstalk_environment" "environment" {
  name                = "my-awesome-environment"
  application         = aws_elastic_beanstalk_application.application.name
  solution_stack_name = "64bit Amazon Linux 2 v3.2.10 running Corretto 11"

  setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
  }
}
