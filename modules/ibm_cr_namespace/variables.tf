#####################################################
# Code Engine CR Namespace Parameters
# Copyright 2023 IBM
#####################################################

variable "name" {
  description = "Name of the Image"
  type        = string
}


#####################################################
# Optional Parameters
#####################################################
variable "resource_group_id" {
  description = "Resource group ID"
  type        = string
  default     = null
}
