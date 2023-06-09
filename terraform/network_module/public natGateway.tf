# create elastic ip first then attach nat 
resource "aws_eip" "lb1" {
  vpc      = true

   tags = {
    Name = "el-nat"
  }
}


resource "aws_nat_gateway" "NAT_GW" {
  allocation_id = aws_eip.lb1.id
  subnet_id     = aws_subnet.public_sub1.id

  tags = {
    Name = "${var.COMPANY_NAME}_nat_GW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}


