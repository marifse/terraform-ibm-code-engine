#####################################################
# CE Secret Example
# Copyright 2023 IBM
#####################################################

provider "ibm" {
}

module "ibm_code_engine_secret" {
  // source = "terraform-ibm-modules/ce/ibm//modules/ibm_code_engine_project"
  source = "../../modules/ibm_code_engine_build"
  project_id    = var.project_id
  name          = var.name                  #"my-registry-secret-arif"
  format        = var.format                #"registry"
  username      = "iamapikey"
  ibmcloud_api_key = var.ibmcloud_api_key
  imageURLRegistry   = var.imageURLRegistry
  email         = var.email
}