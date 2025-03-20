variable "vpc-cidr" {
  default = "10.0.0.0/16"

}

variable "ssh_private_key" {
  description = "Path to the SSH private key"
  type        = string
  default     = "/home/ubuntu/.ssh/id_rsa"
}
