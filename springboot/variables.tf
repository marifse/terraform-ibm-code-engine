variable "ibmcloud_api_key" {
  description = "IBM Cloud API key"
  type        = string
  default = ""
}
variable "email" {
  type    = string
  default = "gttservices1@gmail.com"
}

variable "namespaceName" {
  type = string
  default = "my_springboot_namespace_2"
}

variable "applicationName" {
  type = string
  default = "springboot-app-1"
}

variable "imageURLRegistry" {
  type = string
  default = "private.us.icr.io"
}

variable "authRegitry" {
  type = string
  default = "us.icr.io"
}

variable "projectName" {
  type = string
  default = "Springboot-CE472"
}
variable "source_type" {
  type = string
  default = "git"
}
variable "source_url" {
  type = string
  default = "https://github.com/marifse/springboot-ibmcloud"
}
variable "strategy_type" {
  type = string
  default = "dockerfile"
}
variable "build_name" {
  type = string
  default = "springboot-app-build"
}
variable "source_context_dir" {
  type = string
  default = "."
}
variable "source_revision" {
  type = string
  default = ""
}