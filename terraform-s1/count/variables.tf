variable "instance_names" {
    type = list(string)
    default = ["mysql", "backend", "frontend"]   // systax for list array in terraform
}


variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "zone_id" {
    default = "Z08157172U3CRHTKPT4Q9"
}

variable "domain_name" {
    default = "daws81s.online"
}