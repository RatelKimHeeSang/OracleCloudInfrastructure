# terraform.tf
terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 5.0.0"
    }
  }
}


terraform {
  backend "http" {
    address = "https://objectstorage.ap-chuncheon-1.oraclecloud.com/p/op1nXIPLJrvQ2z09TvFA-RrO0d0pIWdEhp7oyYu8QYTxH_GGlbWL92W7WOuv2NSi/n/cnbkloa0ci62/b/Terraform-Bucket/o/terraform.tfstate"
    update_method = "PUT"
  }
}