provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "postgres_db" {
  identifier             = "postgres-db-instance"
  engine                 = "postgres"
  engine_version         = "15.4"
  instance_class         = "db.t3.micro"
  database_name          = "techchallenge"
  master_username        = var.master_username
  master_password        = var.master_password
  skip_final_snapshot    = true
  vpc_security_group_ids = ["sg-0afbb6ab8e72f0925"]
}
