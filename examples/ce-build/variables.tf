#####################################################
# CE Build Module Example Parameters
# Copyright 2023 IBM
#####################################################

variable "project_id" {
  description = "ID of the Project"
  type        = string
}
variable "name" {
  description = "Name of the Build"
  type        = string
}
variable "output_image" {
  type = string
  default = "private.us.icr.io/my_springboot_namespace_2/springboot-app-1"
}
variable "output_secret" {
  type = string
  default = "private.us.icr.io/my_springboot_namespace_2/springboot-app-1"
}
variable "strategy_type" {
  type = string
  default = "dockerfile"
}

#####################################################
# Optional Parameters
#####################################################

variable "source_type" {
  type = string
  default = "git"
}
variable "source_url" {
  type = string
  default = "https://github.com/marifse/springboot-ibmcloud"
}
variable "source_context_dir"{
  description = "Directory for the source code"
  type        = string
}
variable "source_revision"{
  description = "Revision Number Source"
  type        = string
}
variable "source_secret"{
  description = "Revision Number Source"
  type        = string
}
variable "projectName" {
  type = string
  default = "Springboot-CE373"
}