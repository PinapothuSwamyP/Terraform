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

variable "security_groups" {
  description = "List of Security Group IDs"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "Key pair name for SSH"
  type        = string
}

variable "instance_name" {
  description = "Name tag for EC2 instance"
  type        = string
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
