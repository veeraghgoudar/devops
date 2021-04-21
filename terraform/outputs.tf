output "subnet_ids" {
    value = element([for s in data.aws_subnet_ids.example.ids : s], 0)
}

output "aws_subnet_cidr_ranges" {
  value = [for s in data.aws_subnet.example : s.cidr_block]
}

output "aws_subnet_az_info" {
  value = [for s in data.aws_subnet.example : s.availability_zone]
}

output "single_az"{
  
  value = element([for s in data.aws_subnet.example : s.availability_zone], 1)

}

