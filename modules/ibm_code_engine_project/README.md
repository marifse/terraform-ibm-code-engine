# Image Module Example

This module is used to create Code Engine Project Resource

## Example Usage
```
data "ibm_resource_group" "resource_group" {
  name = (var.resource_group != null ? var.resource_group : "default")
}

module "project" {
  source = "terraform-ibm-modules/codeengine/ibm//modules/project"

  name               = var.name
  resource_group_id  = data.ibm_resource_group.resource_group.id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| name                              | Name of the Project                                   | string | n/a     | yes      |
| resource\_group\_id               | ID of the resource group                              | string | n/a     | no       |

## Outputs

| Name        | Description           |
|-------------|-----------------------|
| project\_id | The ID of the Project |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->