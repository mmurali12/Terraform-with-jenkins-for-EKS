variable "vpc_cidr" {
  type        = string
  description = "Vpc"

}
variable "public_subnets" {
  type        = list(string)
  description = "public subnets"
}
variable "private_subnets" {
  type        = list(string)
  description = "private subnets"
}
