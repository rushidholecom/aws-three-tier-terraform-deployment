resource "aws_security_group" "mariadb_security_group" {
  name = "mariadb_security_group"
  vpc_id =var.vpc_id
  description = "Allow Mariadb access"

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name = "db-subnet-group"
  subnet_ids = var.private_subnet.id
  tags = {
    Name = "db-subnet-group"
  }
}

resource "aws_db_instance" "mariadb-ins" {
  identifier = var.db_instance_identifier
  engine = "mariadb"
  engine_version = "11.8.5"
  instance_class = "db.t3.micro"
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  allocated_storage = 10
  db_name = var.db_name
  username = var.db_username
  password = var.db_password
    vpc_security_group_ids = [aws_security_group.mariadb_security_group.id]
  publicly_accessible = true
  
  timeouts {
    create = "3h"
    delete = "3h"
    update = "3h"
  }
}


