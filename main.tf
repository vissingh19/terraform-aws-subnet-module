resource "aws_subnet" "private" {
  count                   = "${length(var.subnet_cidr_blocks)}"
  vpc_id                  = var.vpc_id
  cidr_block              = "${var.subnet_cidr_blocks[count.index]}"
  #availability_zone       = "${data.aws_availability_zones.available.names[count.index]}"
  map_public_ip_on_launch = false
  tags  = {
    Name        = "${var.env}"
    Environment = "${terraform.workspace}"
  }
}