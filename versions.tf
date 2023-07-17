terraform {
  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = ">= 0.11.21"
    }
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.14"
    }
  }
}

