resource "aws_instance" "frontend" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0107f6cbfc7566933"]

  tags = {
    Name = "frontend"
  }
}


resource "aws_instance" "Backend" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0107f6cbfc7566933"]

  tags = {
    Name = "Backend"
  }
}


resource "aws_instance" "mySql" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0107f6cbfc7566933"]

  tags = {
    Name = "mySql"
  }
}