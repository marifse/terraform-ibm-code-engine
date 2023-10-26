# Image Module Example

This module is used to create Container Registry Namespace

## Example Usage
```
data "ibm_resource_group" "resource_group" {
  name = (var.resource_group != null ? var.resource_group : "default")
}

module "cr_namespace" {
  source = "terraform-ibm-modules/codeengine/ibm//modules/cr_namespace"

  name               = var.name
  project_id         = data.ibm_resource_group.resource_group.id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| name                              | Name of the Container Registry                        | string | n/a     | yes      |
| resource\_group\_id               | ID of the resource group                              | string | n/a     | no       |

## Outputs

| Name            | Description                  |
|-----------------|------------------------------|
| namespace\_name | The name of the CR namespace |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->