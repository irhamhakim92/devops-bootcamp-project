terraform {
  backend "s3" {
    bucket = "devops-terraform-state-irham"
    key    = "devops-final/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
