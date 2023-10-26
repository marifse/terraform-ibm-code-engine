# Image Module Example

This module is used to create Code Engine Secret Resource

## Example Usage
```
data "ibm_code_engine_project" "project" {
  name = (var.project_id != null ? var.project_id : "default")
}

module "secret" {
  source = "terraform-ibm-modules/codeengine/ibm//modules/project"

  name               = var.name
  project_id         = data.ibm_code_engine_project.project.id
  format             = "registry"
  username           = "iamapikey"
  ibmcloud_api_key   = var.ibmcloud_api_key
  imageURLRegistry   = var.imageURLRegistry
  email              = var.email
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| name                              | Name of the Secret                                    | string | n/a     | yes      |
| project\_id                       | ID of the project                                     | string | n/a     | no       |
| format                            | Format for the secret                                 | string | n/a     | no       |
| username                          | username should be iamapikey                          | string | n/a     | no       |
| ibmcloud_api_key                  | Value for IBM Cloud API Key                           | string | n/a     | no       |
| imageURLRegistry                  | ICR URL                                               | string | n/a     | no       |
| email                             | Email Address                                         | string | n/a     | no       |

## Outputs

| Name          | Description            |
|---------------|------------------------|
| secret\_id    | The ID of the Secret   |
| secret\_name  | The name of the Secret |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->