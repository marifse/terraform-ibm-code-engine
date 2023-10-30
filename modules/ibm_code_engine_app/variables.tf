#####################################################
# Code Engine App Parameters
# Copyright 2023 IBM
#####################################################

variable "name" {
  description = "Name of the Image"
  type        = string
}
variable "project_id" {
  description = "ID of the Project"
  type        = string
}
variable "image_reference" {
  description = "Container Image Reference"
  type        = string
}


#####################################################
# Optional Parameters
#####################################################

variable "image_secret" {
  description = "Container Image Secret"
  type        = string
}
variable "image_port" {
  description = "Container Image Port"
  type        = string
}