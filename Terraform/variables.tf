# main-vars.tf
############################################
# Compartments
############################################

variable "compartment_id" {
  description = "The OCID of the parent compartment where the resources will be created."
  type        = string
}

variable "compartment_name" {
  description = "Compartment Name"
  type        = string
  default     = "Terraform"
}

variable "compartment_description" {
  description = "Compartment Description"
  type        = string
  default     = "Terraform-compartment description"
}

############################################
# VCN
############################################

variable "vcn1" {
  description = "The details of VCN1."
  default = {
    cidr_blocks : ["10.23.0.0/20"]
    display_name : "Terraform-VCN"
  }
}

############################################
# Public Subnet, Route Table, and Internet Gateway
############################################

variable "subnetA_pub" {
  description = "The details of the subnet"
  default = {
    cidr_block : "10.23.11.0/24"
    display_name : "Terraform_pub_sub-A"
    is_public : true
    route_table : {
      display_name = "routeTable-Apub"
      description  = "routeTable-Apub"
    }
  }
}

variable "internet_gateway_A" {
  description = "The details of the internet gateway"
  default = {
    display_name : "TF_IGW"
    ig_destination = "0.0.0.0/0"
  }
}

############################################
# Compute Instance
############################################

variable "tf_pub_vm_A" {
  description = "The details of the compute instance"
  default = {
    display_name : "TF_pub_vm-A"
    assign_public_ip : true
    availability_domain : "PYHM:AP-CHUNCHEON-1-AD-1"
    image_ocid : "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaacr4f7w5qkpt3cevei7zyrxj4lzclcda5vg4bepizittmdenf456q"
    shape : {
      name          = "VM.Standard.E4.Flex"
      ocpus         = 2
      memory_in_gbs = 4
    }
    ssh_authorized_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvWKBReUnkN7RBRvsY6BRTY8lBN5sCXCCf/8XZqplmJ53lv9KIixojTskof7//8jiiGFgJ53OnIB7LU13rhVX6ON+EjbZPpBKKGeyCWT7uUmLNBWwIiLBN0/HStD+AH9i5ZOl55vB5H1o4SB5JfRZY4KJ8W4qSSKBEjPHeivh819raClMUJbBQP7ZKg5WUbhYsEkdlzQewts0MjZVwy4kXl366koPRottm2mrUGVW+IaWFgYpvC9wjtnHyFtcOBlgtrZrP8TtPmJiLsHOdyMAbV/5v45bWT5lsS9crF9+Nm6d78yl7tvvDmeTocrhMoFhY8avSqVmavRltVPZWqS7D ssh-key-2025-11-11"]
  }
}