#####################################################
# Code Engine Secret Resource
# Copyright 2023 IBM
#####################################################

resource "ibm_code_engine_app" "app" {
  name                 = var.name
  project_id           = var.project_id
  image_reference      = var.image_reference
  image_secret         = var.image_secret
  image_port           = var.image_port
}