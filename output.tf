#OUTPUT IN INSTANCES
###############################
####### MOD INSTANCE   ########
###############################
###########################################
#######     OUTPUT ITEMS   ################
###########################################
output "droplet_id_1" {
  value = digitalocean_droplet.web1.id
}
output "private_ip_1"{
  value = digitalocean_droplet.web1.ipv4_address
}
output "uniform_resource_name_1"{
  value = digitalocean_droplet.web1.urn
}

output "droplet_id_2" {
  value = digitalocean_droplet.web2.id
}
output "private_ip_2"{
  value = digitalocean_droplet.web2.ipv4_address
}
output "uniform_resource_name_2"{
  value = digitalocean_droplet.web2.urn
}

output "droplet_id_3" {
  value = digitalocean_droplet.web3.id
}
output "private_ip_3"{
  value = digitalocean_droplet.web3.ipv4_address
}
output "uniform_resource_name_3"{
  value = digitalocean_droplet.web3.urn
}

output "LB_id" {
  value = digitalocean_loadbalancer.webservers.id
}
output "LB_ip"{
  value = digitalocean_loadbalancer.webservers.ip
}
output "uniform_resource_name_LB"{
  value = digitalocean_loadbalancer.webservers.urn
}