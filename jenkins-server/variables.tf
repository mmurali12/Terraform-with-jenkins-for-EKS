variable "vpc_cidr" {
  type        = string
  description = "Vpc"

}
variable "public_subnets" {
  type        = list(string)
  description = "subnets"
}
variable "instance_type" {
  type        = string
  description = "ec2-instance_type"
}
