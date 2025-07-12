output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

