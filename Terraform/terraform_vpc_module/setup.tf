module "vpc" {
  source      = "./modules/network"
  vpcname     = "tf_vpc"
  vpccidr     = "10.0.0.0/16"
  subnet1cidr = "10.0.0.0/24"
  subnet2cidr = "10.0.1.0/24"
  subnet1az   = "us-east-2a"
  subnet2az   = "us-east-2b"
}

module "sg" {
  source     = "./modules/security"
  sgname     = "ssh+http"
  vpcid      = module.vpc.vpc_id
  depends_on = [module.vpc]
}