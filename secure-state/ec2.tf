resource "aws_instance" "secure_state_dev" {
    instance_type = "t3.micro"
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_all_dev.id]

    tags = {
        name = "roboshop-secure-state"
    }
}




resource "aws_security_group" "allow_all_dev" {
name = "allow_all_dev"
description = "allows traffic from all ports"
    

ingress {
    from_port = 0 
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]
}

egress {
    from_port = 0 
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
     ipv6_cidr_blocks = ["::/0"]
}

tags = {
    Name = "allow_all"

}

  lifecycle {
    create_before_destroy = true
  }
}

