module "tgw" {
  source  = "terraform-aws-modules/transit-gateway/aws"
  version = "~> 1.0"

  name        = "my-tgw"
  description = "My TGW shared with several other AWS accounts"

  enable_auto_accept_shared_attachments  = true
  enable_default_route_table_propagation = true
  enable_default_route_table_association = true


  vpc_attachments = {
    vpc = {
      vpc_id      = aws_vpc.main.id
      subnet_ids  = ["subnet-05fca1d26b9692ce8"]
      dns_support = true
      #      ipv6_support = true

      #     tgw_routes = [
      #        {
      #          destination_cidr_block = "30.0.0.0/16"
      #        },
      #        {
      #          blackhole = true
      #          destination_cidr_block = "40.0.0.0/20"
      #        }
      #      ]
    }
  }

  ram_allow_external_principals = true
  ram_principals                = ["014747757220"]

  tags = {
    Purpose = "tgw-complete-example"
  }
}