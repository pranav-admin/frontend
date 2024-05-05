provider "aws" {
  region     = "us-west-2"
}
resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_instance" "web" {
  ami           = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
  tags = {
    name = "my-test-vm"
  }


}
