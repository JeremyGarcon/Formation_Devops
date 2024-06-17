provider "null" {}

resource "null_resource" "install_apache" {
  provisioner "local-exec" {
    command = <<-EOT
      sudo apt-get update
      sudo apt-get install apache2 -y
      sudo systemctl start apache2
      sudo systemctl enable apache2
    EOT
  }
}
