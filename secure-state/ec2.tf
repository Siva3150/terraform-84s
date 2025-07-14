resource "aws_instance" "secure_state" {
    instance_type = "t3.micro"
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    tags = {
        name = "roboshop"
    }
}




resource "aws_security_group" "allow_all_all" {
name = "allow_all_new"
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

