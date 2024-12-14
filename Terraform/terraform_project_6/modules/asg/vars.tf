variable "asgname" {
  description = "Name of the ASG"
  type = string
}

variable "max" {
  description = "Max size"
  type = number
}

variable "min" {
  description = "Min size"
  type = number
}

variable "desired" {
  description = "Desired size"
  type = number
}

variable "lt_id" {
  description = "Launch template ID"
  type = string
}

variable "lt_version" {
  description = "Launch template version"
  type = string
}