# Image Module Example

This module is used to create Code Engine App Resource

## Example Usage
```
data "ibm_code_engine_project" "project" {
  name = (var.project_id != null ? var.project_id : "default")
}

module "app" {
  source = "terraform-ibm-modules/codeengine/ibm//modules/app"

  name               = var.name
  project_id         = data.ibm_code_engine_project.project.id
  image_reference    = "${var.imageURLRegistry}/${var.namespaceName}/${var.applicationName}"
  image_secret       = module.ibm_code_engine_secret.secret_name
  image_port         = "8080"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| name                              | Name of the Application                               |string  | n/a     | yes      |
| project\_id                       | ID of the Project                                     |string  | n/a     | no       |
| image_reference                   | Reference of the image                                |string  | n/a     | yes      |
| image_secret                      | Secret for the image to pull                          |string  | n/a     | no       |
| image_port                        | Port for the app to run                               |string  | n/a     | yes      |

## Outputs

| Name          | Description             |
|---------------|-------------------------|
| app_name      | Returns the name of app |
| app_endpoint  | Application URL Endpoint|

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->