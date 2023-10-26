#####################################################
# Code Engine Secret Parameters
# Copyright 2020 IBM
#####################################################

variable "name" {
  description = "Name of the Image"
  type        = string
}
variable "project_id" {
  description = "ID of the Project"
  type        = string
}
variable "format" {
  description = "Format of the secret"
  type        = string
}

#####################################################
# Optional Parameters
#####################################################
variable "username" {
  description = "Username of Image Registry, username will be iamapikey for IBM Registry"
  type        = string
}
variable "ibmcloud_api_key" {
  description = "IBM Cloud API Key if Registery is ICR"
  type        = string
}
variable "imageURLRegistry" {
  description = "URL of the Image Registry"
  type        = string
}
variable "email" {
  description = "Email ID registered with Registry"
  type        = string
}
