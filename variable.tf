variable "project_id" {
  type = string
  default = "jenkins-353310"
} 
variable "reg" {
  type = string
  default = "us-east1"
}
variable "zone" {
  type = string
  default = "us-east1-b"
}

# Bucket

/*variable "bucket-name" {
  type        = string
  description = "The name of the Google Storage Bucket to create"
  default = "power-123"
  }*/


variable "storage-class" {
  type        = string
  description = "The storage class of the Google Storage Bucket to create"
  default = "REGIONAL"
}
variable "my-vpc" {
  type = string
  description = "vpc creation"
  default = "cust-vpc"
}
variable "my-subnet" {
  type = string
  description = "subnet creation"
  default = "cust-subnet"
}
variable "my-firewall" {
  type = string
  description = "firewall creation"
  default = "cust-firewall"
}
