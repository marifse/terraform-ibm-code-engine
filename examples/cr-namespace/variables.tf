#####################################################
# CR Namespace Module Example Parameters
# Copyright 2020 IBM
#####################################################

variable "name" {
  description = "Name of the Namespace"
  type        = string
}


#####################################################
# Optional Parameters
#####################################################

variable "resource_group" {
  description = "Resource group name"
  type        = string
  default     = null
}