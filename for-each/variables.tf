variable "instances" {
  type = map
  default = {
    mysql = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "domain_name" {
  default = "pa1.online"
}

variable "zone_id" {
  default = "Z10375793VPL2XAJE7B5P"
}