# terraform

This is based on https://dev.to/ruanbekker/terraform-with-kvm-2d9e, modified to use newer [ubuntu 21.10](http://cloud-images.ubuntu.com/releases/21.10/release/) and removed the bastion hostconfiguration

```bash
terraform init
terraform apply -auto-approve
```

# Whatsmyip?!
```bash
$ terraform output ip
"192.168.122.39"

$ terraform output -json
{
  "ip": {
    "sensitive": false,
    "type": "string",
    "value": "192.168.122.39"
  },
  "url": {
    "sensitive": false,
    "type": "string",
    "value": "http://192.168.122.39"
  }
}
```
## Troubleshooting
### Permission problems

On Ubuntu distros SELinux is enforced by qemu even if it is disabled globally, this might cause unexpected `Could not open '/var/lib/libvirt/images/<FILE_NAME>': Permission denied` errors. Double check that `security_driver = "none"` is uncommented in `/etc/libvirt/qemu.conf` and issue `sudo systemctl restart libvirt-bin` to restart the daemon.
