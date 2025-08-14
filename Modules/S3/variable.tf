variable "bucket_name" {
    description = "The name of s3 bucket"  
}
variable "env" {
    description = "Envirnonment name ex prod, dev, test" 
}
variable "bucket_status" {
    default = "Disabled"
    description = "For bucket versioning"  
}
variable "lifecycle_status" {
    default = "Disabled"
    description = "For bucket bucket object lifecycle" 
  
}
variable "day_count" {
    type = number
    default = "0"
}
