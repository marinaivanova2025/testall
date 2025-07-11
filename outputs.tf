output "instance_names" {
  value = {
    "us-east-1" = module.us_east_1_instance.instance_name
    "us-west-2" = module.us_west_2_instance.instance_name
  }
}
