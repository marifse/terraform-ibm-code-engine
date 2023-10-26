# CE Secret Module Example

This example illustrates how to use the `ibm code engine project` module.

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

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Note

For all optional fields, default values (Eg: `null`) are given in varaible.tf file. User can configure the same by overwriting with appropriate values.

