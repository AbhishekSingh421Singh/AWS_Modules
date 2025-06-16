variable "identifier" {}
variable "allocated_storage" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "db_name" {}
variable "username" {}
variable "password" {}
variable "parameter_group_name" {}
variable "publicly_accessible" {
  default = false
}
variable "security_group_ids" {
  type = list(string)
}
variable "subnet_group_name" {}