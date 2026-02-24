# Define local values
locals {
     # Combine project and environment to create a consistent name prefix
  instance_name= "${var.name}-${var.environment}"
  instance_type= "t3.micro"
  ec2_final-tags= merge(local.common_tags,var.ec2_tags)
  ami_id = data.aws_ami.example.id
    # Define mandatory tags in one place
  common_tags = {
    # Name = local.instance_name
    Project     = "roboshop"
    Environment = "dev"
    Terraform = "true"
  }
 
}
