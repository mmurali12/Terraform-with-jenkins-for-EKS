terraform {
  backend "s3" {
    bucket = "cide-terraform-eks"
    key    = "jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}