lang de_DE.UTF-8
keyboard de
timezone UTC
zerombr
clearpart --all --initlabel
autopart --type=plain --fstype=xfs --nohome
reboot
text
network --bootproto=dhcp
user --name=core --groups=wheel --password=edge
services --enabled=ostree-remount
ostreesetup --nogpg --url=http://192.168.140.203:8080/repo/ --osname=rhel --remote=edge --ref=rhel/8/x86_64/edge
