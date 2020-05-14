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
      subnet_ids  = ["subnet-09747ce97d63bd0df"] # My private subnet id
      dns_support = true

    }
  }

  ram_allow_external_principals = true
  ram_principals                = ["014747757220"]

  tags = {
    Purpose = "tgw-complete-example"
  }
}

##############UNCOMMENT FOR ADMINISTRATOR ACCOUNT######################
#######################################################################
############ATTACH TGW CLIENT WITH ADMINISTRATOR ACCOUNT###############
#######################################################################
#resource "aws_ec2_transit_gateway_vpc_attachment" "example" {
#  subnet_ids         = ["subnet-0d09da00535768fa6"] #Admin Subnet Privada 
#  transit_gateway_id = "tgw-000fc9008dff96791" #Poner transitGW cliente
#  vpc_id             = aws_vpc.main.id
#}