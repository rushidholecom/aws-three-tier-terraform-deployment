variable "db_instance_identifier" {
    type = string
    default = "mariadb-instance"
}

variable "vpc_id" {}

variable "db_name" {
  default = "project-db"
}

variable "db_username" {
  default = "rushi"
}

variable "db_password" {
  default = "redhat123"
}
