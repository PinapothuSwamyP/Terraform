variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}
variable "env" {
  description = "Environment"
  type        = string
}
variable "bucket_name1" {
  description = "S3 bucket name"
  type        = string
}
variable "Test_s3_status" {
  description = "for versioning"  
}
variable "Test_s3_status1" {
  description = "for versioning"  
}
variable "bucket_name2" {
  description = "S3 bucket name"
  type        = string
}
variable "bucket_name4" {
  description = "S3 bucket name" 
}
variable "Test_s3_status4" {
  description = "for versioning" 
} 
variable "lifecycle_status_bucket4" {
  description = "for lifecycle"  
}
variable "day_count_s3_Nic2" {
  description = "life cycle day count"
  
}
#=============================================================================
#Security group
#-===========================================================
variable "sg_name" {
  description = "Name of the Security Group"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where SG will be created"
  type        = string
}

variable "ingress_rules" {
  description = "List of inbound rules"
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  description = "List of outbound rules"
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "tags" {
  description = "Tags to apply to SG"
  type        = map(string)
  default     = {}
}

#======================================

variable "ami_id" {
  description = "AMI ID to launch EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID where instance will be launched"
  type        = string
}

# variable "security_groups" {
#   description = "List of Security Group IDs"
#   type        = list(string)
#   default     = []
# }

variable "key_name" {
  description = "Key pair name for SSH"
  type        = string
}

variable "instance_name" {
  description = "Name tag for EC2 instance"
  type        = string
}

variable "web_tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}

