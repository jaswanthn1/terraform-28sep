data "aws_ami" "ami_info" {  //data keyword is used to get the resource information, "resource" keyword is used to create a resource in cloud provider
  most_recent = true
  owners      = ["973714476881"]  // here it gives AMI's from ami_info so we do filters


  filter {
    name   = "name"   // AMI name
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"  // root device type from AMI
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"  // virtualization type from AMI
    values = ["hvm"]
  }
}