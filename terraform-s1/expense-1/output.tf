# use output.instances_info
# output.instances_info == aws_instance.expense
output "instances_info" {    
    value = aws_instance.terraform
}

output "ami_info" {
    value = data.aws_ami.ami_info
}



# output "instances_info" {    
#     value = aws_instance.expense
# }

# means the output is "instances_info" = "output data comes here"


# output "ami_info" {
#     value = aws_ami.joindevops.id
# }

# means the output is "ami_info" = "output data comes here"


# ami_info output  -- > to get id we have to give like this -- data.aws_ami.ami_info

#  ami_info       = {
#       + architecture          = "x86_64"
#       + arn                   = "arn:aws:ec2:us-east-1::image/ami-09c813fb71547fc4f"
#       + block_device_mappings = [
#           + {
#               + device_name  = "/dev/sda1"
#               + ebs          = {
#                   + delete_on_termination = "true"
#                   + encrypted             = "false"
#                   + iops                  = "3000"
#                   + snapshot_id           = "snap-0c5265d8b25057b9a"
#                   + throughput            = "125"
#                   + volume_size           = "20"
#                   + volume_type           = "gp3"
#                 }
#               + no_device    = ""
#               + virtual_name = ""
#             },
#         ]
#       + boot_mode             = "uefi-preferred"
#       + creation_date         = "2024-08-31T15:24:38.000Z"
#       + deprecation_time      = "2026-08-31T15:24:38.000Z"
#       + description           = ""
#       + ena_support           = true
#       + executable_users      = null
#       + filter                = [
#           + {
#               + name   = "name"
#               + values = [
#                   + "RHEL-9-DevOps-Practice",
#                 ]
#             },
#           + {
#               + name   = "root-device-type"
#               + values = [
#                   + "ebs",
#                 ]
#             },
#           + {
#               + name   = "virtualization-type"
#               + values = [
#                   + "hvm",
#                 ]
#             },
#         ]
#       + hypervisor            = "xen"
#       + id                    = "ami-09c813fb71547fc4f"
#       + image_id              = "ami-09c813fb71547fc4f"
#       + image_location        = "973714476881/RHEL-9-DevOps-Practice"
#       + image_owner_alias     = ""
#       + image_type            = "machine"
#       + imds_support          = ""
#       + include_deprecated    = false
#       + kernel_id             = ""
#       + most_recent           = true
#       + name                  = "RHEL-9-DevOps-Practice"
#       + name_regex            = null
#       + owner_id              = "973714476881"
#       + owners                = [
#           + "973714476881",
#         ]
#       + platform              = ""
#       + platform_details      = "Red Hat Enterprise Linux"
#       + product_codes         = []
#       + public                = true
#       + ramdisk_id            = ""
#       + root_device_name      = "/dev/sda1"
#       + root_device_type      = "ebs"
#       + root_snapshot_id      = "snap-0c5265d8b25057b9a"
#       + sriov_net_support     = "simple"
#       + state                 = "available"
#       + state_reason          = {
#           + code    = "UNSET"
#           + message = "UNSET"
#         }
#       + tags                  = {}
#       + timeouts              = null
#       + tpm_support           = ""
#       + usage_operation       = "RunInstances:0010"
#       + virtualization_type   = "hvm"
#     }
