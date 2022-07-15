terraform {
 backend "gcs" {
   bucket  = "tfstate-my-terraform"
   //bucket  = "terraform-bucket-tfstate"
   //prefix  = "terraform-test"
   prefix = "tfstate"
   credentials = "D:/terraform-gcp/gcp-tf-repo/permission.json"
 }
}
