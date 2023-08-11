resource "aws_instance" "terraform" {
  # Creates four identical aws ec2 instances
  #count = 4     
  
  # All four instances will have the same ami and instance_type
  ami = "ami-052efd3df9dad4825"
  instance_type = var.instance_type # 
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "terraform"
  }
}