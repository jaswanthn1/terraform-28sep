resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  #backend.daws81s.online
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip]   // instances_info[count.index] is not working so we written it takig from ec2.tf file  
  allow_overwrite = true
}


//we can take public ip for frontend by writting condition below
# records = var.instance_names[count.index] == "frontend" ? [aws_instance.terraform[count.index].public_ip] : [aws_instance.terraform[count.index].private_ip]

# use output.instances_info
# output.instances_info == aws_instance.expense