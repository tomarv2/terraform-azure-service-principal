variable "config" {
  description = "Application configuration"
  type        = map(any)
}

variable "extra_tags" {
  description = "Additional tags to associate"
  type        = map(string)
  default     = {}
}
variable "password" {
  type        = string
  default     = ""
  description = "A password for the service principal."
}
