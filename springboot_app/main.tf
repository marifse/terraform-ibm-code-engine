data "ibm_resource_group" "rg" {
  name = "Default"
}

module "ibm_cr_namespace" {
  source = "../modules/ibm_cr_namespace"
  name              = var.namespaceName
  resource_group_id = data.ibm_resource_group.rg.id
}

module "ibm_code_engine_build" {
  source = "../modules/ibm_code_engine_build"
  project_id    = module.ibm_code_engine_project.project_id
  name          = var.build_name
  output_image  = "${var.imageURLRegistry}/${var.namespaceName}/${var.applicationName}:latest"
  output_secret = module.ibm_code_engine_secret.secret_name
  source_type   = var.source_type
  source_url    = var.source_url
  #source_context_dir = var.source_context_dir
  #source_revision = var.source_revision
  #source_secret = var.source_secret
  strategy_type = var.strategy_type
  projectName = var.projectName
  depends_on = [module.ibm_code_engine_project, module.ibm_code_engine_secret]
}

module "ibm_code_engine_project" {
  source = "../modules/ibm_code_engine_project"
  name              = var.projectName
  resource_group_id = data.ibm_resource_group.rg.id
}

module "ibm_code_engine_app" {
  source = "../modules/ibm_code_engine_app"
  project_id      = module.ibm_code_engine_project.project_id
  name            = var.applicationName
  image_reference = "${var.imageURLRegistry}/${var.namespaceName}/${var.applicationName}"
  image_secret = module.ibm_code_engine_secret.secret_name
  image_port =  "8080"

  depends_on = [
    module.ibm_code_engine_secret,
    module.ibm_code_engine_build
  ]
}

module "ibm_code_engine_secret" {
  source        = "../modules/ibm_code_engine_secret"
  name          = "my-registry-secret-arif"
  project_id    = module.ibm_code_engine_project.project_id
  format        = "registry"
  username      = "iamapikey"
  ibmcloud_api_key = var.ibmcloud_api_key
  imageURLRegistry   = var.imageURLRegistry
  email         = var.email
  depends_on = [module.ibm_code_engine_project]
}
