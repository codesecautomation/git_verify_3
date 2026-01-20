variable "name" {}

module "inner_recursion" {
  source = "../example_module"
  name   = "another-value"
}

resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "MyInstance"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
