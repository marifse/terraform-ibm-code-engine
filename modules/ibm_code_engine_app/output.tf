#####################################################
# Code Engine App
# Copyright 2023 IBM
#####################################################

output "app_name" {
  description = "The Name of the Deployed Application"
  value       = ibm_code_engine_app.app.name
}
output "app_endpoint" {
  description = "The Endpoint of the Deployed Application"
  value       = ibm_code_engine_app.app.endpoint
}