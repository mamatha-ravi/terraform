# output "instance_info" {
#   value = aws_instance.roboshop
#   description = "The information of the main server instance."
# }

output "fruits_names" {
    value = var.fruits_string
}

output "fruits_set" {
    value = var.fruits_set
}