TF_STATE_BUCKET_NAME = "s3-bucket-mysql-terraform"
#
#
db_username        = "admin"
db_password        = "password123"

security_group_ids = ["sg-0aa5e26f3ec3d77d0"]  

ami                = "ami-07c1207a9d40bc3bd"
instance_type      = "t2.micro"

subnet_id          = "subnet-0ddabedb7775e0bc3" 
vpc_id             = "vpc-01e896350cd1d975f"   