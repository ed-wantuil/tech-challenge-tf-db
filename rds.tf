provider "aws" {
  region = "us-east-1"
}

resource "aws_rds_cluster" "aurora_postgres" {
  cluster_identifier  = "aurora-postgres-cluster"
  engine              = "aurora-postgresql"
  engine_version      = "15.4"
  database_name       = "techchallenge"
  master_username     = "teste"    #TODO
  master_password     = "teste123" #TODO
  skip_final_snapshot = true
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "techchallenge-redis"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis7"
}