# Liste de noms
variable "noms" {
  type    = list(string)
  default = ["Alice", "Bob", "Charlie", "David"]
}

# Ressource null_resource pour afficher les noms
resource "null_resource" "echo_noms" {
  count = length(var.noms)

  provisioner "local-exec" {
    command = "echo Nom: ${var.noms[count.index]}"
  }
}
