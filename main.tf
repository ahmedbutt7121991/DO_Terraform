##################################
####  DIGITAL OCEAN TERRAFOR  ####
##################################
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.8.0"
    }
  }
}

provider "digitalocean" {

    token = var.do_token

}

# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "web-terraform"
  region = "nyc2"
  size   = "s-1vcpu-1gb"
}