terraform {
  backend "s3" {
    bucket = "terraform-state-stan-parkhomenko"
    key    = "core/terraform.tfstate"
    region = "us-east-1"
  }
}
