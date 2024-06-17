AWS_ACCESS_KEY     = "AKIA6ODU7D6UAVGUVNUT"
AWS_SECRET_KEY     = "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"
TF_STATE_BUCKET_NAME = "s3-bucket-mysql-terraform"

db_username        = "admin"
db_password        = "password123"

security_group_ids = ["sg-0aa5e26f3ec3d77d0"]  # Remplacez par vos IDs de security groups appropriés

ami                = "ami-07c1207a9d40bc3bd"
instance_type      = "t2.micro"

subnet_id          = "subnet-0ddabedb7775e0bc3"  # Remplacez par votre subnet ID
vpc_id             = "vpc-01e896350cd1d975f"     # Remplacez par votre VPC ID