resource "aws_db_instance" "psql_tf_rds" {
  cluster_identifier      = "tf_rds"
  engine                  = jsondecode(aws_secretsmanager_secret_version.db_creds_version.secret_string)["engine"]
  engine_version          = "14.12"
  availability_zones      = [aws_subnet.private_subnet_1.id] 
  database_name           = jsondecode(aws_secretsmanager_secret_version.db_creds_version.secret_string)["database"]
  master_username         = jsondecode(aws_secretsmanager_secret_version.db_creds_version.secret_string)["username"]
  master_password         = jsondecode(aws_secretsmanager_secret_version.db_creds_version.secret_string)["password"]
  port                    = jsondecode(aws_secretsmanager_secret_version.db_creds_version.secret_string)["port"]
  backup_retention_period = 7
  allocated_storage = 15
  multi_az               = false
  storage_encrypted  = true
}
resource "random_password" "password" {
  length           = 12
  special          = true
  override_special = "())-_=+[]{}<>:?"
}



