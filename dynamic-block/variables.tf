variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ami_id" {
    type = string 
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of joindevops RHEL9"
}
 variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Roboshop"
        purpose = "variables-demo"

    }
 }

 variable "sg_name" {
     default = "vars-file-allow-all"
 }

 variable "sg_description" {
   default = "allowing all ports from internet"
 }

 variable "from_port" {
    type = number
    default = 0
}

 variable "to_port" {
    type = number 
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}

variable "ingress_ports" {
  default = [

    {
      from_port =22
      to_port = 22
    },
    {
      from_port = 80
      to_port = 80
    },
    {
    from_port = 8080
    to_port = 8080
    }
  ]
}