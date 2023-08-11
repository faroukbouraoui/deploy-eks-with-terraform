# Creating a Variable for region

variable "AWS_REGION" {
	
}

variable "AWS_SECRET_KEY" {

}

variable "AWS_ACCESS_KEY" {
 
}

variable "AWS_SESSION_TOKEN" {
    
}


variable "key_pair_name" {
  type = string
  default  = "demokeypair"
}
variable "public_key" {
  type = string
  default = "value"
  
}

