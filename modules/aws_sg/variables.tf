variable "vpc_id" {
  type        = string
  description = "The VPC ID where the security group will be created"
}

variable "sg_name" {
  type        = string
  description = "The name of the security group"
  default     = "host-sg"
}

variable "allowed_ips" {
  type        = list(string)
  description = "List of allowed IPs for SSH access"
  default     = []
}
