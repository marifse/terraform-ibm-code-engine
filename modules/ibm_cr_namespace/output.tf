#####################################################
# Code Engine Secret
# Copyright 2023 IBM
#####################################################

output "namespace_name" {
  description = "The Name of the CR namespace"
  value       = ibm_cr_namespace.namespace.name
}