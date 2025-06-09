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

variable "instances" {
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "zone_id" {
    default = "Z03672276PNJXQMW5BRF"
}

variable "domain_name" {
    default = "sivadevops.fun"
}






