#####################################################
# CE App Module Example Parameters
# Copyright 2023 IBM
#####################################################

variable "project_id" {
  description = "Name of the Project"
  type        = string
}
variable "name" {
  description = "Name of the App"
  type        = string
}
variable "image_reference" {
  description = "URL of the Image"
  type        = string
}



#####################################################
# Optional Parameters
#####################################################
variable "image_port" {
  description = "Port on which the app is to run"
  type        = string
}
variable "image_secret" {
  description = "Secret if the image is from private repo"
  type = string
}
