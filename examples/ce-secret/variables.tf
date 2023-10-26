#####################################################
# CE Secret Module Example Parameters
# Copyright 2023 IBM
#####################################################

variable "project_id" {
  description = "ID of the Project"
  type        = string
}
variable "name" {
  description = "Name of the Secret"
  type        = string
}
variable "format" {
  description = "Format of the Secret"
  type        = string
}
variable "ibmcloud_api_key" {
  description = "IBM API Key"
  type        = string
}
variable "imageURLRegistry" {
  description = "IBM URL Registry"
  type        = string
}
variable "email" {
  description = "Email ID"
  type        = string
}

#####################################################
# Optional Parameters
#####################################################
