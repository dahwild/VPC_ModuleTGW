output "instance_ip_public" {
  value = aws_instance.example.public_ip
}

output "instance_ip_private" {
    value = aws_instance.private.private_ip
}

output "transit_gateway_id" {
    value = module.tgw.this_ec2_transit_gateway_id
}

