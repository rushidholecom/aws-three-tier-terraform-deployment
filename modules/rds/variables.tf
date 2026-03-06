variable "db_instance_identifier" {
    default = "mariadb-instance"
}

variable "vpc_id" {}

variable "db_name" {
  default = "projectdb"
}

variable "db_username" {
  default = "rushi"
}

variable "db_password" {
  default = "redhat123"
}

variable "private_subnet" {}