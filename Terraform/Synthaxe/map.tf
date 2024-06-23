# Variables
variable "noms" {
  type    = list(string)
  default = ["Alice", "Bob", "Charlie", "David"]
}

variable "age_par_nom" {
  type    = map(number)
  default = {
    "Alice"   = 25
    "Bob"     = 30
    "Charlie" = 35
    "David"   = 40
  }
}

# Ressource null_resource pour afficher les noms et les âges
resource "null_resource" "echo_noms_et_ages" {
  count = length(var.noms)

  provisioner "local-exec" {
    command = <<EOT
      echo "Nom: ${var.noms[count.index]}"
      echo "Age: ${lookup(var.age_par_nom, var.noms[count.index])}"
    EOT
  }
}

# Condition if-else avec un output
output "message" {
  value = "${var.noms != [] ? "Il y a des noms spécifiés." : "Aucun nom spécifié."}"
}

# Fonction join pour afficher les noms séparés par une virgule
output "noms_separe_par_virgule" {
  value = join(", ", var.noms)
}

# Fonction length pour afficher la longueur de la liste des noms
output "longueur_noms" {
  value = length(var.noms)
}
