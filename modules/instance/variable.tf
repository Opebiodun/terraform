variable "ami" {
  description = "AMI ID for the instance"
}

variable "instance_type" {
  description = "Instance type for the instance"
}

variable "key_name" {
  description = "Key pair name for the instance"
}

variable "instance_count" {
  description = "Number of instances"
  default     = 2
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "name" {
  description = "Name prefix for the instances"
}
