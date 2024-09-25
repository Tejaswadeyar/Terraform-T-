resource "aws_instance" "frontend" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0107f6cbfc7566933"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = Z0617737D3YZS676V6I1
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "Backend" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0107f6cbfc7566933"]

  tags = {
    Name = "Backend"
  }
}

resource "aws_route53_record" "Backend" {
  zone_id = Z0617737D3YZS676V6I1
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.Backend.private_ip]
}

resource "aws_instance" "mySql" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0107f6cbfc7566933"]

  tags = {
    Name = "mySql"
  }
}

resource "aws_route53_record" "Backend" {
  zone_id = Z0617737D3YZS676V6I1
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mySql.private_ip]
}