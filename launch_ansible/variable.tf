variable "region" {
    type = "string"
    default = "us-east-1"
}

variable "sg-name" {
    type = "string"
    default = "Ansible-sg"
  
}

variable "kpair-name" {
    type = "string"
    default = "ansible-key"
  
}
# Each object represent a server with multiple attributes(e.g.name, ami...)
variable "instance_config" {
    type = map(object({
      instance_type = string
      name= string
      user_data=string
      ami = string 
    }))
  
}