# Déclaration des variables
variable "nom" {
  type    = string
  default = "John Doe"
}

variable "age" {
  type    = number
  default = 30
}

variable "emails" {
  type    = list(string)
  default = ["john.doe@example.com", "j.doe@example.com"]
}

variable "est_actif" {
  type    = bool
  default = true
}

# Définition d'une ressource null_resource pour afficher les variables
resource "null_resource" "echo_variables" {
  provisioner "local-exec" {
    command = <<EOT
      echo "Nom: ${var.nom}"
      echo "Age: ${var.age}"
      echo "Emails: ${join(", ", var.emails)}"
      echo "Est actif: ${var.est_actif}"
    EOT
  }
}
