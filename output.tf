#OUTPUT IN INSTANCES
###############################
####### MOD INSTANCE   ########
###############################
###########################################
#######     OUTPUT ITEMS   ################
###########################################
output "droplet_id" {
  value = digitalocean_droplet.web.id
}
output "private_ip"{
  value = digitalocean_droplet.web.ipv4_address
}
output "uniform_resource_name"{
  value = digitalocean_droplet.web.urn
}