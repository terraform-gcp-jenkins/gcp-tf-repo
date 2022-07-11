terraform {
 backend "gcs" {
   bucket  = "power-123"
   //bucket  = "terraform-bucket-tfstate"
   //prefix  = "terraform-test"
   prefix = "key/terraform.tfstate"
   credentials = "D:/practice/permission.json"
 }
}
