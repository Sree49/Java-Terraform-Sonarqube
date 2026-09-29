variable "RG_Name" {
  type = string
}

variable "RG_Location" {
  type = string
}

variable "container-password" {
  type = string
  sensitive = true
}