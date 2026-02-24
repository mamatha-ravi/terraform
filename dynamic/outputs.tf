output "ami_id" {
  value       = data.aws_ami.example.id
}

output "instance_info" {
    value = data.aws_instance.terraform_instance
}