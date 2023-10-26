#####################################################
# Code Engine Secret
# Copyright 2023 IBM
#####################################################

output "secret_id" {
  description = "The ID of the Secret"
  value       = ibm_code_engine_secret.secret.id
}
output "secret_name" {
  description = "The Name of the Secret"
  value       = ibm_code_engine_secret.secret.name
}