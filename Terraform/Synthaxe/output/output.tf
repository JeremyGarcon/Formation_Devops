# Output pour l'ID de l'instance EC2
output "instance_id" {
  value = aws_instance.example.id
}

# Output pour l'adresse IP publique de l'instance EC2
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

# Output pour le nom du bucket S3
output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}

# Output pour l'ARN du bucket S3
output "bucket_arn" {
  value = aws_s3_bucket.example_bucket.arn
}
