resource "aws_db_instance" "psql_tf_rds" {
  cluster_identifier      = "tf_rds"
  engine                  = "postgresql"
  engine_version     = "14.12"
  availability_zones      = [aws_subnet.private_subnet_1.id] 
  database_name           = "test_db"
  master_username         = "tf_user"
  master_password         = random_password.password.result
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

resource "aws_db_subnet_group" "pvt_subnet" {
  name       = "tf-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id, aws_subnet.private_subnet_3.id]
  tags = {
    Name = "My DB subnet group"
  }
}

