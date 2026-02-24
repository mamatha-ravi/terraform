variable "name" {
  type= string
  default= "nginx"
}

variable "environment"{
    type= string
    default = "dev"
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