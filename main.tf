
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

module "us_east_1_instance" {
  source        = "./modules/ec2"
  region        = "us-east-1"
  ami           = var.regions["us-east-1"]
  instance_type = var.instance_type
  instance_name = "${var.instance_name_prefix}-us-east-1"
  providers = {
    aws = aws.us-east-1
  }
}

module "us_west_2_instance" {
  source        = "./modules/ec2"
  region        = "us-west-2"
  ami           = var.regions["us-west-2"]
  instance_type = var.instance_type
  instance_name = "${var.instance_name_prefix}-us-west-2"
  providers = {
    aws = aws.us-west-2
  }
}
