variable "nginx_ip" {
  type    = string
  default = "0.0.0.0"
}

variable "hostname" {
  type    = string
  default = "test.185.52.192.60.nip.io"
}

variable "module_depends_on" {
  type = any
}

output "um-pep-engine-up" {
  value      = true
  depends_on = [module.config]
}
