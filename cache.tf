resource "aws_elasticache_cluster" "cache" {
  cluster_id           = "tf-cache"
  engine               = "redis"
  node_type            = "cache.t4g.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  az_mode              = "single-az"
  security_groups_ids  = aws_ecs_sg.redis_sg.id
}