   module "s3_bucket_module" {
    source = "../../Modules/S3"
    bucket_name = var.bucket_name
    env = var.env
    bucket_status = var.Test_s3_status1
   }

   module "Test_s3" {
    source = "../../Modules/S3"
    bucket_name = var.bucket_name1
    env = var.env
    bucket_status = var.Test_s3_status
   }

    module "s3_Nick" {
    source = "../../Modules/S3"
    bucket_name = var.bucket_name2
    env = var.env
    #bucket_status = var.Test_s3_status1
   }
    module "s3_Nick2" {
    source = "../../Modules/S3"
    bucket_name = var.bucket_name4
    env = var.env
    bucket_status = var.Test_s3_status4
    lifecycle_status = var.lifecycle_status_bucket4
    day_count = var.day_count_s3_Nic2
   }

   #========================================================================
   #Security group
   #=========================================================================
   module "sg_name_module" {
      source = "../../Modules/SG"  
      sg_name = var.sg_name
      vpc_id = var.vpc_id

      ingress_rules = var.ingress_rules
      egress_rules  = var.egress_rules
      tags          = var.tags
   }
   