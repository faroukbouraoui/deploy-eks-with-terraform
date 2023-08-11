resource "aws_instance" "terraform" {
  # Creates four identical aws ec2 instances
  #count = 4     
  
  # All four instances will have the same ami and instance_type
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.small"
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "terraform"
  }
}

#Resource to create SSH Key or Private Key
resource "tls_private_key" "demo_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

#Resource to Create Key Pair & Download Locally on Linux
resource "aws_key_pair" "demo_key_pair" {
  key_name   = var.key_pair_name
  public_key = tls_private_key.demo_key.public_key_openssh
  
  provisioner "local-exec"{
    command = "echo '${tls_private_key.demo_key.private_key_pem}' > ./${var.key_pair_name}.pem"
  }
}