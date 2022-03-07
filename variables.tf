Variables
variable "infrastructure_version" {
  default = "1"
}
variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}
variable "region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
  description = "The CIDR Block for the SiteSeer VPC"
  default     = "10.0.0.0/16"
}

variable "rt_wide_route" {
  description = "Route in the SiteSeer Route Table"
  default     = "0.0.0.0/0"
}
variable "subnet_count" {
  description = "no of subnets"
default = 2
}
variable "availability_zones" {
description = "availability zone to create subnet"
default = [
"us-east-1a",
"us-east-1b"]
}
variable "flask_app_port" {
description = "Port exposed by the flask application"
default = 5000
}
variable "flask_app_image" {
description = "Dockerhub image for flask-app"
default = "docker.io/sk9212k/terraform-flask-docker-example:latest"
}
variable "flask_app" {
description = "FLASK APP variable"
default = "app"
}
variable "flask_env" {
description = "FLASK ENV variable"
default = "dev"
}
variable "flask_app_home" {
description = "APP HOME variable"
default = "/usr/src/app/"
}
