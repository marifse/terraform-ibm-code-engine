# Image Module Example

This module is used to create Code Engine Build Resource

## Example Usage
```
data "ibm_code_engine_project" "project" {
  name = (var.project_id != null ? var.project_id : "default")
}

module "build" {
  source = "terraform-ibm-modules/codeengine/ibm//modules/build"

  project_id         = data.ibm_code_engine_project.project.id
  name               = var.name
  output_image       = var.output_image
  output_secret      = var.output_secret
  source_type        = var.source_type
  source_url         = var.source_url
  source_context_dir = var.source_context_dir
  source_revision    = var.source_revision
  source_secret      = var.source_secret
  strategy_type      = var.strategy_type #"dockerfile"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| name                              | Name of the Build                                     | string | n/a     | yes      |
| project\_id                       | ID of the project                                     | string | n/a     | yes      |
| output\_image                     | Name of the output image                              | string | n/a     | yes      |
| output\_secret                    | Name of the image secret                              | string | n/a     | yes      |
| source\_type                      | The directory for source code                         | string | n/a     | no       |
| source\_url                       | Link of the Code Repository                           | string | n/a     | yes      |
| source\_context\_dir              | ID of the resource group                              | string | n/a     | no       |
| source\_revision                  | ID of the resource group                              | string | n/a     | no       |
| source\_secret                    | ID of the resource group                              | string | n/a     | no       |
| startegy\_type                    | ID of the resource group                              | string | n/a     | yes      |

## Outputs

| Name | Description |
|------|-------------|
| build\_id | The ID of the build |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->