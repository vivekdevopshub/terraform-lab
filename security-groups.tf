
resource "aws_security_group" "mediawiki-sg" {
     name = "mediawiki-sg"
	}
	
resource "aws_security_group_rule" "rule1" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]     // Need to be restricted
  security_group_id = aws_security_group.mediawiki-sg.id
}
resource "aws_security_group_rule" "rule2" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]     // Need to be restricted
  security_group_id = aws_security_group.mediawiki-sg.id
}

resource "aws_security_group_rule" "rule-ssh-allow" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]      // Need to be restricted
  security_group_id = aws_security_group.mediawiki-sg.id
}

resource "aws_security_group_rule" "rule-outbound-allow-all" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]    
  security_group_id = aws_security_group.mediawiki-sg.id
}

