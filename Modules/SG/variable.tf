variable "sg_name" {
    description = "security group name"  
}
variable "vpc_id" {
    description = "vpc id from TestEnv"  
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
  description = "Tags to apply to the security group"
  type        = map(string)
  default     = {}
}
