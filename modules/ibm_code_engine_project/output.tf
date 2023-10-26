#####################################################
# CE Project
# Copyright 2023 IBM
#####################################################

output "project_id" {
  description = "The ID of the Project"
  value       = ibm_code_engine_project.project.id
}