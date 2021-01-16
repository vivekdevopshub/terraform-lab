provider "aws" {

    region = var.region

}  

  terraform {
    backend "s3" {
    bucket = "sample-bucket-vivek"
    key    = "sample-state.tfstate"
    region = "ap-south-1"
  }
    required_version = "0.13.4"
}
