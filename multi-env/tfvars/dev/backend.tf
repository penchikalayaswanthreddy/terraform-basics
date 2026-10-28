terraform {
  backend "s3" {
    bucket = "yaswanth-penchikala-86s-state-file"
    key    = "dev-env"
    region = "us-east-1"
  }

  
}