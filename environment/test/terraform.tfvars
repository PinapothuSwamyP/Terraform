bucket_name = "swami-project-bucket"
bucket_name1 = "swami-project-bucket1"
env         = "dev"
Test_s3_status1 = "Enabled"
Test_s3_status = "Suspended"
bucket_name2 = "swamy-project-bucket2"
bucket_name4 = "swamy-project-bucket4"
Test_s3_status4 = "Enabled"
lifecycle_status_bucket4 = "Enabled"
day_count_s3_Nic2 = "3"

#======================================================
#Security group
#===========================================================
sg_name = "Terraform_SG"
vpc_id = "vpc-08f8fac93bf753227"
ingress_rules = [ 
    {
       description = "Allow ssh"
       from_port = 22
       to_port = 22
       protocol = "tcp"
       cidr_blocks = [ "0.0.0.0/0" ]
   }
 ]
 egress_rules = [
  {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

tags = {
  Environment = "test"
  Project     = "test"
}

#==============================================
ami_id = "ami-07630529233925a9f"
instance_type = "t2.micro"
subnet_id = "subnet-08837f1649a487b2d"
#key_name = "TestEnv_PublicKey"
instance_name = "terr_webserver"
web_tags = {
    Environment = "test"
  Project     = "test"
}
