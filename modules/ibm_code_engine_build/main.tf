#####################################################
# Code Engine Build Resource
# Copyright 2023 IBM
#####################################################

resource "ibm_code_engine_build" "build" {
  project_id    = var.project_id
  name          = var.name
  output_image  = var.output_image            #"private.de.icr.io/icr_namespace/image-name"
  output_secret = var.output_secret           #"ce-auto-icr-private-eu-de"
  source_type   = var.source_type
  source_url    = var.source_url              #"https://github.com/IBM/CodeEngine"
  #source_context_dir = var.source_context_dir
  #source_revision = var.source_revision
  #source_secret = var.source_secret
  strategy_type = var.strategy_type           #"dockerfile"
  
  provisioner "local-exec" {
    command = "ibmcloud ce project select -n ${var.projectName} && ibmcloud ce buildrun submit --build ${var.name} --name ${var.name}-run  && sleep 60"
  }

}