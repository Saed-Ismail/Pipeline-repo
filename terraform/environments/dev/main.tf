module "vpc" {
  source              = "../../modules/vpc"
  region              = "us-east-1"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}
module "ec2" {
  source           = "../../modules/ec2"
  name             = "dev-ec2"
  ami              = "ami-0c02fb55956c7d316" # Amazon Linux 2 in us-east-1
  instance_type    = "t2.micro"
  subnet_id        = module.vpc.public_subnet_ids[0]
  vpc_id           = module.vpc.vpc_id
  key_name         = "dev-key"
  public_key_path  = "~/.ssh/id_rsa.pub"
}

