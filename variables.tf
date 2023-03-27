variable "project_id" { 
  type = string
  default = ""
}

variable "additional_tags" {
  type = list(string)
  default = []
}

variable "gcs_bucket" {
  type = string
  default = ""
}
