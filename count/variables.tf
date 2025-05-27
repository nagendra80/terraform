variable "instances" {
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default = "Z10375793VPL2XAJE7B5P"
}

variable "domain_name" {
  default = "pa1.online"
}

variable "common_tags" {
  type = map
  default = {
    Project     = "expense"
    Environment = "dev"
  }
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is RHEL9 AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}