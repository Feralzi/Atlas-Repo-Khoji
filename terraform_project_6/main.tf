module "sg" {
  source         = "./modules/sg"
  from_ingress1  = 80
  to_ingress1    = 80
  from_ingress2  = 443
  to_ingress2    = 443
  sg_name        = "http/s"
  sg_description = "Allow http/s traffic"
}

module "launch_temp" {
  source     = "./modules/launch_temp"
  keyname    = "VM1-key"
  sgid       = module.sg.aws_sg
  ami        = "ami-0fae88c1e6794aa17"
  itype      = "t2.micro"
  depends_on = [module.sg]
}

module "asg" {
  source     = "./modules/asg"
  lt_id      = module.launch_temp.lt_output_id
  lt_version = module.launch_temp.lt_output_version
  max        = 1
  min        = 1
  desired    = 1
  asgname    = "tf_asg"
  depends_on = [module.launch_temp]
}