# vpc variables
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "VPC CIDR block"
  type          = string
}

variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "Public subnet AZ1 CIDR block"
  type          = string
}

variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "Public subnet AZ2 CIDR block"
  type          = string
}

variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "Private app subnet AZ1 CIDR block"
  type          = string
}

variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "Private app subnet AZ2 CIDR block"
  type          = string
}

variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "Private data subnet AZ1 CIDR block"
  type          = string
}

variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "Private data subnet AZ2 CIDR block"
  type          = string
}

# ssh security group's variable

variable "ssh_location" {
  default       = "104.191.145.233/32"
  description   = "The IP address that can SSH into the EC2 instances"
  type          = string
}

# rds variables

variable "database_snapshot_identifier" {
  default       = "arn:aws:rds:us-east-1:134228303997:snapshot:dynamic-web-db-snapshot"
  description   = "The database snapshot ARN"
  type          = string
}

variable "database_instance_class" {
  default       = "db.t2.micro"
  description   = "The database instance type"
  type          = string
}

variable "database_instance_identifier" {
  default       = "dynamic-web-db"
  description   = "The database instance identifier"
  type          = string
}

variable "multi_az_deployment" {
  default       = false
  description   = "Create a stand-by database instance"
  type          = bool
}

# application load balancer variables

variable "ssl_certificate_arn" {
  default       = "arn:aws:acm:us-east-1:134228303997:certificate/fbef0c3f-f818-4b67-a3b6-7f10b4043ad1"
  description   = "SSL Certificate ARN"
  type          = string
}

# sns topic variable

variable "operator_email" {
  default       = "campbell.r.jordan@gmail.com"
  description   = "A valid email address"
  type          = string
}

# asg variables

variable "launch_template_name" {
  default       = "Dynamic-Web-Launch-Template"
  description   = "Name of the launch template"
  type          = string
}

variable "ec2_image_id" {
  default       = "ami-0a77eb4c71fa18122"
  description   = "ID of the AMI"
  type          = string
}

variable "ec2_instance_type" {
  default       = "t2.micro"
  description   = "Type of the EC2"
  type          = string
}

variable "ec2_keypair_name" {
  default       = "my_key"
  description   = "Name of the EC2 pair"
  type          = string
}

# route 53 variables

variable "domain_name" {
  default       = "jrcworks.com"
  description   = "The name of the domain"
  type          = string
}

variable "record_name" {
  default       = "www"
  description   = "The name of the subdomain"
  type          = string
}