resource "aws_secretsmanager_secret" "db_creds" {
  name        = "TF-DB-Creds"
  description = "Database credentials for Postgresql instance"
}

resource "aws_secretsmanager_secret_version" "db_creds_version" {
  secret_id     = aws_secretsmanager_secret.db_creds.id
  secret_string = jsonencode({
    username = "tf_user"
    password = random_password.password.result
    host     = aws_db_instance.psql_tf_rds.id
    port     = "5432"
    engine   = "postgresql"
    database  = "tf_db"
  })
}