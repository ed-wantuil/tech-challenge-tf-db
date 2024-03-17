provider "aws" {
  region = "us-east-1"
}

resource "aws_rds_cluster" "aurora_postgres" {
  cluster_identifier     = "aurora-postgres-cluster"
  engine                 = "aurora-postgresql"
  engine_version         = "15.4"
  database_name          = "techchallenge"
  master_username        = var.master_username
  master_password        = var.master_password
  skip_final_snapshot    = true
  vpc_security_group_ids = ["sg-0afbb6ab8e72f0925"]
}
