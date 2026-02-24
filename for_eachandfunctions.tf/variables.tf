# variable "instances" {
#     type= list
#  default= ["mongodb","redis","frontend"]
# }
variable "instances" {
    type= map
 default= {
    mongodb = "t3.micro"
        redis = "t3.small"
        frontend = "t3.micro"
}
}
variable "domain_name"{
 type= string
 default= "devops88s.online"

}

variable "ingress_rules"{
    default = [
        {
            port = 22
            cidr_blocks = ["0.0.0.0/0"]
            description = "allowing port number 22 from internet"
        },
        {
            port = 443
            cidr_blocks = ["0.0.0.0/0"]
            description = "allowing port number 443 from internet"
        },
        {
            port = 3306
            cidr_blocks = ["0.0.0.0/0"]
            description = "allowing port number 3306 from internet"
        }
    ]
}
variable "common_tags" {
    default= {
         Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}
variable "ec2_tags" {
    default = {
        Name = "functions-demo"
        Environment = "prod"
    }
}

variable "sg_tags" {
    default = {
        Name = "functions-demo"
    }
}