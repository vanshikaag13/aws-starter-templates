resource "aws_ecs_cluster" "tf_ecs_cluster" {
  name = "TF-ECS-Cluster"
  tags {
    Name = "Test Infra Cluster"
  }
   configuration {
  log_configuration {
        cloud_watch_encryption_enabled = true
        cloud_watch_log_group_name     = aws_cloudwatch_log_group.test_cluster.name
      }
   }
}
