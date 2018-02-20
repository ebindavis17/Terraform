#Provider file

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
 } 
  
#creating EC2 instance

resource "aws_instance" "ec2" {
  ami           = "${var.ami_1}"
  instance_type = "t2.micro"
  key_name = "new"
    tags = {
        Name = "Instance-1
}
connection {
type = "ssh"
user = "ubuntu"
private_key = "${file("/path/to/keyfile")}"
}
}


