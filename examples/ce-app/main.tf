#####################################################
# CE App Example
# Copyright 2023 IBM
#####################################################

provider "ibm" {
}

module "ibm_code_engine_app" {
  // source = "terraform-ibm-modules/ce/ibm//modules/ibm_code_engine_project"
  source = "../../modules/ibm_code_engine_app"
  project_id       = var.project_id
  name             = var.name
  image_reference  = var.image_reference
  image_secret     = var.image_secret
  image_port       = var.image_port
}