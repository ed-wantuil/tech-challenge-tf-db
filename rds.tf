provider "aws" {
  region = "us-west-2"
}

resource "aws_rds_cluster" "aurora_postgres" {
  cluster_identifier  = "aurora-postgres-cluster"
  engine              = "aurora-postgresql"
  engine_version      = "12.4"
  database_name       = "tech-challenge"
  master_username     = "var.user_name"
  master_password     = "var.password"
  skip_final_snapshot = true
}
