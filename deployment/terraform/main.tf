# Create a VPC
resource "aws_vpc" "Matrimony-vpc" {
  cidr_block = var.vpc-cidr
}

# Create a Subnet 1
resource "aws_subnet" "Matrimony-subnet" {
  vpc_id                  = aws_vpc.Matrimony-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-1a"
  map_public_ip_on_launch = true

}

# Create a Internet_gateway for VPC
resource "aws_internet_gateway" "Matrimony_igw" {
  vpc_id = aws_vpc.Matrimony-vpc.id

  tags = {
    Name = "main_igw"
  }

}

# AWS_ROUTE_TABLE FOR INTERNER ACCESS
resource "aws_route_table" "Matimony_route_table" {
  vpc_id = aws_vpc.Matrimony-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Matrimony_igw.id
  }
}

# AWS_ROUTE_TABLE ASSOCIATION WITH SUBNET 
resource "aws_route_table_association" "association-1" {
  subnet_id      = aws_subnet.Matrimony-subnet.id
  route_table_id = aws_route_table.Matimony_route_table.id
}

# CREATE SECURITY_GROUP TO ALLOW INBOUND AND OUTBOUND TRAFFIC
resource "aws_security_group" "Matrimony_sg" {
  name        = "allow_tlsWeb-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.Matrimony-vpc.id

  tags = {
    Name = "Jenkins-SG1"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4-1" {
  security_group_id = aws_security_group.Matrimony_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4-2" {
  security_group_id = aws_security_group.Matrimony_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4-3" {
  security_group_id = aws_security_group.Matrimony_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4-4" {
  security_group_id = aws_security_group.Matrimony_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 8000
  ip_protocol       = "tcp"
  to_port           = 8000
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.Matrimony_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}


# CREATE AWS_EC2_INSTANCE 1 AND ATTACHED USERDATA1 TO EC2
resource "aws_instance" "Matrimony_instance" {
  ami                    = "ami-03fd334507439f4d1"
  instance_type          = "t2.medium"
  vpc_security_group_ids = [aws_security_group.Matrimony_sg.id]
  subnet_id              = aws_subnet.Matrimony-subnet.id
  #key_name = aws_key_pair.generated_key.key_name
  key_name = "batch-9"
  user_data              = base64encode(file("userdata.sh"))
  tags = {
    Name = "Matrimony-Meet-Application"
  }

}
