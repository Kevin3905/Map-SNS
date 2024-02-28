#These are   for  public

resource "aws_subnet" "public-ap-northeast-1a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "ap-northeast-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-ap-northeast-1c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.10.2.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "ap-northeast-1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-ap-northeast-1d" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.10.3.0/24"
  availability_zone       = "ap-northeast-1d"
  map_public_ip_on_launch = true

  tags = {
    Name    = "ap-northeast-1d"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#these are for private
resource "aws_subnet" "private-ap-northeast-1a" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.10.11.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name    = "private-ap-northeast-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-ap-northeast-1c" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.10.12.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name    = "private-ap-northeast-1c"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "private-ap-northeast-1d" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.10.13.0/24"
  availability_zone = "ap-northeast-1d"

  tags = {
    Name    = "private-ap-northeast-1d"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}