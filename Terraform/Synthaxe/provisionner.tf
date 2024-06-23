# Définition d'une ressource null_resource avec provisioners
resource "null_resource" "example" {
  
  # Provisioner "local-exec" pour exécuter des commandes locales
  provisioner "local-exec" {
    command = "echo Hello, Terraform!"
  }

  # Provisioner "file" pour créer un fichier local
  provisioner "file" {
    source      = "scripts/init.sh"
    destination = "/tmp/init.sh"
  }

  # Provisioner "remote-exec" pour exécuter des commandes distantes via SSH
  provisioner "remote-exec" {
    inline = [
      "echo 'Executing remote commands'",
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo systemctl start nginx"
    ]
    
    # Connexion SSH configurée avec des variables (à remplacer par vos valeurs)
    connection {
      type        = "ssh"
      host        = "your-remote-server-ip"
      user        = "your-ssh-user"
      private_key = file("~/.ssh/id_rsa")  # Chemin vers votre clé privée SSH
    }
  }
}
