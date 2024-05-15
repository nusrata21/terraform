# resource "aws_instance" "vm1test" {
#   ami                    = "ami-0e001c9271cf7f3b9"
#   availability_zone      = "us-east-1a"
#   key_name               = "vskey"
#   instance_type          = "Ubuntu"
#   vpc_security_group_ids = ["aws_security_group.sgtest.id"]

#   depends_on = [aws_security_group.sgtest]

#   tags = {
#     Name = "atlasec2tf"
#   }
# }

# resource "aws_security_group" "sgtest" {
#   name        = "all_http"
#   description = "allow inbound and outbound traffic"

#   tags = {
#     Name = "sgtest12"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_http" {
#   security_group_id = aws_security_group.sgtest.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 80
#   ip_protocol       = "tcp"
#   to_port           = 80
# }

# resource "aws_vpc_security_group_egress_rule" "allow_all" {
#   security_group_id = aws_security_group.sgtest.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1"
# }