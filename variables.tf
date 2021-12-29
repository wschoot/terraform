variable "libvirt_disk_path" {
  description = "path for libvirt pool"
  default     = "/opt/kvm/pool1"
}

variable "ubuntu_21_img_url" {
  description = "ubuntu 21.10 image"
  default     = "http://cloud-images.ubuntu.com/releases/21.10/release/ubuntu-21.10-server-cloudimg-amd64.img"
}

variable "local_debian_10_img_url" {
  description = "local debian (12GB) 10 image"
  default     = "./debian-10-genericcloud-amd64.qcow2"
}

variable "local_ubuntu_20_img_url" {
  description = "local ubuntu (12GB) 20.04 image"
  default     = "./ubuntu-20.04-server-cloudimg-amd64.img"
}

variable "local_ubuntu_18_img_url" {
  description = "local ubuntu (12GB) 18.04 image"
  default     = "./ubuntu-18.04-server-cloudimg-amd64.img"
}

variable "ubuntu_18_img_url" {
  description = "ubuntu 18.04 image"
  default     = "http://cloud-images.ubuntu.com/releases/bionic/release-20191008/ubuntu-18.04-server-cloudimg-amd64.img"
}

variable "vm_hostname" {
  description = "vm hostname"
  default     = "terraform-kvm-ansible"
}

variable "ssh_username" {
  description = "the ssh user to use"
  default     = "ubuntu"
}

variable "ssh_private_key" {
  description = "the private key to use"
  default     = "~/.ssh/id_rsa"
}

