variable "sg_name" {
  description = "Security Group name"
  type = string
}

variable "sg_description" {
  description = "Security Group description"
  type = string
}

variable "from_ingress1" {
  description = "From port"
  type = number
}

variable "to_ingress1" {
  description = "To port"
  type = number
}

variable "from_ingress2" {
  description = "From port"
  type = number
}

variable "to_ingress2" {
  description = "To port"
  type = number
}