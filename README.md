# docker-workspace

Espace de travail VM + Docker multi environnement

## Virtual machine :

18.04 server
open ssh

https://graspingtech.com/ubuntu-server-18.04-static-ip/

1 - commenter /etc/netplan/50-cloud-init.yaml
2 - creer /etc/netplan/01-netcfg.yaml

```bash
pip install foobar


# This file is generated from information provided by the datasource.  Changes
# to it will not persist across an instance reboot.  To disable cloud-init's
# network configuration capabilities, write a file
# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
# network: {config: disabled}
network:
    ethernets:
        enp0s3:
            dhcp4: true
        enp0s8:
            dhcp4: false
            addresses: [192.168.56.103/24]
    version: 2

```

3 - sudo netplan apply

## Windows

1 - installer ubuntu bash 18.04
2 - apt upgrade

3 - Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

https://linuxize.com/post/using-the-ssh-config-file/


ssh medeqz@192.168.56.103

sudo systemctl daemon-reload