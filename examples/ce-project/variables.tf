#####################################################
# CE Project Module Example Parameters
# Copyright 2023 IBM
#####################################################

variable "name" {
  description = "Name of the Project"
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