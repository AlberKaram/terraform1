terraform {
    backend "s3" {
        bucket = "alber-iti"
        key = "iti/terraform.tfstate"
        region = "us-east-2"
        encrypt = true
    }
}