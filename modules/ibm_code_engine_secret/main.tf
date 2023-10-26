#####################################################
# Code Engine Secret Resource
# Copyright 2023 IBM
#####################################################

resource "ibm_code_engine_secret" "secret" {
  name        = var.name
  project_id  = var.project_id
  format      = var.format
  data       = {
    "username" = var.username
    "password" = var.ibmcloud_api_key
    "server"   = var.imageURLRegistry
    "email"    = var.email
  }
}