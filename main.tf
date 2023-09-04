resource "aws_vpc" "TerrVPC" {
    cidr_block = "10.10.0.0/16"
    tags = {
      Name = "TerraformVPC"
    }
  
}
resource "aws_subnet" "pub-1a" {
    vpc_id = aws_vpc.TerrVPC.id
    cidr_block = var.cidrpub1a
    availability_zone = var.region1
    map_public_ip_on_launch = true
    tags = {
        Name = "Public-1a"
    }
  
}
resource "aws_subnet" "priv-1a" {
    vpc_id = aws_vpc.TerrVPC.id
    cidr_block = var.cidrpriv1a
    availability_zone = var.region1
    tags = {
        Name = "Private-1a"
    }
  
}