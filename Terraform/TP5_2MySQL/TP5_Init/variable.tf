variable "AWS_REGION" {
  description = "The AWS region to create resources in"
  default     = "us-east-2"
}

# AWS_SECRET_KEY  et AWS_ACCESS_KEY Définis doit être définie dans une variable d'environnement de l'hôte 

variable "TF_STATE_BUCKET_NAME" {
  type        = string
  description = "Nom du bucket S3 pour le stockage de l'état Terraform"
}

variable "db_username" {
  type        = string
  description = "Nom d'utilisateur pour la base de données RDS"
}

variable "db_password" {
  type        = string
  description = "Mot de passe pour la base de données RDS"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Liste des IDs des Security Groups à associer aux instances EC2"
}

variable "ami" {
  type        = string
  description = "ID de l'AMI à utiliser pour les instances EC2"
}

variable "instance_type" {
  type        = string
  description = "Type d'instance EC2 à créer"
}

variable "subnet_id" {
  type        = string
  description = "ID du subnet dans lequel les instances EC2 seront créées"
}

variable "vpc_id" {
  type        = string
  description = "ID du VPC dans lequel créer les ressources"
}
