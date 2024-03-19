resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "techchallenge-redis"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis7"
  security_group_ids   = ["sg-0afbb6ab8e72f0925"]
}
