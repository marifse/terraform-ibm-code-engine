#####################################################
# Code Engine Secret
# Copyright 2023 IBM
#####################################################

output "build_id" {
  description = "The ID of the Build"
  value       = ibm_code_engine_build.build.id
}