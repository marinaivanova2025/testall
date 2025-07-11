variable "instance_type" {
  description = "Type of the AWS instance"
  type        = string
  default     = "t2.micro"
}

variable "region_ami_map" {
  description = "A map of AWS regions to their respective AMI IDs."
  type        = map(string)
  default = {
    "us-west-2" = "ami-001185d79e0fca881"
    "us-east-1" = "ami-0005f6c07f15ef5eb"
  }
}

variable "regions" {
  description = "AWS region to deploy the instance in"
  type        = map(string)
  default = {
    "us-west-2" = "ami-0e34e7b9ca0ace12d"
    "us-east-1" = "ami-0c55b159cbfafe1f0"
  }
}

variable "instance_name_prefix" {
  description = "Prefix for the instance names"
  type        = string
  default     = "web"
}