
data "aws_caller_identity" "current" {}

data "aws_vpc" "vpc"{
 tags = {
    (var.vpc_tag_key) = var.vpc_tag_value
  }
}

data "aws_subnet_ids" "example" {
  vpc_id = data.aws_vpc.vpc.id
}

data "aws_subnet" "example" {
  for_each = data.aws_subnet_ids.example.ids
  id       = each.value
}

// resource "aws_instance" "app_server" {
//   ami           = "ami-id"
//   instance_type = "t2.micro"
//   subnet_id     = element([for s in data.aws_subnet_ids.example.ids : s], 0)
//   #availability_zone = element([for s in data.aws_subnet.example : s.availability_zone], 1)
//   vpc_security_group_ids = ["sg-id"]

//   tags = {
//     Name = "Demo server"
//   }
// }

