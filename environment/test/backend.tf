terraform {
  backend "s3" {
    bucket         = "swami-project-bucket"   # Your S3 bucket name
    key            = "test/terraform.tfstate"       # Path inside bucket
    region         = "eu-west-3"                   # Region of the bucket
    encrypt        = true  
    #use_lockfile = true                        # Encrypt the state file
  }
}
