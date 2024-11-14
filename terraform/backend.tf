terraform {
  backend "s3" {
    bucket = "terraform-state-demonstration"
    key    = "development/purchases"
    region = "us-east-1"
  }
}