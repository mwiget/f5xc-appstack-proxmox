output "appstack" {
  value = {
  }
}

output "kubeconfig" {
  value = local_file.kubeconfig.filename
}
