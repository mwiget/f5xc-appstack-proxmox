module "proxmox" {
  source                = "./appstack/proxmox"
  f5xc_cluster_name     = format("%s-prox1", var.project_prefix)
  f5xc_tenant           = var.f5xc_tenant
  f5xc_api_url          = var.f5xc_api_url
  f5xc_namespace        = var.f5xc_namespace
  f5xc_api_token        = var.f5xc_api_token
  f5xc_api_ca_cert      = var.f5xc_api_ca_cert
  owner_tag             = var.owner
  pm_api_url            = var.pm_api_url
  pm_api_token_id       = var.pm_api_token_id
  pm_api_token_secret   = var.pm_api_token_secret
  pve_host              = var.pve_host
  pve_user              = var.pve_user
  pve_private_key       = file("/home/mwiget/.ssh/id_ed25519")
  #  pm_pool               = "f5xc"
  pm_clone              = "ver-template"
  admin_password        = var.admin_password
  f5xc_cluster_labels   = { "site-mesh" : format("%s", var.project_prefix) }
  master_node_cpus      = 4
  worker_node_cpus      = 4
  master_node_memory    = 16384
  worker_node_memory    = 16384
  pm_network            = "vmbr0"
  default_gateway       = "192.168.42.1"
  is_sensitive          = false
  pm_storage            = "mp400"
  pm_node               = "ryzen3"
  master_nodes_count    = 3
  worker_nodes_count    = 2
  ssh_public_key        = file(var.ssh_public_key_file)
}

output "proxmox" {
  value = module.proxmox
  sensitive = true
}
