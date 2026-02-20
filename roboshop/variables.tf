variable "instances" {
  type = list
  default= ["mongodb","catalogue","user","rabbitmq","mysql","shipping","redis","cart","payment","frontend"]
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type= string
    default= "t3.micro"
}



variable "sg_name" {
  default = "allow-all-traffic"
  type = string
}

variable "sg_description" {
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg_from_port" {
  type = number
  default = 0
}

variable "sg_to_port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "sg_tags"{
    type= map
    default = { 
        Name= "allow_all_traffic"
        project= "roboshop"
        environment= "dev"
        terraform= "true"
}
}
variable "zone_id"{
 type= string
 default= "Z03338611JYIFQWLKNVHI"

}
variable "domain_name"{
 type= string
 default= "devops88s.online"

}
variable "fruits_string"{
    type= list(string)
    default= ["apple","banana","guava","banana"]
}
variable "fruits_set"{
    type= set(string)
    default= ["apple","banana","guava","banana"]
}