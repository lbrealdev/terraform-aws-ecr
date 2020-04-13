# ECR variables
variable "names" {
  description = "Names of the repositories."
  type        = map(string)
}

variable "config" {
  type = any
  default = [
    {
      mutable      = "MUTABLE"
      immutable    = "IMMUTABLE"
      scan_on_push = true
    }
  ]
}