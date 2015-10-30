the process is similar to setting up a sandbox, with a couple of differences.  This document assumes that you have openssh server installed.

1. add iptables: `sudo apt-get install iptables`
1. add the following to /etc/rc.local:
	1. `/sbin/iptables -P INPUT ACCEPT`
	1. `mkdir -p -m0755 /var/run/sshd`
	1. `/usr/bin/sshd`

1. now, to get ssh running, this assumes that an ssh key has already been created on the chromebook.  If not, start by doing that.
1. add the id_rsa.pub to the authorized keys: `cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys`
1. change the perms on authkeys: `chmod og-wx ~/.ssh/authorized_keys
1. follow the directions in the sandbox file for unlocking root
1. copy the ssh keys from the regular user the chroot was created under to the root home directory

that should do it.  you should now be able to run ansible scripts against your chroot with ansible.
