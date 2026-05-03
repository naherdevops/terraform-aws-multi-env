# The value can be change in runtime /value are available throughout the folder
variable "ec2_instance_name" {
  description = "This variable holds EC2 Instance name"
  default =  "terra-automate-server"
  type = string

}


variable "ec2_volume_size" {
  description = "This variable holds EC2 Instance volume size"
  default =  10
  type = number
  
}


#variable "ec2_instance_state" {
 # description = "This variable holds EC2 Instance state"
 # default =  "running"
 # type = string
  
#}

variable "ec2_ami_id" {
  description = "This variable holds EC2 Instance AMI ID"
  default =  "ami-0d13e2317a7e75c95"
  type = string
  
}

variable "instance_count" {
  description = "This variable holds EC2 Instance count"
  type = number
}

variable "ec2_instance_type" {
  description = "This variable holds EC2 Instance type"
  default =  "t3.micro"
  type = string
  
}



variable "env" {
  description = "This variable holds the environment type (dev or prod)"
  type = string
  
}
