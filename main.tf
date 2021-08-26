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
resource "digitalocean_droplet" "web1" {
  image       = "ubuntu-18-04-x64"
  name        = "web1-terraform"
  region      = "nyc3"
  size        = "s-1vcpu-1gb"

  ##user_data   = "#cloud-config\nusers: root\nssh-authorized-keys: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCmbPjJBDDisbgRK5IPvOFxDlHTmXFv/i5PlOzwsQXAr2N81nbMq4ZLu6/4nXYRO48RGTRa50WCzYdQFmqtOMfL3gIPc77R50hp3mgtz0KOGGedUet5jq3L0Kw6VPTiSh2vee08NqydcuNsiVGTXC1zumg5Z/7eLZ3v/DcKsng1CIAkX3e7IRdTOWXaZmKTcQLFKbzimGPWZupaKuILOMYJlJp2NXyiHEcLYN3w3TZXZNp/ZSCns8J/ds0293WSzPlnOW/QgiEHVP4bqN/eoT5vIDvyodjHrW6UAuznFx+Z3oKTFTFecY3mOt8/joSnKhxBjduhoyMo2qXXnUUmDz5VtwD6EJ3wL812H6vWnAj0+nscBlT9QMCzzMnXARrSVpjwS1ZkasFFkiXp0ereTh8fwBZlJhbinZy+4gtfT6wuqjElkGGXrcCx/mFYjp7JR6pSopMkoj5iXZepMHA1JAfhYhEHC07Vk0ifieNSuX+JXiZzZTODnAb7y6Akb9Sm3Us= root@Terraform-VM\nruncmd: - sudo apt-get update\n- sudo apt-get install -y apache2\n- sudo systemctl start apache2\n- sudo systemctl enable apache2\n- echo 'The page was created by the user-data' | sudo tee /var/www/html/index.html"
  user_data     = "#cloud-config\npackage_update: true\npackage_upgrade: true\npackages:\n - apache2\nruncmd:\n - echo 'APACHE SERVER 1' > /var/www/html/index.html"
  ##user_data     = "#clou-config\nruncmd:\n - sudo apt-get update\n- sudo apt-get install -y apache2\n- sudo systemctl start apache2\n- sudo systemctl enable apache2\n- echo 'The page was created by the user-data' | sudo tee /var/www/html/index.html"
  
  tags        = ["tfWebServer"]
}

resource "digitalocean_droplet" "web2" {
  image       = "ubuntu-18-04-x64"
  name        = "web2-terraform"
  region      = "nyc3"
  size        = "s-1vcpu-1gb"

  ##user_data   = "#cloud-config\nusers: root\nssh-authorized-keys: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCmbPjJBDDisbgRK5IPvOFxDlHTmXFv/i5PlOzwsQXAr2N81nbMq4ZLu6/4nXYRO48RGTRa50WCzYdQFmqtOMfL3gIPc77R50hp3mgtz0KOGGedUet5jq3L0Kw6VPTiSh2vee08NqydcuNsiVGTXC1zumg5Z/7eLZ3v/DcKsng1CIAkX3e7IRdTOWXaZmKTcQLFKbzimGPWZupaKuILOMYJlJp2NXyiHEcLYN3w3TZXZNp/ZSCns8J/ds0293WSzPlnOW/QgiEHVP4bqN/eoT5vIDvyodjHrW6UAuznFx+Z3oKTFTFecY3mOt8/joSnKhxBjduhoyMo2qXXnUUmDz5VtwD6EJ3wL812H6vWnAj0+nscBlT9QMCzzMnXARrSVpjwS1ZkasFFkiXp0ereTh8fwBZlJhbinZy+4gtfT6wuqjElkGGXrcCx/mFYjp7JR6pSopMkoj5iXZepMHA1JAfhYhEHC07Vk0ifieNSuX+JXiZzZTODnAb7y6Akb9Sm3Us= root@Terraform-VM\nruncmd: - sudo apt-get update\n- sudo apt-get install -y apache2\n- sudo systemctl start apache2\n- sudo systemctl enable apache2\n- echo 'The page was created by the user-data' | sudo tee /var/www/html/index.html"
  user_data     = "#cloud-config\npackage_update: true\npackage_upgrade: true\npackages:\n - nginx\nruncmd:\n - echo 'WEBSERVER 2 NGINX' > /var/www/html/index.html"
  ##user_data     = "#clou-config\nruncmd:\n - sudo apt-get update\n- sudo apt-get install -y apache2\n- sudo systemctl start apache2\n- sudo systemctl enable apache2\n- echo 'The page was created by the user-data' | sudo tee /var/www/html/index.html"
  
  tags        = ["tfWebServer"]
}

resource "digitalocean_droplet" "web3" {
  image       = "ubuntu-18-04-x64"
  name        = "web3-terraform"
  region      = "nyc3"
  size        = "s-1vcpu-1gb"

  ##user_data   = "#cloud-config\nusers: root\nssh-authorized-keys: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCmbPjJBDDisbgRK5IPvOFxDlHTmXFv/i5PlOzwsQXAr2N81nbMq4ZLu6/4nXYRO48RGTRa50WCzYdQFmqtOMfL3gIPc77R50hp3mgtz0KOGGedUet5jq3L0Kw6VPTiSh2vee08NqydcuNsiVGTXC1zumg5Z/7eLZ3v/DcKsng1CIAkX3e7IRdTOWXaZmKTcQLFKbzimGPWZupaKuILOMYJlJp2NXyiHEcLYN3w3TZXZNp/ZSCns8J/ds0293WSzPlnOW/QgiEHVP4bqN/eoT5vIDvyodjHrW6UAuznFx+Z3oKTFTFecY3mOt8/joSnKhxBjduhoyMo2qXXnUUmDz5VtwD6EJ3wL812H6vWnAj0+nscBlT9QMCzzMnXARrSVpjwS1ZkasFFkiXp0ereTh8fwBZlJhbinZy+4gtfT6wuqjElkGGXrcCx/mFYjp7JR6pSopMkoj5iXZepMHA1JAfhYhEHC07Vk0ifieNSuX+JXiZzZTODnAb7y6Akb9Sm3Us= root@Terraform-VM\nruncmd: - sudo apt-get update\n- sudo apt-get install -y apache2\n- sudo systemctl start apache2\n- sudo systemctl enable apache2\n- echo 'The page was created by the user-data' | sudo tee /var/www/html/index.html"
  user_data     = "#cloud-config\npackage_update: true\npackage_upgrade: true\npackages:\n - lighttpd\nruncmd:\n - echo 'WEBSERVER 3 LIGHTTPD' > /var/www/html/index.html"
  ##user_data     = "#clou-config\nruncmd:\n - sudo apt-get update\n- sudo apt-get install -y apache2\n- sudo systemctl start apache2\n- sudo systemctl enable apache2\n- echo 'The page was created by the user-data' | sudo tee /var/www/html/index.html"
  
  tags        = ["tfWebServer"]
}

resource "digitalocean_loadbalancer" "webservers" {
  name   = "webservers-LB"
  region = "nyc3"
  algorithm = "round_robin"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = [digitalocean_droplet.web1.id, digitalocean_droplet.web2.id, digitalocean_droplet.web3.id]
}