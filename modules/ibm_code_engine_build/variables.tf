#####################################################
# Code Engine Build Parameters
# Copyright 2020 IBM
#####################################################

variable "name" {
  description = "Name of the Build"
  type        = string
}
variable "project_id" {
  description = "ID of the Project"
  type        = string
}
variable "output_image" {
  description = "Name of the output image"
  type        = string
}
variable "output_secret" {
  description = "Name of the image secret"
  type        = string
}
variable "source_url" {
  description = "Link of the Code Repository"
  type        = string
}
variable "strategy_type" {
  description = "Strategy Type"
  type        = string
}

#####################################################
# Optional Parameters
#####################################################
variable "source_type" {
  description = "The directory for source code"
  type        = string
}
#variable "source_context_dir" {
#  description = "The directory for source code"
#  type        = string
#}
#variable "source_revision" {
#  description = "The directory for source code"
#  type        = string
#}

variable "projectName" {
  description = "The project name to run the build"
  type        = string
}

