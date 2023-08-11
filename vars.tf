# Creating a Variable for region


variable "AWS_REGION" {
	default = "us-east-1"
}

variable "AWS_SECRET_KEY" {
    default = "" 
}

variable "AWS_ACCESS_KEY" {
    default = "" 
}

variable "AWS_SESSION_TOKEN" {
    default = "" 
}

# Creating a Variable for instance_type
variable "instance_type" {    
  type = "t2.medium"
}