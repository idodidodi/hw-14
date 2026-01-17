variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "The instance type to use for the EC2 instance"
}

variable "security_group_ids" {
  type        = list(string)
  description = "The security group IDs to use for the EC2 instance"
}

variable "user_data" {
  type        = string
  description = "The user data to use for the EC2 instance"
}

variable "instance_name" {
  type        = string
  description = "The name tag for the EC2 instance"
}