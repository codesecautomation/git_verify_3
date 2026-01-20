module "recursive_call" {
  source = "./modules/example_module"
  name = var.root_name 
}

variable "root_name" {
  default = "some-value"
}
