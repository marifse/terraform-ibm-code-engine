# CE App Module Example

This example illustrates how to use the `ibm code engine project` module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name                              | Description                                           | Type   | Default | Required |
|-----------------------------------|-------------------------------------------------------|--------|---------|----------|
| name                              | Name of the Application                               |string  | n/a     | yes      |
| project\_id                       | ID of the Project                                     |string  | n/a     | no       |
| image_reference                   | Reference of the image                                |string  | n/a     | yes      |
| image_secret                      | Secret for the image to pull                          |string  | n/a     | no       |
| image_port                        | Port for the app to run                               |string  | n/a     | yes      |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Note

For all optional fields, default values (Eg: `null`) are given in varaible.tf file. User can configure the same by overwriting with appropriate values.

