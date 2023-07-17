terraform {
  required_version = ">= 1.3.0"

  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = "= 0.11.21"
    }

    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.14"
    }

    local = ">= 2.2.3"
    null  = ">= 3.1.1"
  }
}
