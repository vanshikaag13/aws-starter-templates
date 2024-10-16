resource "aws_security_group" "ecs_sg"{
name = "aws_ecs_sg"
vpc_id = aws_default_vpc.main.id
tags ={
    Name = "AWS-ecs-sg"
}
resource "aws_vpc_security_group_ingress_rule" "inbound_sg_http" {
  security_group_id = aws_security_group.ecs_sg.id
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

}
resource "aws_vpc_security_group_ingress_rule" "outbound_sg" {
  security_group_id = aws_security_group.ecs_sg.id
  ip_protocol = -1
}
resource "aws_security_group" "redis_sg"{
name = "aws_redis_sg"
vpc_id = aws_default_vpc.main.id
tags ={
    Name = "AWS redis sg"
}
}

resource "aws_vpc_security_group_ingress_rule" "cache_inbound_sg_http" {
  security_group_id = aws_security_group.redis_sg.id
  from_port   = 6379
  ip_protocol = "tcp"
  to_port     = 6379
}
resource "aws_vpc_security_group_ingress_rule" "cache_outbound_sg" {
  security_group_id = aws_security_group.ecs_sg.id
  ip_protocol = -1
}