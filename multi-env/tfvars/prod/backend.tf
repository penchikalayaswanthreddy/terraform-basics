terraform {
  backend "s3" {
    bucket = "yaswanth-penchikala-86s-state-file"
    key    = "prod-env"
    region = "us-east-1"
  }

  
}