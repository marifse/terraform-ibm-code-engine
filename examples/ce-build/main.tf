#####################################################
# CE Build Example
# Copyright 2023 IBM
#####################################################

provider "ibm" {
}


module "ibm_code_engine_build" {
  // source = "terraform-ibm-modules/ce/ibm//modules/ibm_code_engine_project"
  source = "../../modules/ibm_code_engine_build"
  project_id    = var.project_id
  name          = var.name
  output_image  = var.output_image            #"${var.imageURLRegistry}/${var.namespaceName}/${var.applicationName}:latest"
  output_secret = var.output_secret           #module.ibm_code_engine_secret.secret_name
  source_type   = var.source_type
  source_url    = var.source_url
  #source_context_dir = var.source_context_dir
  #source_revision = var.source_revision
  #source_secret = var.source_secret
  strategy_type = var.strategy_type
  projectName = var.projectName               #optional, required as we are running local exec in module to run the build
}