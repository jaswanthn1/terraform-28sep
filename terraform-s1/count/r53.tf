resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  #backend.daws81s.online
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[count.index].private_ip]   // instances_info[count.index] is not working so we written it takig from ec2.tf file  
  allow_overwrite = true
}


# use output.instances_info
# output.instances_info == aws_instance.expense