# ECR variables
variable "names" {
  type = map(string)
  default = {
    alias          = "ecrdevcaucionalias"
    clientes       = "ecrdevcaucionclientes"
    informes       = "ecrdevcauciongarantiasinformes"
    garantias      = "ecrdevcauciongarantias"
    tipologias     = "ecrdevcauciontipologias"
    informes_asinc = "ecrdevcauciongarantiasinformesasinc"
    authentication = "ecrdevcaucionglobalauthentication"
    cargos_abo     = "ecrdevcaucioncargosabonos"
  }
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