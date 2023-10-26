# CE Build Module Example

This example illustrates how to use the `ibm code engine build` module.

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

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Note

For all optional fields, default values (Eg: `null`) are given in varaible.tf file. User can configure the same by overwriting with appropriate values.

